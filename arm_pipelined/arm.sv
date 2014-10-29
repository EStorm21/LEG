module arm(input  logic        clk, reset,
           output logic [31:0] PCF,
           input  logic [31:0] InstrF,
           output logic        MemWriteM,
           output logic [31:0] ALUOutM, WriteDataM,
           input  logic [31:0] ReadDataM,
           // Added for memory
           input logic dstall,
           output logic MemtoRegM);

  logic [1:0]  RegSrcD, ImmSrcD;
  logic [3:0]  ALUControlE;
  logic        ALUSrcE, BranchTakenE, MemtoRegW, PCSrcW, RegWriteW;
  logic [3:0]  FlagsE;
  logic [6:4]  shiftOpCode_E;
  logic [31:0] InstrD;
  logic        RegWriteM, MemtoRegE, PCWrPendingF;
  logic [1:0]  ForwardAE, ForwardBE;
  logic        StallF, StallD, FlushD, StallE, FlushE, StallM, FlushW;
  logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_12D_E;
  logic        swapALUinputsE, DoNotWriteReg, doNotUpdateFlagD,uOpStallD, prevRSRstateD, prevRSRstateE, MultSelectD, RselectE;
  logic [1:0]  PreviousCVFlag; // [1] is C, [0] is V
  logic [1:0]  resultSelectE;
  logic [2:0]  MultControlE;
  logic        WriteMultLoD, MultStallD;

  controller c(.*);
  datapath dp(.*); 
  hazard h(.*);
endmodule