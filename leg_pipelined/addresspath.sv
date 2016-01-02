module addresspath( /// ------ From TOP ------
                    input  logic        clk, reset,
                    /// From Controller
                    input  logic [31:0] InstrE,					  
                    input  logic        WriteMultLoE, MultSelectD, ALUSrcD, 
                    input  logic [3:0]  RegFileRzD,
                    input  logic [1:0]  RegSrcD,
                    input  logic [7:0]  CPSR8_W, 

          					/// To Controller 

          					/// From Datapath
                    input logic [31:0]  InstrD,

          					/// To Datapath
                    output logic [31:0]  WA3W, RA1D, RA2D,

          					/// From Hazard
                    input  logic        StallF, StallD, FlushD, StallE, StallM, FlushM, FlushW, StallW, 

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
  
  logic [3:0]  WA3_4b_M, WA3_4b_E, RA1_4b_E, RA2_4b_E, RdLoE, WA3_4b_W;
  logic [3:0]  RA1_4b_D, RA1_RnD, RA2_4b_D, WA3_4b_D;
  logic user_sys, fiq, irq, svc, abort, undef, system;
  logic [5:0] ModeOneHotD, ModeOneHotE, ModeOneHotM, ModeOneHotW;
  logic RegFileRzE2, RegFileRzM2, RegFileRzW2;


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
  mux3 #(4)   ra1mux(InstrD[19:16], 4'b1111, InstrD[3:0], {MultSelectD, RegSrcD[0]}, RA1_RnD);
  // Why do we need a mux3 to do this?
  mux3 #(4)   ra1RSRmux(RA1_RnD, InstrD[11:8], RA1_RnD, {MultSelectD, (RegFileRzD[2] & RegFileRzD[3])}, RA1_4b_D);
  
  mux3 #(4)   ra2mux(InstrD[3:0], InstrD[15:12], InstrD[11:8], {MultSelectD, RegSrcD[1]}, RA2_4b_D);
  mux2 #(4)   destregmux(InstrD[15:12], InstrD[19:16], MultSelectD, WA3_4b_D);

  // If InstrD[3:0] is actually an immediate, we don't want to match. 
  assign regR2_D = (~MultSelectD & ~RegSrcD[1]) & ~ALUSrcD;

  addressdecode address_decoder(RA1_4b_D, RegFileRzD[0], ModeOneHotD, RA1D);
  addressdecode address_decoder(RA2_4b_D, RegFileRzD[1], ModeOneHotD, RA2D);

  // ====================================================================================
  // ================================ Execute Stage =====================================
  // ====================================================================================
  // *** use short register addrsses through address path
  
  // pass on whether we are using InstrD[3:0] as our Rd2. If this is an immediate then we shouldn't match. 
  flopenr #(1)  notimmreg(clk, reset, ~StallE, regR2_D,       regR2_E);
  flopenr #(6)  moderegE( clk, reset, ~StallE, ModeOneHotD,   ModeOneHotE);
  flopenr #(1)  rzregE(   clk, reset, ~StallE, RegFileRzD[2], RegFileRzE2);

  flopenr #(4)  wa3ereg(clk, reset, ~StallE, WA3_4b_D, WA3_4b_E); 
  flopenr #(4)  ra1reg( clk, reset, ~StallE, RA1_4b_D, RA1_4b_E);
  flopenr #(4)  ra2reg( clk, reset, ~StallE, RA2_4b_D, RA2_4b_E); 
  
  longmult_addressdecode multAddr(InstrE[15:12], CPSR8_W, RdLoE);
  


  // ====================================================================================
  // ================================ Memory Stage ======================================
  // ====================================================================================
  flopenrc #(1)  rzregM(  clk, reset, ~StallM, FlushM, RegFileRzE2, RegFileRzM2);
  flopenrc #(6)  moderegM(clk, reset, ~StallM, FlushM, ModeOneHotE, ModeOneHotM);
  flopenrc #(4)  wa3mreg( clk, reset, ~StallM, FlushM, WA3_4b_E,    WA3_4b_M);

  // ====================================================================================
  // ================================ Writeback Stage ===================================
  // ====================================================================================
  flopenrc #(1)  rzregW(  clk, reset, ~StallW, FlushW, RegFileRzM2, RegFileRzW2);
  flopenrc #(6)  moderegW(clk, reset, ~StallW, FlushW, ModeOneHotM, ModeOneHotW);
  flopenrc #(4)  wa3wreg( clk, reset, ~StallW, FlushW, WA3_4b_M,   WA3_4b_W);
  addressdecode address_decoder(WA3_4b_W, RegFileRzW2, ModeOneHotW, WA3W);

  eqcmp #(4) m0(WA3_4b_M, RA1_4b_E, Match_1E_M);
  eqcmp #(4) m1(WA3_4b_W, RA1_4b_E, Match_1E_W);
  eqcmp #(4) m2(WA3_4b_M, RA2_4b_E, Match_2E_M_0);
  eqcmp #(4) m3(WA3_4b_W, RA2_4b_E, Match_2E_W_0);
  eqcmp #(4) m4a(WA3_4b_E, RA1_4b_D, Match_1D_E);
  eqcmp #(4) m4b(WA3_4b_E, RA2_4b_D, Match_2D_E_0);

  assign Match_2E_M = Match_2E_M_0;
  assign Match_2E_W = Match_2E_W_0;
  assign Match_2D_E = Match_2D_E_0;

endmodule 
