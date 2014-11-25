module controller(input  logic         clk, reset,
                  input  logic [31:0]  InstrD,
                  input  logic [3:0]   FlagsE,
                  input  logic [1:0]   STR_cycleD,
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
                  output logic  [3:0]   PreviousFlagsE,
                  // For micro-op decoding
                  input logic          doNotUpdateFlagD, PrevRSRstateD, LDMSTMforwardD, uOpFwdAE_D, uOpFwdBE_D,
                  output logic         RselectE, PrevRSRstateE, LDRSTRshiftE, LDMSTMforwardE, uOpFwdAE_E, uOpFwdBE_E,
                  output logic  [1:0]  ResultSelectE,
                  input  logic  [3:0]  RegFileRzD, 
                  output logic  [6:4]  ShiftOpCode_E,
                  output logic         MultSelectD, MultEnable,
                  output logic [31:0]  InstrE);

  logic [11:0] ControlsD;
  logic       CondExE, ALUOpD, ldrstrALUopD, ldrstrALUopE;
  logic [3:0] ALUControlD;
  logic [2:0] MultControlD;
  logic       ALUSrcD, MemtoRegD;
  logic       RegWriteD, RegWriteE, RegWriteGatedE;
  logic       MemWriteD, MemWriteE, MemWriteGatedE;
  logic       BranchD, BranchE;
  logic [1:0] FlagWriteD, FlagWriteE;
  logic       PCSrcD, PCSrcE, PCSrcM;
  logic [3:0] FlagsNextE, CondE;
  logic       RegWritepreMuxE, RselectD, RSRselectD;
  logic [1:0] ResultSelectD;
  logic [6:4] ShiftOpCode_D;
  logic [11:0]  StateRegisterDataE;

  assign ShiftOpCode_D = InstrD[6:4];

  // Decode stage
  always_comb
  	casex(InstrD[27:26]) 
      // If 2'b00, then this is data processing instruction
  	  2'b00: if (InstrD[25]) ControlsD = 12'b00_00_1010_0100; // Data processing immediate   0x52
  	         else begin         
                if (InstrD[7:4] == 4'b1001)
                             ControlsD = 12'b00_00_0010_0110; // Multiply                    0x13
                else         ControlsD = 12'b00_00_0010_0100; // Data processing register    0x12
                  end
  	  2'b01: if (InstrD[20] & ~InstrD[25])       ControlsD = 12'b00_01_1110_0001; // LDR, "I-type" 0xf0
             else if (InstrD[20] & InstrD[25])   ControlsD = 12'b00_00_0110_0001; // LDR, "R-Type" 0xb0
             else if (~InstrD[20] & ~InstrD[25])   ControlsD = 12'b10_01_1101_0001; // STR, "I-type"
             else if (~InstrD[20] & InstrD[25])    ControlsD = 12'b10_00_0101_0001; // STR, "R-type"
              /*
  	         else if (~InstrD[20] & ~InstrD[25]) ControlsD = 12'b10_01_1101_0001; // STR  "I-type" 0x4e8
             else if   (~InstrD[20] & InstrD[25])  ControlsD = 12'b00_00_0101_0001;*/
  	  2'b10:                 ControlsD = 12'b01_10_1000_1000; // B                           0x344
  	  default:               ControlsD = 12'bx;          // unimplemented
  	endcase

  /*
   * Notes: ldrstrALUopD gives Loads and Stores the ability to choose alu function add or subtract.
   */
  assign {RegSrcD, ImmSrcD, ALUSrcD, MemtoRegD, 
          RegWriteD, MemWriteD, BranchD, ALUOpD, MultSelectD, ldrstrALUopD} = ControlsD; 

  
   always_comb
     if (ALUOpD) begin                     // which Data-processing Instr?
      ALUControlD = InstrD[24:21];  // Always passes Instruction codes to ALUControlD
      FlagWriteD[1:0]   = {InstrD[20], InstrD[20]};       // update flags if S bit is set

    // LOAD STORE LOGIC
    end else if ((ImmSrcD == 2'b01) & InstrD[23]) begin// Load Store (Rn + 12 bit offset)
      ALUControlD     = 4'b0100;  // "Add" operation
      FlagWriteD[1:0] = 2'b00;
    end else if ((ImmSrcD == 2'b01) & ~InstrD[23]) begin // Load/Store (Rn - 12 bit offset)
      ALUControlD     = 4'b0010;  // "Subtract" operation
      FlagWriteD[1:0] = 2'b00;
    end else begin                    
      ALUControlD     = 4'b0100;      // perform addition for non-dataprocessing instr (branch...)
      FlagWriteD[1:0] = 2'b00;        // don't update Flags
    end 
 
  assign MultControlD  = InstrD[23:21];
  assign PCSrcD        = (((InstrD[15:12] == 4'b1111) & RegWriteD & ~RegFileRzD[2]) | BranchD);
  assign RselectD      = (InstrD[27:25] == 3'b000 & ShiftOpCode_D[4] == 0) | (InstrD[27:25] == 3'b011) ;
  assign RSRselectD    = (InstrD[27:25] == 3'b000 & ShiftOpCode_D[4] == 1);
  assign ResultSelectD = {MultSelectD, RSRselectD};
  assign LDRSTRshiftD  =  (InstrD[27:25] == 3'b011);


  // Execute stage
  // Added enables to E, M, and flush to W. Added for memory
  flopenrc  #(8) shifterregE (clk, reset, ~StallE, FlushE,  {RselectD, ResultSelectD, PrevRSRstateD, LDMSTMforwardD, LDRSTRshiftD, uOpFwdAE_D, uOpFwdBE_D}, 
                                                            {RselectE, ResultSelectE, PrevRSRstateE, LDMSTMforwardE, LDRSTRshiftE, uOpFwdAE_E, uOpFwdBE_E});
  flopenrc #(8) flushedregsE(clk, reset, ~StallE, FlushE, 
                           {FlagWriteD, BranchD, MemWriteD, RegWriteD, PCSrcD, MemtoRegD, ldrstrALUopD},
                           {FlagWriteE, BranchE, MemWriteE, RegWriteE, PCSrcE, MemtoRegE, ldrstrALUopE});

  flopenrc #(8)  regsE(clk, reset, ~StallE, FlushE,
                    {ALUSrcD, ALUControlD, MultControlD},
                    {ALUSrcE, ALUControlE, MultControlE});

  assign MultEnable = InstrE[7:4] == 4'b1001;
  // ALU Decoding
  flopenrc #(33) passALUinstr(clk, reset, ~StallE, FlushE,
                           {(ALUOpD|ldrstrALUopD), InstrD}, {ALUOpE, InstrE});
  alu_decoder alu_dec(ALUOpE, ALUControlE, PreviousFlagsE[1:0], ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryE, DoNotWriteRegE);
                    
  flopenrc  #(4) condregE(clk, reset, ~StallE, FlushE, InstrD[31:28], CondE);
  
  cpsr          cpsrE(clk, reset, FlagsNextE, 6'b0, 5'b0, 2'b0, 1'b0, ~StallE, 1'b0, 1'b0, StateRegisterDataE);
  assign  PreviousFlagsE = StateRegisterDataE[11:8];
  flopenrc  #(3) shiftOpCodeE(clk, reset, ~StallE, FlushE, ShiftOpCode_D[6:4],ShiftOpCode_E[6:4]);
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
  // assign PreviousCVFlag = PreviousFlagsE[1:0];
  
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
