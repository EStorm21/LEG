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
                  output logic  [2:0]  ALUOperationE, CVUpdateE,
                  output logic         DoNotWriteRegE, InvertBE, ReverseInputsE, ALUCarryE,
                  output logic  [1:0]  PreviousCVFlag,
                  // For micro-op decoding
                  input logic          doNotUpdateFlagD, PrevRSRstateD,
                  output logic         RselectE, PrevRSRstateE,
                  output logic  [1:0]  ResultSelectE,
                  input  logic  [3:0]  RegFileRzD, 
                  output logic  [6:4]  ShiftOpCode_E,
                  output logic         MultSelectD, MultEnable,
                  output logic [31:0]  InstrE,
                  // For BX instruction
                  output logic         BXInstrE,
                  input  logic         BXReg);

  logic [11:0] ControlsD;
  logic       CondExE, ALUOpD;
  logic [3:0] ALUControlD;
  logic [2:0] MultControlD;
  logic       ALUSrcD, MemtoRegD;
  logic       RegWriteD, RegWriteE, RegWriteGatedE;
  logic       MemWriteD, MemWriteE, MemWriteGatedE;
  logic       BranchD, BranchE;
  logic       TFlag, BXInstrD;
  logic [1:0] FlagWriteD, FlagWriteE;
  logic       PCSrcD, PCSrcE, PCSrcM;
  logic [3:0] PreviousFlagsE, FlagsNextE, CondE;
  logic       RegWritepreMuxE, RselectD, RSRselectD;
  logic [1:0] ResultSelectD;
  logic [6:4] ShiftOpCode_D;
  logic [11:0]  StateRegisterDataE;

  assign ShiftOpCode_D = InstrD[6:4];

  // Decode stage
  

  always_comb
  	casex(InstrD[27:26]) 
      // If 2'b00, then this is data processing instruction
  	  2'b00: if (InstrD[25]) ControlsD = 12'b00_00_10100100; // Data processing immediate
  	         else begin         
                if (InstrD[7:4] == 4'b1001)
                             ControlsD = 12'b00_00_00100110; // Multiply
                else begin
                   if ((InstrD[24:21] == 4'b1001) & (InstrD[15:12] == 4'b1111)) begin
                             ControlsD = 12'b01_00_00001001; // BX
                   else      ControlsD = 12'b00_00_00100100; // Data processing register
                  end
  	  2'b01: if (InstrD[20]) ControlsD = 12'b00_01_11100000; // LDR
  	         else            ControlsD = 12'b10_01_11010000; // STR
  	  2'b10:                 ControlsD = 12'b01_10_10001000; // B
  	  default:               ControlsD = 12'bx;          // unimplemented
  	endcase

  assign {RegSrcD, ImmSrcD, ALUSrcD, MemtoRegD, 
          RegWriteD, MemWriteD, BranchD, ALUOpD, MultSelectD, BXInstrD} = ControlsD; 

  
   always_comb
     if (ALUOpD) begin                     // which Data-processing Instr?
      ALUControlD = InstrD[24:21];  // Always passes Instruction codes to ALUControlD
      FlagWriteD[1:0]   = {InstrD[20], InstrD[20]};       // update N and Z Flags if S bit is set
    end else begin
      ALUControlD     = 4'b0100;      // perform addition for non-dataprocessing instr
      FlagWriteD      = 2'b00;        // don't update Flags
    end 
 
  assign MultControlD  = InstrD[23:21];
  assign PCSrcD        = (((InstrD[15:12] == 4'b1111) & RegWriteD & ~RegFileRzD[2]) | BranchD);
  assign RselectD      = (InstrD[27:25] == 3'b000 && ShiftOpCode_D[4] == 0);
  assign RSRselectD    = (InstrD[27:25] == 3'b000 && ShiftOpCode_D[4] == 1);
  assign ResultSelectD = {MultSelectD, RSRselectD};



  // Execute stage
  // Added enables to E, M, and flush to W. Added for memory
  flopenrc  #(4) shifterregE (clk, reset, ~StallE, FlushE,  {RselectD, ResultSelectD, PrevRSRstateD}, {RselectE, ResultSelectE, PrevRSRstateE});
  flopenrc #(8) flushedregsE(clk, reset, ~StallE, FlushE, 
                           {FlagWriteD, BranchD, MemWriteD, RegWriteD, PCSrcD, MemtoRegD, BXInstrD},
                           {FlagWriteE, BranchE, MemWriteE, RegWriteE, PCSrcE, MemtoRegE, BXInstrE});

  flopenr #(8)  regsE(clk, reset, ~StallE,
                    {ALUSrcD, ALUControlD, MultControlD},
                    {ALUSrcE, ALUControlE, MultControlE});

  assign MultEnable = InstrE[7:4] == 4'b1001;
  // ALU Decoding
  flopenrc #(33) passALUinstr(clk, reset, ~StallE, FlushE,
                           {ALUOpD, InstrD}, {ALUOpE, InstrE});
  alu_decoder alu_dec(ALUOpE, InstrE[24:21], PreviousCVFlag, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryE, DoNotWriteRegE);
                    
  flopenr  #(4) condregE(clk, reset, ~StallE, InstrD[31:28], CondE);
  
  cpsr          cpsrE(clk, reset, FlagsNextE, 6'b0, 5'b0, 2'b0, TFlag, ~StallE, 1'b0, 1'b0, StateRegisterDataE);
  assign  PreviousFlagsE = StateRegisterDataE[11:8];
  flopenr  #(3) shiftOpCodeE(clk, reset, ~StallE, ShiftOpCode_D[6:4],ShiftOpCode_E[6:4]);
  //flopenr  #(4) flagsregE(clk, reset, ~StallE, FlagsNextE, PreviousFlagsE);
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
