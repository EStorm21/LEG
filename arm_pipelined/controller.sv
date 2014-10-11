module controller(input  logic         clk, reset,
                  input  logic [31:12] InstrD,
                  input  logic [3:0]   ALUFlagsE,
                  output logic [1:0]   RegSrcD, ImmSrcD, 
                  output logic         ALUSrcE, BranchTakenE,
                  output logic [3:0]   ALUControlE,
                  output logic         MemWriteM,
                  output logic         MemtoRegW, PCSrcW, RegWriteW,
                  // hazard interface
                  output logic         RegWriteM, MemtoRegE, PCWrPendingF,
                  // Added StallE, StallM, and FlushW for memory
                  input  logic         FlushE, StallE, StallM, FlushW,
                  output logic         MemtoRegM,
                  // Recently added by Ivan and Cassie
                  output logic         swapALUinputsE,
                  // Recently added by CW team - for Data processing instructions
                  input logic          doNotWriteReg,
                  output logic         previousCflag,
                  // For micro-op decoding
                  input logic          doNotUpdateFlagD,
                  output logic         shiftTypeE, RvsRSRtypeE,
                  input logic   [6:4]  shiftOpCode_E);

  logic [9:0] controlsD;
  logic       CondExE, ALUOpD;
  logic [3:0] ALUControlD;
  logic       ALUSrcD, swapALUinputsD, MemtoRegD;
  logic       RegWriteD, RegWriteE, RegWriteGatedE;
  logic       MemWriteD, MemWriteE, MemWriteGatedE;
  logic       BranchD, BranchE;
  logic [1:0] FlagWriteD, FlagWriteE;
  logic       PCSrcD, PCSrcE, PCSrcM;
  logic [3:0] FlagsE, FlagsNextE, CondE;
  logic       RegWritepreMuxE, shiftTypeD, RvsRSRtypeD;

  // Decode stage
  
  always_comb
  	casex(InstrD[27:26]) 
      // If 2'b00, then this is data processing instruction
  	  2'b00: if (InstrD[25]) controlsD = 10'b00_00_101001; // Data processing immediate
  	         else            controlsD = 10'b00_00_001001; // Data processing register
  	  2'b01: if (InstrD[20]) controlsD = 10'b00_01_111000; // LDR
  	         else            controlsD = 10'b10_01_110100; // STR
  	  2'b10:                 controlsD = 10'b01_10_100010; // B
  	  default:               controlsD = 10'bx;          // unimplemented
  	endcase

  assign {RegSrcD, ImmSrcD, ALUSrcD, MemtoRegD, 
          RegWriteD, MemWriteD, BranchD, ALUOpD} = controlsD; 

  
   always_comb
     if (ALUOpD) begin                     // which Data-processing Instr?
      ALUControlD = InstrD[24:21];  // Always passes Instruction codes to ALUControlD
      FlagWriteD[1]   = InstrD[20];       // update N and Z Flags if S bit is set
      FlagWriteD[0]   = InstrD[20] & (ALUControlD == 4'b0100 | ALUControlD == 4'b0010 | ALUControlD == 4'b0011 | ALUControlD == 4'b0101 | 
      ALUControlD == 4'b0110 | ALUControlD == 4'b0111 | ALUControlD == 4'b1010 | ALUControlD == 4'b1011); // For ADD, SUB, RSB, ADC, SBC, RSC, CMP, CMN
    end else begin
      ALUControlD     = 4'b0100;      // perform addition for non-dataprocessing instr
      FlagWriteD      = 2'b00;        // don't update Flags
    end 
 

  assign PCSrcD       = (((InstrD[15:12] == 4'b1111) & RegWriteD) | BranchD);
  assign shiftTypeD   = (InstrD[27:25] == 3'b000 && shiftOpCode_E[4] == 0);
  assign RvsRSRtypeD  = (InstrD[27:25] == 3'b000 && shiftOpCode_E[4] == 1);

  // Execute stage
  // Added enables to E, M, and flush to W. Added for memory
  flopenrc  #(2) shifterregE (clk, reset, ~StallE, FlushE, {shiftTypeD, RvsRSRtypeD}, {shiftTypeE, RvsRSRtypeE});
  flopenrc #(7) flushedregsE(clk, reset, ~StallE, FlushE, 
                           {FlagWriteD, BranchD, MemWriteD, RegWriteD, PCSrcD, MemtoRegD},
                           {FlagWriteE, BranchE, MemWriteE, RegWriteE, PCSrcE, MemtoRegE});
  flopenr #(5)  regsE(clk, reset, ~StallE,
                    {ALUSrcD, ALUControlD},
                    {ALUSrcE, ALUControlE});
                    
  flopenr  #(4) condregE(clk, reset, ~StallE, InstrD[31:28], CondE);
  flopenr  #(4) flagsreg(clk, reset, ~StallE, FlagsNextE, FlagsE);

  flopenr  #(1) swapALUregsE(clk,reset, ~StallE, swapALUinputsD, swapALUinputsE);


  // write and Branch controls are conditional
  conditional Cond(CondE, FlagsE, ALUFlagsE, FlagWriteE, CondExE, FlagsNextE);
  assign BranchTakenE    = BranchE & CondExE;
  assign RegWritepreMuxE = RegWriteE & CondExE;
  assign MemWriteGatedE  = MemWriteE & CondExE;
  assign PCSrcGatedE     = PCSrcE & CondExE;
  
  // disable write to register for flag-setting instructions
  assign RegWriteGatedE = doNotWriteReg ? 1'b0 : RegWritepreMuxE; 
  
  // create carry-in bit for carry instructions to send to ALU 
  assign previousCflag = FlagsE[1];
  
  // Memory stage
  flopenr #(4) regsM(clk, reset, ~StallM,
                   {MemWriteGatedE, MemtoRegE, RegWriteGatedE, PCSrcGatedE},
                   {MemWriteM, MemtoRegM, RegWriteM, PCSrcM});
  
  // Writeback stage
  floprc #(3) regsW(clk, reset, FlushW,
                   {MemtoRegM, RegWriteM, PCSrcM},
                   {MemtoRegW, RegWriteW, PCSrcW});

  // Hazard Prediction
  assign PCWrPendingF = PCSrcD | PCSrcE | PCSrcM;

endmodule

module conditional(input  logic [3:0] Cond,
                   input  logic [3:0] Flags,
                   input  logic [3:0] ALUFlags,
                   input  logic [1:0] FlagsWrite,
                   output logic       CondEx,
                   output logic [3:0] FlagsNext);
  
  logic neg, zero, carry, overflow, ge;
  
  assign {neg, zero, carry, overflow} = Flags;
  assign ge = (neg == overflow);
                  
  always_comb
    case(Cond)
      4'b0000: CondEx = zero;             // EQ
      4'b0001: CondEx = ~zero;            // NE
      4'b0010: CondEx = carry;            // CS
      4'b0011: CondEx = ~carry;           // CC
      4'b0100: CondEx = neg;              // MI
      4'b0101: CondEx = ~neg;             // PL
      4'b0110: CondEx = overflow;         // VS
      4'b0111: CondEx = ~overflow;        // VC
      4'b1000: CondEx = carry & ~zero;    // HI
      4'b1001: CondEx = ~(carry & ~zero); // LS
      4'b1010: CondEx = ge;               // GE
      4'b1011: CondEx = ~ge;              // LT
      4'b1100: CondEx = ~zero & ge;       // GT
      4'b1101: CondEx = ~(~zero & ge);    // LE
      4'b1110: CondEx = 1'b1;             // Always
      default: CondEx = 1'bx;             // undefined
    endcase
    
  assign FlagsNext[3:2] = (FlagsWrite[1] & CondEx) ? ALUFlags[3:2] : Flags[3:2];
  assign FlagsNext[1:0] = (FlagsWrite[0] & CondEx) ? ALUFlags[1:0] : Flags[1:0];
endmodule