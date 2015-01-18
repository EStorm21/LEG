module datapath(/// ------ From TOP (Memory) ------
                  input  logic        clk, reset,
                  input  logic [31:0] InstrF,  
                  input  logic [31:0] ReadDataM,

                /// ------ To TOP (Memory) ------
                  output logic [31:0] PCF,

                ///  ------- From Controller ------
                  input  logic [1:0]  RegSrcD, ImmSrcD,
                  input  logic        ALUSrcE, BranchTakenE,
                  input  logic [3:0]  ALUControlE, 
                  input  logic [2:0]  MultControlE,
                  input  logic        MemtoRegW, PCSrcW, RegWriteW,
                  input  logic [31:0] InstrE,
                  // Handling data-processing Instrs (ALU)
                  input  logic [3:0]  PreviousFlagsE,
                  input  logic [2:0]  CVUpdateE, ALUOperationE,
                  input  logic        InvertBE, ReverseInputsE, ALUCarryE,
                  // To handle micro-op decoding
                  input  logic        RselectE, PrevRSRstateE, LDRSTRshiftE, 
                  input  logic [1:0]  ResultSelectE, // 2 bits Comes from {MultSelectE, RSRselectE}
                  input  logic [6:4]  ShiftOpCode_E,
                  input  logic        MultSelectD, MultEnable,
                  // To handle load-store half-words and bytes
                  input  logic        LoadLengthW, HalfwordOffsetW,
                  input  logic [1:0]  ByteOffsetW,
                  input  logic        WriteByteE, WriteHalfwordE, WriteHalfwordW, IncrementE, //HalfwordOffset, 
                  // Added for moving MicroOpFSM to Controller decode
                  input  logic        KeepVE, SignExtendD, noRotateD, InstrMuxD,
                  input  logic [3:0]  RegFileRzD,
                  input  logic [31:0] uOpInstrD,
                  input  logic        WriteMultLoKeptE,
                  input  logic        ShifterCarryOut_cycle2E,

                /// ------ To Controller ------
                  output logic [31:0] InstrD,
                  output logic [31:0] ALUOutM, WriteDataM,
                  output logic [3:0]  ALUFlagsE, MultFlagsE,
                  output logic [1:0]  STR_cycleD,
                  output logic [31:0] ALUResultE, DefaultInstrD,
                  output logic        ShifterCarryOutE,

                /// ------ From Hazard ------
                  input  logic [1:0]  ForwardAE, ForwardBE,
                  input  logic        StallF, StallD, FlushD, StallE, StallM, FlushW, StallW, // Added StallE, StallM, FlushW for memory

                /// ------ To Hazard ------
                  // output logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, 
                  // output logic        Match_1D_E, Match_2D_E,

                /// ------ To Address Path ------
                  output logic [4:0]   RA1D, RA2D,
                  output logic [3:0]   DestRegD,

                /// ------ From Address Path ------
                  input  logic [4:0]   WA3W,

                /// ------ added for thumb instructions ------
                  input  logic        TFlagNextE, 
                  output logic        TFlagE);

                          
  logic [31:0] PCPlus4F, PCnext1F, PCnextF;
  logic [31:0] ExtImmD, Rd1D, Rd2D, PCPlus8D, RotImmD;
  logic [31:0] Rd1E, Rd2E, ExtImmE, SrcAE, SrcBE, WriteDataE, WriteDataReplE, ALUOutputE, ShifterAinE, ALUSrcBE, ALUSrcB4E, ShiftBE;
  logic [31:0] MultOutputBE, MultOutputAE;

  logic [31:0] ReadDataRawW, ReadDataW, ALUOutW, ResultW;
  logic [3:0]  RA1_4b_D, RA1_RnD, RA2_4b_D;
  logic [31:0] ALUSrcA, ALUSrcB, MultOutputE;
  

  // ====================================================================================
  // ================================ Fetch Stage =======================================
  // ====================================================================================
  mux2 #(32) pcnextmux(PCPlus4F, ResultW, PCSrcW, PCnext1F);
  mux2 #(32) branchmux(PCnext1F, ALUResultE, BranchTakenE, PCnextF);
  flopenr #(32) pcreg(clk, reset, ~StallF, PCnextF, PCF);
  adder #(32) pcaddfour(PCF, 32'h4, PCPlus4F);
  // For thumb mode
  //adder #(32) pcaddtwo(PCF, 32'h2, PCPlus2F)
  //mux2 #(32) pcmux(PCPlus4F, PCPlus2F, TFlagNextE, PCPlusXF)
  
  // ====================================================================================
  // ================================ Decode Stage ======================================
  // ====================================================================================

  assign PCPlus8D = PCPlus4F; // skip register *change to PCPlusXF for thumb
  flopenrc #(32) instrreg(clk, reset, ~StallD, FlushD, InstrF, DefaultInstrD);
 
  mux2 #(32)  instrDmux(DefaultInstrD, uOpInstrD, InstrMuxD, InstrD);
  
  //  ====== Put these into RegFile ========
  mux3 #(4)   ra1mux(InstrD[19:16], 4'b1111, InstrD[3:0], {MultSelectD, RegSrcD[0]}, RA1_RnD);
  mux3 #(4)   ra1RSRmux(RA1_RnD, InstrD[11:8], RA1_RnD, {MultSelectD, (RegFileRzD[2] & RegFileRzD[3])}, RA1_4b_D);
  assign RA1D = {RegFileRzD[0], RA1_4b_D};
  mux3 #(4)   ra2mux(InstrD[3:0], InstrD[15:12], InstrD[11:8], {MultSelectD, RegSrcD[1]}, RA2_4b_D);
  assign RA2D = {RegFileRzD[1], RA2_4b_D};
  mux2 #(4)  destregmux(InstrD[15:12], InstrD[19:16], MultSelectD, DestRegD);
  // --------------------

  
  regfile     rf(clk, RegWriteW, RA1D, RA2D,
                 WA3W, ResultW, PCPlus8D, 
                 Rd1D, Rd2D); 
  extend      ext(InstrD[23:0], ImmSrcD, ExtImmD, InstrD[25], SignExtendD);

  // --------- INTEGRATE WITH SHIFTER -------------
  rotator   rotat(ExtImmD, InstrD, RotImmD, noRotateD); 
  // ----------------------------------------------


  // ====================================================================================
  // ============================== Execute Stage =======================================
  // ====================================================================================
  // Added enable to StallE, StallM, and Added FlushW. (Added for memory)
  flopenr #(32) rd1reg(clk, reset, ~StallE, Rd1D, Rd1E);
  flopenr #(32) rd2reg(clk, reset, ~StallE, Rd2D, Rd2E);
  flopenr #(32) immreg(clk, reset, ~StallE, RotImmD, ExtImmE); // Modified by Ivan

  mux3 #(32)  byp1mux(Rd1E, ResultW, ALUOutM, ForwardAE, SrcAE);
  mux3 #(32)  byp2mux(Rd2E, ResultW, ALUOutM, ForwardBE, WriteDataE);
  mux2 #(32)  srcbmux(WriteDataE, ExtImmE, ALUSrcE, ALUSrcB4E);
  mux2 #(32)  shifterAin(SrcAE, ExtImmE, RselectE, ShifterAinE); 
  mux2 #(32)  select4(ALUSrcB4E, 32'h4, IncrementE, ALUSrcBE);
  mux2 #(32)  shifterOutsrcB(ALUSrcBE, ShiftBE, RselectE, SrcBE);

  // Thumb
  assign TFlagE = ALUSrcBE[0];

  // TODO: implement as a barrel shift
  shifter     shiftLogic(ShifterAinE, ALUSrcBE, ShiftBE, RselectE, ResultSelectE[0], LDRSTRshiftE, PreviousFlagsE[1:0], ShiftOpCode_E, ShifterCarryOutE);
  
  alu         alu(SrcAE, SrcBE, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryE, ALUOutputE, ALUFlagsE, PreviousFlagsE[1:0], ShifterCarryOut_cycle2E, ShifterCarryOutE, PrevRSRstateE, KeepVE); 
  
  // TODO: Use a signle multiplier for both signed and unsigned
  // - Turn this into structural block
  // - Move relevant signals to controller
  multiplier  mult(clk, reset, MultEnable, StallE, WriteMultLoKeptE, SrcAE, SrcBE, MultControlE, MultOutputE, MultFlagsE, PreviousFlagsE[1:0]);
  
  mux3 #(32)  aluoutputmux(ALUOutputE, ShiftBE, MultOutputE, ResultSelectE, ALUResultE); 
  data_replicator memReplicate(WriteByteE, WriteHalfwordE, WriteDataE, WriteDataReplE);
  
  // ====================================================================================
  // =============================== Memory Stage =======================================
  // ====================================================================================
  flopenr #(32) aluresreg(clk, reset, ~StallM, ALUResultE, ALUOutM);
  flopenr #(32) wdreg(clk, reset, ~StallM, WriteDataReplE, WriteDataM);
  
  // ====================================================================================
  // =============================== Writeback Stage ====================================
  // ====================================================================================
  flopenrc #(32) aluoutreg(clk, reset, ~StallW, FlushW, ALUOutM, ALUOutW);
  flopenrc #(32) rdreg(clk, reset, ~StallW, FlushW, ReadDataM, ReadDataRawW);
  mux2 #(32)  resmux(ALUOutW, ReadDataW, MemtoRegW, ResultW);

  //TODO: Think about how we want to implement this - should it be in the 32bit datapath?
  data_selector byteShift(LoadLengthW, WriteHalfwordW, HalfwordOffsetW, ByteOffsetW, ReadDataRawW, ReadDataW); 
  
endmodule