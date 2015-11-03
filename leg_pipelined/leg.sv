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
           input logic         PrefetchAbort, DataAbort, IRQ, FIQ,
           // Added for Coprocessor Instructions
           output logic        CoProc_WrEnM, CoProc_EnM, 
           output logic [3:0]  CoProc_AddrM, CoProc_CRmM, 
           output logic [2:0]  CoProc_Op2M, 
           output logic [31:0] CPUWriteData, 
           input logic  [31:0] CP15rd_M,
           // Added for MMU
           output logic StallD, FlushD, FlushE);

  /// Output from Hazard Unit
  logic [1:0]  ForwardAE, ForwardBE;
  logic        StallF, StallE, StallM, FlushW, StallW, StalluOp;
  logic        ExceptionSavePC;

  /// Output from Datapath
  logic [3:0]  ALUFlagsE;
  logic [1:0]  MultFlagsE;
  logic [31:0] InstrD, DefaultInstrD, ALUOutW;
  logic        MultStallD, MultStallE;
  logic        WriteMultLoE, WriteMultLoKeptE;
  logic        ShifterCarryOutE, CarryHiddenE;
  

  /// Output from Controller
  logic [1:0]  RegSrcD, ImmSrcD;
  logic [3:0]  ALUControlE;
  logic        ALUSrcE, BranchTakenE, MemtoRegW, PCSrcW, RegWriteW, Reg_usr_D;
  logic [6:4]  ShiftOpCode_E;
  logic [31:0] InstrE, ALUResultE;
  logic        RegWriteM, MemtoRegE, PCWrPendingF, WriteByteE, StrHalfwordE, LdrHalfwordW, HalfwordOffsetW;
  logic        Ldr_SignBW, Ldr_SignHW;
  logic        DoNotWriteRegE, uOpStallD, PrevRSRstateD, PrevRSRstateE, CPSRtoRegW;
  logic        LDMSTMforwardD, LDMSTMforwardE, LDRSTRshiftE, MultSelectD, RselectE;
  logic [3:0]  FlagsE; // [1] is C, [0] is V
  logic [1:0]  ResultSelectE, ByteOffsetW;
  logic [1:0]  MultControlE;
  logic        KeepVE, noRotateD, InstrMuxD;
  logic [31:0] uOpInstrD;
  logic [2:0]  ALUOperationE, CVUpdateE;
  logic        InvertBE, ReverseInputsE, ALUCarryInE, MultEnableE, ZFlagKeptE, LoadLengthW;
  logic [3:0]  RegFileRzD;
  logic        ShifterCarryOut_cycle2E, CoProc_En, AddZeroE, ClzSelectE;
  logic [7:0]  CPSR8_W;
  logic [31:0] PSR_W;
  logic [6:0]  PCVectorAddressW;
  logic RegtoCPSR_EMW, CPSRtoReg_EMW, CoProc_En_EMW;

  /// Output from AddressPath
  logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_1D_E, Match_2D_E, ExceptionVectorSelectW;
  logic [31:0]  WA3W, WA3E, RA1D, RA2D, VectorPCnextF;
  logic [3:0]  DestRegD;

  // Thumb 
  logic        BXInstrD, BXInstrE, TFlagNextE, TFlagE, IncrementE;

  // Exceptions
  logic       UndefinedInstr, undefD, undefE, undefM, undefW;
  logic       SWI, SWI_E, SWI_D, SWI_M, SWI_W;
  logic       RegtoCPSR, CPSRtoReg;
  logic [1:0] PCInSelect;

  controller c (.*);
  datapath dp (.*); 
  hazard h(.*);
  addresspath ap(.*);

endmodule
