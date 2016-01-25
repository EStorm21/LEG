module datapath(/// ------ From TOP (Memory & Coproc) ------
                  input  logic        clk, reset,
                  input  logic [31:0] InstrF,  
                  input  logic [31:0] ReadDataM, CP15rd_M,
                  input logic        HighVec,

                /// ------ To TOP (Memory & Coproc) ------
                  output logic [31:0] PCF, WriteDataM,

                ///  ------- From Controller ------
                  input  logic [1:0]  ImmSrcD,
                  input  logic        ALUSrcE, BranchTakenE,
                  input  logic        MemtoRegW, PCSrcW, RegWriteW, CPSRtoRegW, ClzSelectE, ExceptionSavePC,
                  input  logic [31:0] InstrE, PSR_W, 
                  input  logic [2:0]  VectorPCnextF,
                  input  logic [ 4:0] shamtE,
                  input  logic [ 4:0] shctl_5E,
                  input  logic [ 7:0] shctl_8E,
                  input  logic        rrx_inE, longshiftE, leftE, shiftE, arithE,
                  // Handling data-processing Instrs (ALU)
                  input  logic [3:0]  FlagsE,
                  input  logic [2:0]  ALUOperationE,
                  input  logic        InvertBE, ReverseInputsE, ALUCarryInE,
                  // To handle micro-op decoding
                  input  logic        RselectE, LDRSTRshiftE, 
                  input  logic        RSRselectE,
                  input  logic [6:4]  ShiftOpCode_E,
                  // To handle load-store half-words and bytes
                  input  logic        LoadLengthW, HalfwordOffsetW, Ldr_SignBW, Ldr_SignHW,
                  input  logic [1:0]  ByteOffsetW,
                  input  logic        WriteByteE, StrHalfwordE, LdrHalfwordW,
                  // Added for moving MicroOpFSM to Controller decode
                  input  logic        noRotateD, InstrMuxD,
                  input  logic [31:0] uOpInstrD,
                  input  logic        CoProc_EnM, 

                /// ------ To Controller ------
                  output logic [31:0] InstrD,
                  output logic [31:0] ALUOutM, ALUOutW,
                  output logic [3:0]  ALUFlagsE, 
                  output logic [31:0] ALUResultE, DefaultInstrD,
                  output logic        ZeroRotateD,
                  output logic [1:0]  Rs_D,
                  output logic        sh_a0E, sh_a31E, sh_rot0E, sh_rot31E,
                  output logic [7:0]  SrcA70E,

                /// ------ From Hazard ------
                  input  logic [1:0]  ForwardAE, ForwardBE,
                  input  logic        StallF, StallD, FlushD, FlushE, StallE, StallM, FlushM, FlushW, StallW, // Added StallE, StallM, FlushW for memory
                  input  logic  [1:0] PCInSelect, // for exception handling

                /// ------ To Hazard ------
                /// ------ To Address Path ------
                /// ------ From Address Path ------
                  input  logic [31:0] WA3W, RA1D, RA2D);

                          
  logic [31:0] PCPlus4F, PCnext1F, PCnext2F, PCnextF, PCPlus4D, PCPlus0D, PC_in;
  logic [31:0] ExtImmD, Rd1D, Rd2D, PCPlus8D, RotImmD;
  logic [31:0] Rd1E, Rd2E, ExtImmE, SrcAE, SrcBE, WriteDataE, WriteDataReplE, ALUOutputE, ALUSrcBE, ShiftBE;
  logic [31:0] ReadDataRawW, ReadDataW, Result1_W, ResultW;
  logic [31:0] ZerosE, OperationOutputE;
  logic [31:0] ALUorCP15_M;
  // Keep PC and instruction in each stage for debugging
  logic [31:0] PCD, PCE, PCM, PCW;
  logic [31:0] instrEdebug, instrMdebug, instrWdebug;
  
