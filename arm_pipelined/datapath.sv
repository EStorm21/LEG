module datapath(input  logic        clk, reset,
                input  logic [1:0]  RegSrcD, ImmSrcD,
                input  logic        ALUSrcE, BranchTakenE,
                input  logic [3:0]  ALUControlE, 
                input  logic [2:0]  MultControlE,
                input  logic        MemtoRegW, PCSrcW, RegWriteW,
                output logic [31:0] PCF,
                input  logic [31:0] InstrF, InstrE, 
                output logic [31:0] InstrD,
                output logic [31:0] ALUOutM, WriteDataM,
                input  logic [31:0] ReadDataM,
                output logic [3:0]  FlagsE,
                // hazard logic
                output logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_12D_E,
                input  logic [1:0]  ForwardAE, ForwardBE,
                // Added StallE, StallM, FlushW for memory
                input  logic        StallF, StallD, FlushD, StallE, StallM, FlushW, StallW, StalluOp,
                // Handling Data processing Instrs
                input logic  [3:0]  PreviousFlagsE,
                input logic  [2:0]  CVUpdateE, ALUOperationE,
                input logic         InvertBE, ReverseInputsE, ALUCarryE,
                // To handle micro-op decoding
                output logic        doNotUpdateFlagD, uOpStallD, PrevRSRstateD, LDMSTMforwardD,
                input  logic        RselectE, PrevRSRstateE, LDRSTRshiftE, 
                input logic[1:0]    ResultSelectE, // Comes from {MultSelectD, RSRselectD}
                input  logic [6:4]  ShiftOpCode_E,
                input logic         MultSelectD, MultEnable,
                // input logic         WriteMultLoE,
                output logic        MultStallD, MultStallE, 
                output logic [3:0]  RegFileRzD);

                          
  logic [31:0] PCPlus4F, PCnext1F, PCnextF;
  logic [31:0] ExtImmD, Rd1D, Rd2D, PCPlus8D, RotImmD, DefaultInstrD, uOpInstrD;
  logic        InstrMuxD, SignExtendD, noRotateD;
  logic [31:0] Rd1E, Rd2E, ExtImmE, SrcAE, SrcBE, WriteDataE, ALUResultE, ALUOutputE, ShifterAinE, ALUSrcBE, ShiftBE;
  logic [31:0] MultOutputBE, MultOutputAE;
  logic        ShifterCarryOutE;
  logic [31:0] ReadDataW, ALUOutW, ResultW;
  logic [3:0]  RA1_4b_D, RA1_RnD, RA2_4b_D;
  logic [4:0]  RA1D, RA2D, RA1E, RA2E, WA3E, WA3E_1, WA3M, WA3W, RdLoD , RdLoE;
  logic        Match_1D_E, Match_2D_E, WriteMultLoE, WriteMultLoD, WriteMultLoKeptE;
  logic [31:0] ALUSrcA, ALUSrcB, MultOutputE;
  logic [3:0]  ALUFlagsE, MultFlagsE, DestRegD;
                

  // Fetch stage
  mux2 #(32) pcnextmux(PCPlus4F, ResultW, PCSrcW, PCnext1F);
  mux2 #(32) branchmux(PCnext1F, ALUResultE, BranchTakenE, PCnextF);
  flopenr #(32) pcreg(clk, reset, ~StallF, PCnextF, PCF);
  adder #(32) pcadd(PCF, 32'h4, PCPlus4F);
  
  // Decode Stage

  assign PCPlus8D = PCPlus4F; // skip register
  flopenrc #(32) instrreg(clk, reset, ~StallD, FlushD, InstrF, DefaultInstrD);
  micropsfsm uOpFSM(clk, reset, DefaultInstrD, InstrMuxD, doNotUpdateFlagD, uOpStallD, LDMSTMforwardD, 
                            PrevRSRstateD, KeepVD, SignExtendD, noRotateD, RegFileRzD, uOpInstrD, StalluOp, PreviousFlagsE);
  mux2 #(32)  instrDmux(DefaultInstrD, uOpInstrD, InstrMuxD, InstrD);
  mux3 #(4)   ra1mux(InstrD[19:16], 4'b1111, InstrD[3:0], {MultSelectD, RegSrcD[0]}, RA1_RnD);
  mux3 #(4)   ra1RSRmux(RA1_RnD, InstrD[11:8], RA1_RnD, {MultSelectD, RegFileRzD[2]}, RA1_4b_D);
  assign RA1D = {RegFileRzD[0], RA1_4b_D};
  mux3 #(4)   ra2mux(InstrD[3:0], InstrD[15:12], InstrD[11:8], {MultSelectD, RegSrcD[1]}, RA2_4b_D);
  assign RA2D = {RegFileRzD[1], RA2_4b_D};
  mux2 #(4)  destregmux(InstrD[15:12], InstrD[19:16], MultSelectD, DestRegD);
  
  assign MultStallD = (InstrD[27:24] == 4'b0) & InstrD[23] & (InstrD[7:4] == 4'b1001) & ~InstrD[25] & ~WriteMultLoE; //For Long Multiply
  assign MultStallE = (InstrD[27:24] == 4'b0) & InstrE[23] & (InstrE[7:4] == 4'b1001) & ~InstrD[25]; //For Long Multiply

  flopenr #(1)  MultOutputSrc(clk, reset, ~StallE, MultStallD, WriteMultLoE);
  flopenr #(1)  MultOutputSrc1(clk, reset, ~StallE, WriteMultLoE, WriteMultLoKeptE); //write the low register on the second cycle

  regfile     rf(clk, RegWriteW, RA1D, RA2D,
                 WA3W, ResultW, PCPlus8D, 
                 Rd1D, Rd2D); 
  extend      ext(InstrD[23:0], ImmSrcD, ExtImmD, InstrD[25], SignExtendD);

  // ------- RECENTLY ADDED BY IVAN ----------------- Currently EVERYTHING goes through Rotator
  rotator   rotat(ExtImmD, InstrD, RotImmD, noRotateD); 
  // ------------------------------------------------
  
  // Execute Stage
  // ---------- RECENTLY CHANGED BY MAX --------- 
  // Added enable to StallE, StallM, and Added FlushW. (Added for memory)
  flopenr #(32) rd1reg(clk, reset, ~StallE, Rd1D, Rd1E);
  flopenr #(32) rd2reg(clk, reset, ~StallE, Rd2D, Rd2E);
  flopenr #(32) immreg(clk, reset, ~StallE, RotImmD, ExtImmE); // Modified by Ivan
  flopenr #(5)  wa3ereg(clk, reset, ~StallE, {RegFileRzD[2], DestRegD}, WA3E_1);
  flopenr #(5)  ra1reg(clk, reset, ~StallE, RA1D, RA1E);
  flopenr #(5)  ra2reg(clk, reset, ~StallE, RA2D, RA2E);
  // flopenr #(5)  rdLoreg(clk, reset, ~StallE, RdLoD, RdLoE);
  flopenr #(1)  keepV(clk, reset, ~StallE, KeepVD, KeepVE);
  // flopenr #(1)  writeMultHi(clk, reset, ~StallE,WriteMultLoD, WriteMultLoE);
  mux3 #(32)  byp1mux(Rd1E, ResultW, ALUOutM, ForwardAE, SrcAE);
  mux4 #(32)  byp2mux(Rd2E, ResultW, ALUOutM, 32'h4, ForwardBE, WriteDataE);
  mux2 #(32)  srcbmux(WriteDataE, ExtImmE, ALUSrcE, ALUSrcBE);
  mux2 #(32)  shifterAin(SrcAE, ExtImmE, RselectE, ShifterAinE); 
  mux2 #(32)  shifterOutsrcB(ALUSrcBE, ShiftBE, RselectE, SrcBE);
  mux2 #(4)   flagmux(ALUFlagsE, MultFlagsE, ResultSelectE[1], FlagsE);

  assign WA3E = WriteMultLoE ? RdLoE: WA3E_1;
  //Long Multiply RdLo register
  assign RdLoE = {0, InstrE[15:12]};

  shifter     shiftLogic(ShifterAinE, ALUSrcBE, ShiftBE, RselectE, ResultSelectE[0], LDRSTRshiftE, PreviousFlagsE[1:0], ShiftOpCode_E, ShifterCarryOutE);
  flopenr #(1) shftrCarryOut(clk, reset, ~StallE, ShifterCarryOutE, ShifterCarryOut_cycle2E);
  alu         alu(SrcAE, SrcBE, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryE, ALUOutputE, ALUFlagsE, PreviousFlagsE[1:0], ShifterCarryOut_cycle2E, ShifterCarryOutE, PrevRSRstateE, KeepVE); 
  multiplier  mult(clk, reset, MultEnable, StallE, WriteMultLoKeptE, SrcAE, SrcBE, MultControlE, MultOutputE, MultFlagsE, PreviousFlagsE[1:0]);
  mux3 #(32)  aluoutputmux(ALUOutputE, ShiftBE, MultOutputE, ResultSelectE, ALUResultE); 
  
  // Memory Stage
  flopenr #(32) aluresreg(clk, reset, ~StallM, ALUResultE, ALUOutM);
  flopenr #(32) wdreg(clk, reset, ~StallM, WriteDataE, WriteDataM);
  flopenr #(5)  wa3mreg(clk, reset, ~StallM, WA3E, WA3M);
  
  // Writeback Stage
  flopenrc #(32) aluoutreg(clk, reset, ~StallW, FlushW, ALUOutM, ALUOutW);
  flopenrc #(32) rdreg(clk, reset, ~StallW, FlushW, ReadDataM, ReadDataW);
  flopenrc #(5)  wa3wreg(clk, reset, ~StallW, FlushW, WA3M, WA3W);
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