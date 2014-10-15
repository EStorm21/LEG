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
  logic [3:0]  ALUFlagsE;
  logic [31:0] InstrD;
  logic        RegWriteM, MemtoRegE, PCWrPendingF;
  logic [1:0]  ForwardAE, ForwardBE;
  logic        StallF, StallD, FlushD, FlushE;
  logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_12D_E;
  logic        swapALUinputsE, doNotWriteReg, previousCflag, doNotUpdateFlagD,uOpStallD;

  controller c(clk, reset, InstrD[31:12], ALUFlagsE, 
               RegSrcD, ImmSrcD,
               ALUSrcE, BranchTakenE, ALUControlE,
               MemWriteM,
               MemtoRegW, PCSrcW, RegWriteW,
               RegWriteM, MemtoRegE, PCWrPendingF,
               FlushE, StallE, StallM, FlushW, MemtoRegM,   // Added StallE, StallM, FlushW for memory 
               doNotWriteReg, previousCflag, // These two inputs added by Ivan
               doNotUpdateFlagD, RselectE, RSRselectE, InstrD[6:4]); // These two inputs added by Ivan
  datapath dp(clk, reset, 
              RegSrcD, ImmSrcD, 
              ALUSrcE, BranchTakenE, ALUControlE,
              MemtoRegW, PCSrcW, RegWriteW,
              PCF, InstrF, InstrD,
              ALUOutM, WriteDataM, ReadDataM,
              ALUFlagsE,
              Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_12D_E,
              // Added StallE, StallM, FlushW for memory
              ForwardAE, ForwardBE, StallF, StallD, FlushD, StallE, StallM, FlushW,
              doNotWriteReg, previousCflag, doNotUpdateFlagD, uOpStallD, RselectE, RSRselectE); // Added this line, 1 output 2 inputs
  hazard h(clk, reset, Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_12D_E,
           RegWriteM, RegWriteW, BranchTakenE, MemtoRegE,
           PCWrPendingF, PCSrcW,
           ForwardAE, ForwardBE,
           // Added dstall, StallE, StallM, and FlushW for memory
           StallF, StallD, FlushD, FlushE, dstall, StallE, StallM, FlushW, uOpStallD);

endmodule