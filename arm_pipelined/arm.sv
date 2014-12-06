module arm(input  logic        clk, reset,
           output logic [31:0] PCF,
           input  logic [31:0] InstrF, 
           output logic        MemWriteM,
           output logic [31:0] ALUOutM, WriteDataM,
           input  logic [31:0] ReadDataM,
           // Added for memory
           input logic         DStall, IStall,
           output logic        MemtoRegM,
           output logic [3:0]  ByteMaskM);

  logic [1:0]  RegSrcD, ImmSrcD;
  logic [3:0]  ALUControlE;
  logic        ALUSrcE, BranchTakenE, MemtoRegW, PCSrcW, RegWriteW;
  logic [3:0]  FlagsE;
  logic [6:4]  ShiftOpCode_E;
  logic [31:0] InstrD, InstrE, ALUResultE;
  logic        RegWriteM, MemtoRegE, PCWrPendingF, WriteByteE;
  logic [1:0]  ForwardAE, ForwardBE;
  logic        StallF, StallD, FlushD, StallE, FlushE, StallM, FlushW, StallW;
  logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_12D_E;
  logic        DoNotWriteRegE, doNotUpdateFlagD,uOpStallD, PrevRSRstateD, PrevRSRstateE;
  logic        LDMSTMforwardD, LDMSTMforwardE, LDRSTRshiftE, MultSelectD, RselectE;
  logic [3:0]  PreviousFlagsE; // [1] is C, [0] is V
  logic [1:0]  ResultSelectE, STR_cycleD, ByteOffsetW;
  logic [2:0]  MultControlE;
  logic        MultStallD, MultStallE, StalluOp, ldrstrRtypeD;
  // Data processing added - for decoding ALU
  logic [2:0]  ALUOperationE, CVUpdateE;
  logic        InvertBE, ReverseInputsE, ALUCarryE, MultEnable, LoadLengthW;
  logic [3:0]  RegFileRzD;
  // Thumb 
  logic        BXInstrD, BXInstrE, TFlagNextE, TFlagE, IncrementE;

  controller c(.*);
  datapath dp(.*); 
  hazard h(.*);
endmodule