module leg(input  logic        clk, reset,
           output logic [31:0] PCF,
           input  logic [31:0] InstrF, 
           output logic        MemWriteM,
           output logic [31:0] ALUOutM, WriteDataM,
           input  logic [31:0] ReadDataM,
           // Added for memory
           input logic         DStall, IStall,
           output logic        MemtoRegM,
           output logic [3:0]  ByteMaskM,
           // Added for exceptions
           input logic PrefetchAbort, DataAbort, IRQ, FIQ);

  /// Output from Hazard Unit
  logic [1:0]  ForwardAE, ForwardBE;
  logic        StallF, StallD, FlushD, StallE, FlushE, StallM, FlushW, StallW, StalluOp;
  logic        ExceptionSavePC;

  /// Output from Datapath
  logic [3:0]  ALUFlagsE, MultFlagsE;
  logic [31:0] InstrD, DefaultInstrD, ALUOutW;
  logic        MultStallD, MultStallE;
  logic        WriteMultLoE, WriteMultLoKeptE;
  logic        ShifterCarryOutE;
  

  /// Output from Controller
  logic [1:0]  RegSrcD, ImmSrcD;
  logic [3:0]  ALUControlE;
  logic        ALUSrcE, BranchTakenE, MemtoRegW, PCSrcW, RegWriteW, Reg_usr_D;
  logic [6:4]  ShiftOpCode_E;
  logic [31:0] InstrE, ALUResultE;
  logic        RegWriteM, MemtoRegE, PCWrPendingF, WriteByteE, WriteHalfwordE, WriteHalfwordW, HalfwordOffsetW;
  logic        DoNotWriteRegE, doNotUpdateFlagD,uOpStallD, PrevRSRstateD, PrevRSRstateE, CPSRtoRegW;
  logic        LDMSTMforwardD, LDMSTMforwardE, LDRSTRshiftE, MultSelectD, RselectE;
  logic [3:0]  FlagsE; // [1] is C, [0] is V
  logic [1:0]  ResultSelectE, STR_cycleD, ByteOffsetW;
  logic [2:0]  MultControlE;
  logic        KeepVE, SignExtendD, noRotateD, InstrMuxD;
  logic [31:0] uOpInstrD;
  logic [2:0]  ALUOperationE, CVUpdateE;
  logic        InvertBE, ReverseInputsE, ALUCarryE, MultEnable, LoadLengthW;
  logic [3:0]  RegFileRzD;
  logic        ShifterCarryOut_cycle2E;
  logic [11:0] CPSR12_W;
  logic [31:0] PSR_W;
  logic [6:0]  PCVectorAddressW;

  /// Output from AddressPath
  logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_1D_E, Match_2D_E, ExceptionVectorSelectW;
  logic [31:0]  WA3W, WA3E, RA1D, RA2D, VectorPCnextF;
  logic [3:0]  DestRegD;

  // Thumb 
  logic        BXInstrD, BXInstrE, TFlagNextE, TFlagE, IncrementE;

  // Exceptions
  logic       UndefinedInstr, SWI, SWI_E, SWI_D, SWI_M, SWI_W;
  logic [1:0] PCInSelect;

  

  controller c(.*);
  datapath dp(.*); 
  hazard h(.*);
  addresspath ap(.*);

endmodule