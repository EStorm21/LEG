module addresspath( /// ------ From TOP ------
                    input  logic        clk, reset,
                    /// From Controller					  
                    input  logic [3:0]  RegFileRzD,
                    input  logic [1:0]  RegSrcD,
                    input  logic [7:0]  CPSR8_W, 

          					/// To Controller 

          					/// From Datapath
                    input logic [31:0]  InstrD,

          					/// To Datapath
                    output logic [31:0]  WA3W, RA1D, RA2D,

          					/// From Hazard
                    input  logic        StallE, StallM, FlushM, FlushW, StallW, 

          					/// To Hazard
                    output logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, 
                    output logic        Match_1D_E, Match_2D_E
          					);

  /*
  * First Created by Ivan Wong for Clay Wolkin 2014-2015
  * Handles all addresses for Reg file
  * Contains address decoder that breaks down 4 bit address from InstrD + current mode into a one hot 32-bit line 
  * for RegFile
  * -- Also needed for exception vector addresses in the Writeback stage.
  */
  
  logic [31:0]  WA3D, WA3M, WA3E, RA1E, RA2E;
  logic [3:0]  RA1_4b_D, RA1_RnD, RA2_4b_D, WA3_4b_D;
  logic user_sys, fiq, irq, svc, abort, undef;
  logic [5:0] ModeOneHotD;


  // ====================================================================================
  // ================================ Fetch Stage =======================================
  // ====================================================================================


  // ====================================================================================
  // ================================ Decode Stage ======================================
  // ====================================================================================
  // Need the current mode to select registers
  assign user_sys= (CPSR8_W[4:0] == 5'b10000 | CPSR8_W[4:0] == 5'b11111);
  assign fiq     = (CPSR8_W[4:0] == 5'b10001);
  assign irq     = (CPSR8_W[4:0] == 5'b10010);
  assign svc     = (CPSR8_W[4:0] == 5'b10011);
  assign abort   = (CPSR8_W[4:0] == 5'b10111);
  assign undef   = (CPSR8_W[4:0] == 5'b11011);
  assign ModeOneHotD    = {user_sys, fiq, irq, svc, abort, undef};

  // Selecting appropriate register for Regfile RA1, RA2 and WA3
  mux2 #(4) ra1mux(InstrD[19:16], 4'b1111, RegSrcD[0], RA1_RnD);
  
  mux2 #(4) ra1RSRmux(RA1_RnD, InstrD[11:8], (RegFileRzD[2] & RegFileRzD[3]), RA1_4b_D);
  
  mux2 #(4) ra2mux(InstrD[3:0], InstrD[15:12], RegSrcD[1], RA2_4b_D);
  assign WA3_4b_D = InstrD[15:12];

  addressdecode address_decoder1(RA1_4b_D, RegFileRzD[0], ModeOneHotD, RA1D);
  addressdecode address_decoder2(RA2_4b_D, RegFileRzD[1], ModeOneHotD, RA2D);
  addressdecode address_decoder3(WA3_4b_D, RegFileRzD[2], ModeOneHotD, WA3D);

  // ====================================================================================
  // ================================ Execute Stage =====================================
  // ====================================================================================

  flopenr #(32) wa3ereg(clk, reset, ~StallE, WA3D, WA3E); 
  flopenr #(32) ra1reg( clk, reset, ~StallE, RA1D, RA1E);
  flopenr #(32) ra2reg( clk, reset, ~StallE, RA2D, RA2E); 

  eqcmp #(32) m4a(WA3E, RA1D, Match_1D_E);
  eqcmp #(32) m4b(WA3E, RA2D, Match_2D_E);
  


  // ====================================================================================
  // ================================ Memory Stage ======================================
  // ====================================================================================
  flopenrc #(32) wa3mreg( clk, reset, ~StallM, FlushM, WA3E,       WA3M);
  flopenrc #(1)  match1em(clk, reset, ~StallM, FlushM, Match_1D_E, Match_1E_M); 
  flopenrc #(1)  match2em(clk, reset, ~StallM, FlushM, Match_2D_E, Match_2E_M); 

  // ====================================================================================
  // ================================ Writeback Stage ===================================
  // ====================================================================================
  flopenrc #(32) wa3wreg(clk, reset, ~StallW, FlushW, WA3M, WA3W);

  eqcmp #(32) m1(WA3W, RA1E, Match_1E_W);
  eqcmp #(32) m3(WA3W, RA2E, Match_2E_W);


endmodule 