/***** Brief Description *******
 * Modified by Ivan Wong for Clay Wolkin 2014-2015 
 * 32-BIT DATAPATH - SHOULD ONLY HAVE 32 BIT SIGNALS ONLY
 *
 ******************************/

  // ====================================================================================
  // ================================ Fetch Stage =======================================
  // ====================================================================================
  mux2 #(32) pcnextmux(PCPlus4F, ResultW, PCSrcW, PCnext1F);
  mux2 #(32) branchmux(PCnext1F, ALUResultE, BranchTakenE, PCnext2F);
  mux2 #(32) exceptionmux(PCnext2F, {{16{HighVec}}, 11'b0, VectorPCnextF, 2'b0}, ExceptionSavePC, PCnextF);
  flopenr #(32) pcreg(clk, reset, ~StallF, PCnextF, PCF);
  adder #(32) pcaddfour(PCF, 32'h4, PCPlus4F);
  
  // ====================================================================================
  // ================================ Decode Stage ======================================
  // ====================================================================================

  assign PCPlus8D = PCPlus4F; // skip register *change to PCPlusXF for thumb
  flopenr #(32) pcplus4(clk, reset, ~StallD, PCPlus4F, PCPlus4D);
  flopenr #(32) pcplus0(clk, reset, ~StallD, PCPlus4D, PCPlus0D);
  flopenrc #(32) instrreg(clk, reset, ~StallD, FlushD, InstrF, DefaultInstrD);
  // pass on PC for debugging
  flopenr #(32) pcdreg(clk, reset, ~StallD, PCF, PCD);

  mux3 #(32)  exceptionPC(PCPlus8D, PCPlus0D, PCPlus4D, PCInSelect, PC_in);
  mux2 #(32)  instrDmux(DefaultInstrD, uOpInstrD, InstrMuxD, InstrD);
  
  regfile     rf(clk, reset, RegWriteW, RA1D, RA2D,
                 WA3W, ResultW, PC_in, 
                 Rd1D, Rd2D); 
  extend      ext(InstrD[23:0], ImmSrcD, ExtImmD, InstrD[25], noRotateD);
  rotator   rotat(ExtImmD, InstrD, RotImmD, ZeroRotateD, noRotateD); 
  assign Rs_D = Rd2D[1:0];


  // ====================================================================================
  // ============================== Execute Stage =======================================
  // ====================================================================================
  // Added enable to StallE, StallM, and Added FlushW. (Added for memory)
  flopenrc #(32) rd1reg(clk, reset, ~StallE, FlushE, Rd1D, Rd1E);
  flopenrc #(32) rd2reg(clk, reset, ~StallE, FlushE, Rd2D, Rd2E);
  flopenrc #(32) immreg(clk, reset, ~StallE, FlushE, RotImmD, ExtImmE);
  // pass on PC for debugging
  flopenrc #(32) pcereg(clk, reset, ~StallE, FlushE, PCD, PCE);
  flopenrc #(32) instrereg(clk, reset, ~StallE, FlushE, DefaultInstrD, instrEdebug);

  mux3 #(32)  byp1mux(Rd1E, ResultW, ALUorCP15_M, ForwardAE, SrcAE);
  mux3 #(32)  byp2mux(Rd2E, ResultW, ALUorCP15_M, ForwardBE, WriteDataE);
  mux2 #(32)  srcbmux(WriteDataE, ExtImmE, ALUSrcE, ALUSrcBE);
  mux2 #(32)  shifterOutsrcB(ALUSrcBE, ShiftBE, RselectE, SrcBE);

  barrel_shifter shifter(ALUSrcBE, shamtE, shctl_5E, shctl_8E, rrx_inE, longshiftE, leftE, shiftE, arithE, ShiftBE, sh_a0E, sh_a31E, sh_rot0E, sh_rot31E);
  assign SrcA70E = SrcAE[7:0];
  
  alu         alu(SrcAE, SrcBE, ALUOperationE, InvertBE, ReverseInputsE, ALUCarryInE, ALUOutputE, ALUFlagsE); 
  zero_counter clz(SrcBE, ZerosE);
  mux2 #(32) aluorclzmux(ALUOutputE, ZerosE, ClzSelectE, OperationOutputE);
  
  mux2 #(32)  aluoutputmux(OperationOutputE, ShiftBE, RSRselectE, ALUResultE); 
  data_replicator memReplicate(WriteByteE, StrHalfwordE, WriteDataE, WriteDataReplE);
  
  // ====================================================================================
  // =============================== Memory Stage =======================================
  // ====================================================================================
  flopenrc #(32) aluresreg(clk, reset, ~StallM, FlushM, ALUResultE, ALUOutM);
  // pass on PC for debugging
  flopenrc #(32) pcmreg(clk, reset, ~StallM, FlushM, PCE, PCM);
  flopenrc #(32) instrmreg(clk, reset, ~StallM, FlushM, instrEdebug, instrMdebug);

  mux2 #(32) CP15_ALU_mux(ALUOutM, CP15rd_M, CoProc_EnM, ALUorCP15_M);
  flopenrc #(32) wdreg(clk, reset, ~StallM, FlushM, WriteDataReplE, WriteDataM);
  
  // ====================================================================================
  // =============================== Writeback Stage ====================================
  // ====================================================================================
  flopenrc #(32) aluoutreg(clk, reset, ~StallW, FlushW, ALUorCP15_M, ALUOutW);
  flopenrc #(32) rdreg(clk, reset, ~StallW, FlushW, ReadDataM, ReadDataRawW);
  // pass on PC for debugging
  flopenrc #(32) pcwreg(clk, reset, ~StallW, FlushW, PCM, PCW);
  flopenrc #(32) instrwreg(clk, reset, ~StallW, FlushW, instrMdebug, instrWdebug);


  mux2 #(32)  resmux(ALUOutW, ReadDataW, MemtoRegW, Result1_W);
  mux2 #(32)  msr_mrs_mux(Result1_W, PSR_W, CPSRtoRegW, ResultW);
  //TODO: Think about how we want to implement this - should it be in the 32bit datapath?
  data_selector byteShift(LoadLengthW, LdrHalfwordW, HalfwordOffsetW, Ldr_SignBW, Ldr_SignHW, ByteOffsetW, ReadDataRawW, ReadDataW); 
  
endmodule
