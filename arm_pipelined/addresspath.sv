module addresspath( /// ------ From TOP ------
                    input  logic        clk, reset,
                    /// From Controller
                    input  logic [31:0] InstrE,					  
                    input  logic        WriteMultLoE, MultSelectD, 
                    input  logic [3:0]  RegFileRzD,
                    input  logic [1:0]  RegSrcD,
                    input  logic [11:0] PreviousStatusD, 

          					/// To Controller 

          					/// From Datapath
                    input logic [31:0]  InstrD,

          					/// To Datapath
                    output logic [4:0]  WA3W, RA1D, RA2D,

          					/// From Hazard
                    input  logic        StallF, StallD, FlushD, StallE, StallM, FlushW, StallW, 

          					/// To Hazard
                    output logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, 
                    output logic        Match_1D_E, Match_2D_E
          					);

  logic [4:0]  WA3M, WA3E, RA1E, RA2E, RdLoE, WA3E_1;
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

  /*addressdecode address_decoder(RA1_4b_D, RA2_4b_D, DestRegD, RegFileRzD[2:0], PreviousStatusD,
                                RA1D, RA2D, WA3D);
 */
  assign RA1D = {RegFileRzD[0], RA1_4b_D};
  assign RA2D = {RegFileRzD[1], RA2_4b_D};

  // ====================================================================================
  // ================================ Execute Stage =====================================
  // ====================================================================================
  flopenr #(5)  wa3ereg(clk, reset, ~StallE, {RegFileRzD[2], DestRegD}, WA3E_1); 
  flopenr #(5)  ra1reg(clk, reset, ~StallE, RA1D, RA1E);
  flopenr #(5)  ra2reg(clk, reset, ~StallE, RA2D, RA2E); 

  // Long Multiply RdLo register
  assign RdLoE = {0, InstrE[15:12]};
  assign WA3E = WriteMultLoE ? RdLoE: WA3E_1;

  // ====================================================================================
  // ================================ Memory Stage ======================================
  // ====================================================================================
  flopenr #(5)  wa3mreg(clk, reset, ~StallM, WA3E, WA3M);

  // ====================================================================================
  // ================================ Writeback Stage ===================================
  // ====================================================================================
  flopenrc #(5)  wa3wreg(clk, reset, ~StallW, FlushW, WA3M, WA3W);

  eqcmp #(5) m0(WA3M, RA1E, Match_1E_M);
  eqcmp #(5) m1(WA3W, RA1E, Match_1E_W);
  eqcmp #(5) m2(WA3M, RA2E, Match_2E_M);
  eqcmp #(5) m3(WA3W, RA2E, Match_2E_W);
  eqcmp #(5) m4a(WA3E, RA1D, Match_1D_E);
  eqcmp #(5) m4b(WA3E, RA2D, Match_2D_E);

endmodule 