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
                  input  logic        KeepVD, SignExtendD, noRotateD, InstrMuxD,
                  input  logic [3:0]  RegFileRzD,
                  input  logic [31:0] uOpInstrD,
                  input  logic        WriteMultLoE, WriteMultLoKeptE,

                /// ------ To Controller ------
                  output logic [31:0] InstrD,
                  output logic [31:0] ALUOutM, WriteDataM,
                  output logic [3:0]  ALUFlagsE, MultFlagsE,
                  output logic [1:0]  STR_cycleD,
                  output logic [31:0] ALUResultE, DefaultInstrD,

                /// ------ From Hazard ------
                  input  logic [1:0]  ForwardAE, ForwardBE,
                  input  logic        StallF, StallD, FlushD, StallE, StallM, FlushW, StallW, // Added StallE, StallM, FlushW for memory

                /// ------ To Hazard ------
                  output logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_12D_E,

                /// ------ added for thumb instructions ------
                  input  logic        TFlagNextE, 
                  output logic        TFlagE);

                          
  logic [31:0] PCPlus4F, PCnext1F, PCnextF;
  logic [31:0] ExtImmD, Rd1D, Rd2D, PCPlus8D, RotImmD;
  logic [31:0] Rd1E, Rd2E, ExtImmE, SrcAE, SrcBE, WriteDataE, WriteDataReplE, ALUOutputE, ShifterAinE, ALUSrcBE, ALUSrcB4E, ShiftBE;
  logic [31:0] MultOutputBE, MultOutputAE;
  logic        ShifterCarryOutE;
  logic [31:0] ReadDataRawW, ReadDataW, ALUOutW, ResultW;
  logic [3:0]  RA1_4b_D, RA1_RnD, RA2_4b_D;
  logic [4:0]  RA1D, RA2D, RA1E, RA2E, WA3E, WA3E_1, WA3M, WA3W, RdLoD , RdLoE;
  logic        Match_1D_E, Match_2D_E;
  logic [31:0] ALUSrcA, ALUSrcB, MultOutputE;
  logic [3:0]  DestRegD;

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

  // ------- Move to Controller/Hazard Unit ----------- //////////////////// BEING EDITED NOW
  // assign MultStallD = (InstrD[27:24] == 4'b0) & InstrD[23] & (InstrD[7:4] == 4'b1001) & ~InstrD[25] & ~WriteMultLoE; //For Long Multiply
  // assign MultStallE = (InstrD[27:24] == 4'b0) & InstrE[23] & (InstrE[7:4] == 4'b1001) & ~InstrD[25]; //For Long Multiply
  // flopenr #(1)  MultOutputSrc(clk, reset, ~StallE, MultStallD, WriteMultLoE);
  // flopenr #(1)  MultOutputSrc1(clk, reset, ~StallE, WriteMultLoE, WriteMultLoKeptE); //write the low register on the second cycle
  // --------------------------------------------------
  
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

  // --------Let's create a 5 bit "Address Path"-------
  flopenr #(5)  wa3ereg(clk, reset, ~StallE, {RegFileRzD[2], DestRegD}, WA3E_1);
  flopenr #(5)  ra1reg(clk, reset, ~StallE, RA1D, RA1E);
  flopenr #(5)  ra2reg(clk, reset, ~StallE, RA2D, RA2E);
  // ------------------------------------------

  //  ------------- Put in controller ---------
  flopenr #(1)  keepV(clk, reset, ~StallE, KeepVD, KeepVE);
  // ---------------------------------------------

  mux3 #(32)  byp1mux(Rd1E, ResultW, ALUOutM, ForwardAE, SrcAE);
  mux3 #(32)  byp2mux(Rd2E, ResultW, ALUOutM, ForwardBE, WriteDataE);
  mux2 #(32)  srcbmux(WriteDataE, ExtImmE, ALUSrcE, ALUSrcB4E);
  mux2 #(32)  shifterAin(SrcAE, ExtImmE, RselectE, ShifterAinE); 
  mux2 #(32)  select4(ALUSrcB4E, 32'h4, IncrementE, ALUSrcBE);
  mux2 #(32)  shifterOutsrcB(ALUSrcBE, ShiftBE, RselectE, SrcBE);


  // Thumb
  assign TFlagE = ALUSrcBE[0];

  // -------- TODO put in address path ------------------
  assign WA3E = WriteMultLoE ? RdLoE: WA3E_1;
  // ----------------------------------------------------

  // --- TODO put into address path, Long Multiply RdLo register
  assign RdLoE = {0, InstrE[15:12]};
  // -----------------------------------------------------------

  // TODO: implement as a barrel shift
  shifter     shiftLogic(ShifterAinE, ALUSrcBE, ShiftBE, RselectE, ResultSelectE[0], LDRSTRshiftE, PreviousFlagsE[1:0], ShiftOpCode_E, ShifterCarryOutE);
  // ------ TODO: Move to controller ---
  flopenr #(1) shftrCarryOut(clk, reset, ~StallE, ShifterCarryOutE, ShifterCarryOut_cycle2E);
  // -----------------------------------
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
  flopenr #(5)  wa3mreg(clk, reset, ~StallM, WA3E, WA3M);
  
  // ====================================================================================
  // =============================== Writeback Stage ====================================
  // ====================================================================================
  flopenrc #(32) aluoutreg(clk, reset, ~StallW, FlushW, ALUOutM, ALUOutW);
  flopenrc #(32) rdreg(clk, reset, ~StallW, FlushW, ReadDataM, ReadDataRawW);
  flopenrc #(5)  wa3wreg(clk, reset, ~StallW, FlushW, WA3M, WA3W);
  mux2 #(32)  resmux(ALUOutW, ReadDataW, MemtoRegW, ResultW);

  //TODO: Think about how we want to implement this - should it be in the 32bit datapath?
  data_selector byteShift(LoadLengthW, WriteHalfwordW, HalfwordOffsetW, ByteOffsetW, ReadDataRawW, ReadDataW); 
  
  // hazard comparison
  eqcmp #(5) m0(WA3M, RA1E, Match_1E_M);
  eqcmp #(5) m1(WA3W, RA1E, Match_1E_W);
  eqcmp #(5) m2(WA3M, RA2E, Match_2E_M);
  eqcmp #(5) m3(WA3W, RA2E, Match_2E_W);
  eqcmp #(5) m4a(WA3E, RA1D, Match_1D_E);
  eqcmp #(5) m4b(WA3E, RA2D, Match_2D_E);

  // TODO: Move this to the Hazard Unit
  assign Match_12D_E = Match_1D_E | Match_2D_E;
  
endmodule