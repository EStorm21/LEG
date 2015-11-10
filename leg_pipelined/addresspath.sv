module addresspath( /// ------ From TOP ------
                    input  logic        clk, reset,
                    /// From Controller
                    input  logic [31:0] InstrE,					  
                    input  logic        WriteMultLoE, MultSelectD, 
                    input  logic [3:0]  RegFileRzD,
                    input  logic [1:0]  RegSrcD,
                    input  logic [7:0]  CPSR8_W, 
                    input  logic [6:0]  PCVectorAddress, 

          					/// To Controller 

          					/// From Datapath
                    input logic [31:0]  InstrD,

          					/// To Datapath
                    output logic [31:0]  WA3W, RA1D, RA2D, VectorPCnextF,
                    output logic         ExceptionVectorSelectW,

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
  
  logic [31:0]  WA3M, WA3E, RA1E, RA2E, RdLoE, WA3E_1, WA3D;
  logic [3:0]  RA1_4b_D, RA1_RnD, RA2_4b_D, DestRegD;

  // ====================================================================================
  // ================================ Fetch Stage =======================================
  // ====================================================================================


  // ====================================================================================
  // ================================ Decode Stage ======================================
  // ====================================================================================
  // Selecting appropriate register for Regfile RA1, RA2 and WA3
  mux3 #(4)   ra1mux(InstrD[19:16], 4'b1111, InstrD[3:0], {MultSelectD, RegSrcD[0]}, RA1_RnD);
  mux3 #(4)   ra1RSRmux(RA1_RnD, InstrD[11:8], RA1_RnD, {MultSelectD, (RegFileRzD[2] & RegFileRzD[3])}, RA1_4b_D);
  mux3 #(4)   ra2mux(InstrD[3:0], InstrD[15:12], InstrD[11:8], {MultSelectD, RegSrcD[1]}, RA2_4b_D);
  mux2 #(4)   destregmux(InstrD[15:12], InstrD[19:16], MultSelectD, DestRegD);

  addressdecode address_decoder(RA1_4b_D, RA2_4b_D, DestRegD, RegFileRzD[2:0], CPSR8_W[4:0], RA1D, RA2D, WA3D);

  // ====================================================================================
  // ================================ Execute Stage =====================================
  // ====================================================================================
  // *** use short register addrsses through address path
  
  flopenr #(32)  wa3ereg(clk, reset, ~StallE, WA3D, WA3E); 
  flopenr #(32)  ra1reg(clk, reset, ~StallE, RA1D, RA1E);
  flopenr #(32)  ra2reg(clk, reset, ~StallE, RA2D, RA2E); 
  
  longmult_addressdecode multAddr(InstrE[15:12], CPSR8_W, RdLoE);
  


  // ====================================================================================
  // ================================ Memory Stage ======================================
  // ====================================================================================
  flopenrc #(32)  wa3mreg(clk, reset, ~StallM, FlushM, WA3E, WA3M);

  // ====================================================================================
  // ================================ Writeback Stage ===================================
  // ====================================================================================
  flopenrc #(32)  wa3wreg(clk, reset, ~StallW, FlushW, WA3M, WA3W);
  eqcmp #(32) m0(WA3M, RA1E, Match_1E_M);
  eqcmp #(32) m1(WA3W, RA1E, Match_1E_W);
  eqcmp #(32) m2(WA3M, RA2E, Match_2E_M);
  eqcmp #(32) m3(WA3W, RA2E, Match_2E_W);
  eqcmp #(32) m4a(WA3E, RA1D, Match_1D_E);
  eqcmp #(32) m4b(WA3E, RA2D, Match_2D_E);

  exception_vector_address exception_vector(PCVectorAddress, VectorPCnextF, ExceptionVectorSelectW); // near the fetch stage

endmodule 
