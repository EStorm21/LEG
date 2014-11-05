module controller(input  logic         clk, reset,
                  input  logic [31:0] InstrD,
                  input  logic [3:0]   FlagsE,
                  output logic [1:0]   RegSrcD, ImmSrcD, 
                  output logic         ALUSrcE, BranchTakenE,
                  output logic [3:0]   ALUControlE,
                  output logic [2:0]   MultControlE,
                  output logic         MemWriteM,
                  output logic         MemtoRegW, PCSrcW, RegWriteW,
                  // hazard interface
                  output logic         RegWriteM, MemtoRegE, PCWrPendingF,
                  // Added StallE, StallM, and FlushW for memory
                  input  logic         FlushE, StallE, StallM, FlushW, StallW,
                  output logic         MemtoRegM,
                  // Recently added by CW team - for Data processing instructions
                  output logic  [2:0]   ALUOperationE, CVUpdateE,
                  output logic          DoNotWriteRegE, InvertBE, ReverseInputsE, ALUCarryE,
                  output logic  [1:0]  PreviousCVFlag,
                  // For micro-op decoding
                  input logic          doNotUpdateFlagD, prevRSRstateD,
                  output logic         RselectE, prevRSRstateE,
                  output logic  [1:0]  resultSelectE,
                  input  logic  [3:0]  regFileRzD, 
                  // input logic   [6:4]  shiftOpCode_D,
                  output logic  [6:4]  shiftOpCode_E,
                  output logic         MultSelectD, MultEnable);

  logic [10:0] controlsD;
  logic       CondExE, ALUOpD;
  logic [3:0] ALUControlD;
  logic [2:0] MultControlD;
  logic       ALUSrcD, swapALUinputsD, MemtoRegD;
  logic       RegWriteD, RegWriteE, RegWriteGatedE;
  logic       MemWriteD, MemWriteE, MemWriteGatedE;
  logic       BranchD, BranchE;
  logic [1:0] FlagWriteD, FlagWriteE;
  logic       PCSrcD, PCSrcE, PCSrcM;
  logic [3:0] PreviousFlagsE, FlagsNextE, CondE;
  logic       RegWritepreMuxE, RselectD, RSRselectD;
  logic [1:0] resultSelectD;
  logic [6:4] shiftOpCode_D;
  logic [31:0] InstrE;

  assign shiftOpCode_D = InstrD[6:4];

  // Decode stage
  

  always_comb
  	casex(InstrD[27:26]) 
      // If 2'b00, then this is data processing instruction
  	  2'b00: if (InstrD[25]) controlsD = 11'b00_00_1010010; // Data processing immediate
  	         else begin         
                if (InstrD[7:4] == 4'b1001)
                             controlsD = 11'b00_00_0010011; // Multiply
                else         controlsD = 11'b00_00_0010010; // Data processing register
                  end
  	  2'b01: if (InstrD[20]) controlsD = 11'b00_01_1110000; // LDR
  	         else            controlsD = 11'b10_01_1101000; // STR
  	  2'b10:                 controlsD = 11'b01_10_1000100; // B
  	  default:               controlsD = 11'bx;          // unimplemented
  	endcase

  assign {RegSrcD, ImmSrcD, ALUSrcD, MemtoRegD, 
          RegWriteD, MemWriteD, BranchD, ALUOpD, MultSelectD} = controlsD; 

  
   always_comb
     if (ALUOpD) begin                     // which Data-processing Instr?
      ALUControlD = InstrD[24:21];  // Always passes Instruction codes to ALUControlD
      FlagWriteD[1:0]   = {InstrD[20], InstrD[20]};       // update N and Z Flags if S bit is set
    end else begin
      ALUControlD     = 4'b0100;      // perform addition for non-dataprocessing instr
      FlagWriteD      = 2'b00;        // don't update Flags
    end 
 
  assign MultControlD  = InstrD[23:21];
  assign PCSrcD        = (((InstrD[15:12] == 4'b1111) & RegWriteD & ~regFileRzD[2]) | BranchD);
  assign RselectD      = (InstrD[27:25] == 3'b000 && shiftOpCode_D[4] == 0);
  assign RSRselectD    = (InstrD[27:25] == 3'b000 && shiftOpCode_D[4] == 1);
  assign resultSelectD = {MultSelectD, RSRselectD};



  // Execute stage
  // Added enables to E, M, and flush to W. Added for memory
  flopenrc  #(4) shifterregE (clk, reset, ~StallE, FlushE,  {RselectD, resultSelectD, prevRSRstateD}, {RselectE, resultSelectE, prevRSRstateE});
  flopenrc #(7) flushedregsE(clk, reset, ~StallE, FlushE, 
                           {FlagWriteD, BranchD, MemWriteD, RegWriteD, PCSrcD, MemtoRegD},
                           {FlagWriteE, BranchE, MemWriteE, RegWriteE, PCSrcE, MemtoRegE});

  flopenr #(8)  regsE(clk, reset, ~StallE,
                    {ALUSrcD, ALUControlD, MultControlD},
                    {ALUSrcE, ALUControlE, MultControlE});

  assign MultEnable = InstrE[7:4] == 4'b1001;
  // ALU Decoding
  flopenrc #(33) passALUinstr(clk, reset, ~StallE, FlushE,
                           {ALUOpD, InstrD}, {ALUOpE, InstrE});
  alu_decoder alu_dec(ALUOpE, InstrE[24:21], PreviousCVFlag, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryE, DoNotWriteRegE);
                    
  flopenr  #(4) condregE(clk, reset, ~StallE, InstrD[31:28], CondE);
  flopenr  #(4) flagsregE(clk, reset, ~StallE, FlagsNextE, PreviousFlagsE);
  flopenr  #(3) shiftOpCodeE(clk, reset, ~StallE, shiftOpCode_D[6:4],shiftOpCode_E[6:4]);

  // write and Branch controls are conditional
  conditional Cond(CondE, PreviousFlagsE, FlagsE, FlagWriteE, CondExE, FlagsNextE);
  assign BranchTakenE    = BranchE & CondExE;
  assign RegWritepreMuxE = RegWriteE & CondExE;
  assign MemWriteGatedE  = MemWriteE & CondExE;
  assign PCSrcGatedE     = PCSrcE & CondExE;
  
  // disable write to register for flag-setting instructions
  assign RegWriteGatedE = DoNotWriteRegE ? 1'b0 : RegWritepreMuxE; 
  
  // create carry-in bit for carry instructions to send to ALU 
  assign PreviousCVFlag = PreviousFlagsE[1:0];
  
  // Memory stage
  flopenr #(4) regsM(clk, reset, ~StallM,
                   {MemWriteGatedE, MemtoRegE, RegWriteGatedE, PCSrcGatedE},
                   {MemWriteM, MemtoRegM, RegWriteM, PCSrcM});
  
  // Writeback stage
  flopenrc #(3) regsW(clk, reset, ~StallW, FlushW, 
                   {MemtoRegM, RegWriteM, PCSrcM},
                   {MemtoRegW, RegWriteW, PCSrcW});

  // Hazard Prediction
  assign PCWrPendingF = PCSrcD | PCSrcE | PCSrcM;

endmodule
