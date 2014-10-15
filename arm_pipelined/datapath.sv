module datapath(input  logic        clk, reset,
                input  logic [1:0]  RegSrcD, ImmSrcD,
                input  logic        ALUSrcE, BranchTakenE,
                input  logic [3:0]  ALUControlE, 
                input  logic        MemtoRegW, PCSrcW, RegWriteW,
                output logic [31:0] PCF,
                input  logic [31:0] InstrF,
                output logic [31:0] InstrD,
                output logic [31:0] ALUOutM, WriteDataM,
                input  logic [31:0] ReadDataM,
                output logic [3:0]  ALUFlagsE,
                // hazard logic
                output logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_12D_E,
                input  logic [1:0]  ForwardAE, ForwardBE,
                // Added StallE, StallM, FlushW for memory
                input  logic        StallF, StallD, FlushD, StallE, StallM, FlushW,
                // Added by CW team fall 2014 - Handling Data processing Instrs
                output logic        doNotWriteReg,
                input logic         previousCflag,
                // To handle micro-op decoding
                output logic        doNotUpdateFlagD, uOpStallD,
                input  logic        RselectE, RSRselectE);

                          
  logic [31:0] PCPlus4F, PCnext1F, PCnextF;
  logic [31:0] ExtImmD, rd1D, rd2D, PCPlus8D, RotImmD, defaultInstrD, uOpInstrD;
  logic        InstrMuxD;
  logic [3:0]  regFileRzD;
  logic [31:0] rd1E, rd2E, ExtImmE, SrcAE, SrcBE, WriteDataE, ALUResultE, ALUOutputE, shifterAinE, ALUSrcBE, ShiftBE;
  logic [31:0] ReadDataW, ALUOutW, ResultW;
  logic [3:0]  RA1_4b_D, RA1_RnD, RA2_4b_D;
  logic [4:0]  RA1D, RA2D, RA1E, RA2E, WA3E, WA3M, WA3W;
  logic        Match_1D_E, Match_2D_E;
  logic [31:0] ALUSrcA, ALUSrcB;
                
  // Fetch stage
  mux2 #(32) pcnextmux(PCPlus4F, ResultW, PCSrcW, PCnext1F);
  mux2 #(32) branchmux(PCnext1F, ALUResultE, BranchTakenE, PCnextF);
  flopenr #(32) pcreg(clk, reset, ~StallF, PCnextF, PCF);
  adder #(32) pcadd(PCF, 32'h4, PCPlus4F);
  
  // Decode Stage

  assign PCPlus8D = PCPlus4F; // skip register
  flopenrc #(32) instrreg(clk, reset, ~StallD, FlushD, InstrF, defaultInstrD);
  micropsfsm uOpFSM(clk, reset, defaultInstrD, InstrMuxD, doNotUpdateFlagD, uOpStallD, regFileRzD, uOpInstrD);
  mux2 #(32)  instrDmux(defaultInstrD, uOpInstrD, InstrMuxD, InstrD);
  mux2 #(4)   ra1mux(InstrD[19:16], 4'b1111, RegSrcD[0], RA1_RnD);
  mux2 #(4)   ra1RSRmux(RA1_RnD, InstrD[11:8], regFileRzD[2], RA1_4b_D);
  assign RA1D = {regFileRzD[0], RA1_4b_D};
  mux2 #(4)   ra2mux(InstrD[3:0], InstrD[15:12], RegSrcD[1], RA2_4b_D);
  assign RA2D = {regFileRzD[1], RA2_4b_D};

  regfile     rf(clk, RegWriteW, RA1D, RA2D,
                 WA3W, ResultW, PCPlus8D, 
                 rd1D, rd2D); 
  extend      ext(InstrD[23:0], ImmSrcD, ExtImmD, InstrD[25]);

  // ------- RECENTLY ADDED BY IVAN ----------------- Currently EVERYTHING goes through Rotator
  rotator   rotat(ExtImmD, InstrD, RotImmD); 
  // ------------------------------------------------
  
  // Execute Stage
  // ---------- RECENTLY CHANGED BY MAX --------- 
  // Added enable to StallE, StallM, and Added FlushW. (Added for memory)
  flopenr #(32) rd1reg(clk, reset, ~StallE, rd1D, rd1E);
  flopenr #(32) rd2reg(clk, reset, ~StallE, rd2D, rd2E);
  flopenr #(32) immreg(clk, reset, ~StallE, RotImmD, ExtImmE); // Modified by Ivan
  flopenr #(5)  wa3ereg(clk, reset, ~StallE, {regFileRzD[2], InstrD[15:12]}, WA3E);
  flopenr #(5)  ra1reg(clk, reset, ~StallE, RA1D, RA1E);
  flopenr #(5)  ra2reg(clk, reset, ~StallE, RA2D, RA2E);
  mux3 #(32)  byp1mux(rd1E, ResultW, ALUOutM, ForwardAE, SrcAE);
  mux3 #(32)  byp2mux(rd2E, ResultW, ALUOutM, ForwardBE, WriteDataE);
  mux2 #(32)  srcbmux(WriteDataE, ExtImmE, ALUSrcE, ALUSrcBE);
  mux2 #(32)  shifterAin(SrcAE, ExtImmE, RselectE, shifterAinE); 
  mux2 #(32)  shifterOutsrcB(ALUSrcBE, ShiftBE, RselectE, SrcBE);

  shifter     shiftLogic(shifterAinE, ALUSrcBE, ShiftBE, RselectE, RSRselectE, previousCflag);
  alu         alu(SrcAE, SrcBE, ALUControlE, ALUOutputE, ALUFlagsE, previousCflag, doNotWriteReg);
  mux2 #(32)  aluoutputmux(ALUOutputE, ShiftBE, RSRselectE, ALUResultE); 
  
  // Memory Stage
  flopenr #(32) aluresreg(clk, reset, ~StallM, ALUResultE, ALUOutM);
  flopenr #(32) wdreg(clk, reset, ~StallM, WriteDataE, WriteDataM);
  flopenr #(5)  wa3mreg(clk, reset, ~StallM, WA3E, WA3M);
  
  // Writeback Stage
  floprc #(32) aluoutreg(clk, reset, FlushW, ALUOutM, ALUOutW);
  floprc #(32) rdreg(clk, reset, FlushW, ReadDataM, ReadDataW);
  floprc #(5)  wa3wreg(clk, reset, FlushW, WA3M, WA3W);
  mux2 #(32)  resmux(ALUOutW, ReadDataW, MemtoRegW, ResultW);
  
  // hazard comparison
  eqcmp #(5) m0(WA3M, RA1E, Match_1E_M);
  eqcmp #(5) m1(WA3W, RA1E, Match_1E_W);
  eqcmp #(5) m2(WA3M, RA2E, Match_2E_M);
  eqcmp #(5) m3(WA3W, RA2E, Match_2E_W);
  eqcmp #(5) m4a(WA3E, RA1D, Match_1D_E);
  eqcmp #(5) m4b(WA3E, RA2D, Match_2D_E);
  assign Match_12D_E = Match_1D_E | Match_2D_E;
  
endmodule