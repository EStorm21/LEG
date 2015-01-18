module addresspath( /// ------ From TOP ------
                    input  logic        clk, reset,
                    /// From Controller
                    input  logic [31:0] InstrE,					  
                    input  logic        WriteMultLoE,
                    input  logic [3:0]  RegFileRzD,
          					/// To Controller 

          					/// From Datapath
                    input logic [4:0]   RA1D, RA2D,
                    input logic [3:0]   DestRegD,
          					/// To Datapath
                    output logic [4:0]  WA3W, 
          					/// From Hazard
                    input  logic        StallF, StallD, FlushD, StallE, StallM, FlushW, StallW, 

          					/// To Hazard
                    output logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, 
                    output logic        Match_1D_E, Match_2D_E
          					);

  logic [4:0]  WA3M, WA3E, RA1E, RA2E, RdLoE, WA3E_1;
  // ====================================================================================
  // ================================ Fetch Stage =======================================
  // ====================================================================================

  // ====================================================================================
  // ================================ Decode Stage ======================================
  // ====================================================================================

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