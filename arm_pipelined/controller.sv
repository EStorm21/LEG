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
                  input  logic         FlushE, StallE, StallM, FlushW, StallW,
                  output logic         MemtoRegM,
                  output logic  [2:0]   ALUOperationE, CVUpdateE,
                  output logic          DoNotWriteRegE, InvertBE, ReverseInputsE, ALUCarryE,
                  output logic  [3:0]   PreviousFlagsE,
                  // For micro-op decoding
                  input logic          doNotUpdateFlagD, PrevRSRstateD, LDMSTMforwardD, ldrstrRtypeD,
                  output logic         RselectE, PrevRSRstateE, LDRSTRshiftE, LDMSTMforwardE, 
                  output logic  [1:0]  ResultSelectE,
                  input  logic  [3:0]  RegFileRzD, 
                  output logic  [6:4]  ShiftOpCode_E,
                  output logic         MultSelectD, MultEnable,
                  output logic [31:0]  InstrE,
                  input  logic [31:0]  ALUResultE,
                  output logic [3:0]   ByteMaskM,
                  output logic         LoadLengthW, HalfwordOffsetW,
                  output logic [1:0]   ByteOffsetW,
                  output logic         WriteByteE, WriteHalfwordE, WriteHalfwordW,
                  // For BX instruction
                  output logic         BXInstrD, TFlagNextE,
                  input  logic         TFlagE);

  logic [12:0] ControlsD;
  logic        CondExE, ALUOpD, ldrstrALUopD, ldrstrALUopE;
  logic [3:0]  ALUControlD, ByteMaskE;
  logic [2:0]  MultControlD;
  logic        ALUSrcD, MemtoRegD;
  logic        RegWriteD, RegWriteE, RegWriteGatedE;
  logic        MemWriteD, MemWriteE, MemWriteGatedE;
  logic        BranchD, BranchE, HalfwordOffsetE, HalfwordOffsetM;
  logic        TFlag;
  logic [1:0]  FlagWriteD, FlagWriteE;
  logic        PCSrcD, PCSrcE, PCSrcM;
  logic [3:0]  FlagsNextE, CondE;
  logic        RegWritepreMuxE, RselectD, RSRselectD;
  logic [1:0]  ResultSelectD;
  logic [6:4]  ShiftOpCode_D;
  logic [11:0] StateRegisterDataE;
  logic        ByteOrWordE, ByteOrWordM, LdrStr_HalfwordD, LdrStr_HalfwordE, HalfwordE, WriteHalfwordM;
  logic [1:0]  ByteOffsetE, ByteOffsetM;
 
  assign ShiftOpCode_D = InstrD[6:4];


  // ====================================================================================
  // =============================== Decode Stage =======================================
  // ====================================================================================
  assign LdrStr_HalfwordD = (InstrD[27:25] == 3'b000 & InstrD[7] & InstrD[4] & ~(InstrD[6:5] == 2'b00));

  always_comb
  	casex(InstrD[27:26]) 
      // If 2'b00, then this is data processing instruction
  	  2'b00: if (InstrD[25]) ControlsD = 13'b00_00_1010_01000; // Data processing immediate   0x52
  	         else begin   // (~InstrD[25])      
                if (InstrD[7:4] == 4'b1001)       ControlsD = 13'b00_00_0010_01100; // Multiply                    0x13
                             
                else if (InstrD[22] & InstrD[20] & LdrStr_HalfwordD)   ControlsD = 13'b00_11_1110_00010;  // LDH I-type
                else if (~InstrD[22] & InstrD[20] & LdrStr_HalfwordD)  ControlsD = 13'b00_11_0110_00010;  // LDH R-type
                else if (InstrD[22] & ~InstrD[20] & LdrStr_HalfwordD)  ControlsD = 13'b10_11_1001_00010;  // STH I-type
                else if (~InstrD[22] & ~InstrD[20] & LdrStr_HalfwordD) ControlsD = 13'b10_11_0001_00010;  // STH R-type

                else begin
                     if ((InstrD[24:21] == 4'b1001) & (InstrD[15:12] == 4'b1111))
                              ControlsD = 13'b01_00_0000_10001; // BX
                     else     ControlsD = 13'b00_00_0010_01000; // Data processing register
                     end
                  end
  	  2'b01: if (InstrD[20] & ~InstrD[25])       ControlsD = 13'b00_01_1110_00010; // LDR, "I-type" 0xf0
             else if (InstrD[20] & InstrD[25])   ControlsD = 13'b00_01_0110_00010; // LDR, "R-Type" 0xb0
             else if (~InstrD[20] & ~InstrD[25])   ControlsD = 13'b10_01_1001_00010; // STR, "I-type"
             else if (~InstrD[20] & InstrD[25])    ControlsD = 13'b10_01_0001_00010; // STR, "R-type"
  	  2'b10:                 ControlsD = 13'b01_10_1000_10000; // B                           0x344
  	  default:               ControlsD = 13'bx;          // unimplemented
  	endcase

  /*
   * Notes: ldrstrALUopD gives Loads and Stores the ability to choose alu function add or subtract.
   */
  assign {RegSrcD, ImmSrcD,     // 2 bits each
          ALUSrcD, MemtoRegD, RegWriteD, MemWriteD, 
          BranchD, ALUOpD, MultSelectD, ldrstrALUopD, BXInstrD} = ControlsD; 

  
   always_comb
     if (ALUOpD) begin                     // which Data-processing Instr?
      ALUControlD = InstrD[24:21];  // Always passes Instruction codes to ALUControlD
      FlagWriteD[1:0]   = {InstrD[20], InstrD[20]};       // update flags if S bit is set

    // LOAD STORE LOGIC
    end else if ((InstrD[27:26] == 2'b01 | LdrStr_HalfwordD) & InstrD[23]) begin// Load/Store (Rn + 12 bit offset)
      ALUControlD     = 4'b0100;  // "Add" operation
      FlagWriteD[1:0] = 2'b00;
    end else if ((InstrD[27:26] == 2'b01 | LdrStr_HalfwordD) & ~InstrD[23]) begin // Load/Store (Rn - 12 bit offset)
      ALUControlD     = 4'b0010;  // "Subtract" operation
      FlagWriteD[1:0] = 2'b00;
    end else begin                    
      ALUControlD     = 4'b0100;      // perform addition for non-dataprocessing instr (branch...)
      FlagWriteD[1:0] = 2'b00;        // don't update Flags
    end 
 
  assign MultControlD  = InstrD[23:21];
  assign PCSrcD        = (((InstrD[15:12] == 4'b1111) & RegWriteD & ~RegFileRzD[2]) | BranchD);
  assign RselectD      = (InstrD[27:25] == 3'b000 & ShiftOpCode_D[4] == 0) | (ldrstrRtypeD & ~LDMSTMforwardD) ;
  assign RSRselectD    = (InstrD[27:25] == 3'b000 & ~InstrD[7] & ShiftOpCode_D[4] == 1) & ~(InstrD[27:4] == {8'b0001_0010, 12'hFFF, 4'b0001});
  assign ResultSelectD = {MultSelectD, RSRselectD};
  assign LDRSTRshiftD  = ldrstrRtypeD;


  // ====================================================================================
  // =============================== Execute Stage ======================================
  // ====================================================================================
  // Added enables to E, M, and flush to W. Added for memory
  flopenrc  #(7) shifterregE (clk, reset, ~StallE, FlushE,  {RselectD, ResultSelectD, PrevRSRstateD, LDMSTMforwardD, LDRSTRshiftD, LdrStr_HalfwordD}, 
                                                            {RselectE, ResultSelectE, PrevRSRstateE, LDMSTMforwardE, LDRSTRshiftE, LdrStr_HalfwordE});
  flopenrc #(9) flushedregsE(clk, reset, ~StallE, FlushE, 
                           {FlagWriteD, BranchD, MemWriteD, RegWriteD, PCSrcD, MemtoRegD, ldrstrALUopD, BXInstrD},
                           {FlagWriteE, BranchE, MemWriteE, RegWriteE, PCSrcE, MemtoRegE, ldrstrALUopE, BXInstrE});

  flopenrc #(8)  regsE(clk, reset, ~StallE, FlushE,
                    {ALUSrcD, ALUControlD, MultControlD},
                    {ALUSrcE, ALUControlE, MultControlE});

  assign MultEnable = InstrE[7:4] == 4'b1001;
  // ALU Decoding
  flopenrc #(33) passALUinstr(clk, reset, ~StallE, FlushE,
                           {(ALUOpD|ldrstrALUopD), InstrD}, {ALUOpE, InstrE});
  alu_decoder alu_dec(ALUOpE, ALUControlE, PreviousFlagsE[1:0], BXInstrE, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryE, DoNotWriteRegE);
                    
  flopenrc  #(4) condregE(clk, reset, ~StallE, FlushE, InstrD[31:28], CondE);
  
  mux2 #(1) updatetflag(PreviousTFlagE, TFlagE, BXInstrE, TFlagNextE);
  cpsr          cpsrE(clk, reset, FlagsNextE, 6'b0, 5'b0, 2'b0, TFlagNextE, ~StallE, 1'b0, 1'b0, StateRegisterDataE);
  assign  PreviousFlagsE = StateRegisterDataE[11:8];
  assign  PreviousTFlagE = StateRegisterDataE[5];
  flopenrc  #(3) shiftOpCodeE(clk, reset, ~StallE, FlushE, ShiftOpCode_D[6:4],ShiftOpCode_E[6:4]);
  conditional Cond(CondE, PreviousFlagsE, FlagsE, FlagWriteE, CondExE, FlagsNextE);

  /*** BRIEF ***
   * These bits select which bit of memory to mask for Load/Store Byte, Word and Halfword operations
   *************/
  assign ByteOrWordE = (InstrE[27:26] == 2'b01 & InstrE[22]);
  assign HalfwordE = (LdrStr_HalfwordE & InstrD[5]);
  assign ByteOffsetE = ALUResultE[1:0];
  assign HalfwordOffsetE = (LdrStr_HalfwordE & ALUResultE[1]);
  assign WriteByteE  = (InstrE[27:26] == 2'b01) & InstrE[22] & ~InstrE[20];
  assign WriteHalfwordE = (LdrStr_HalfwordE & ~InstrE[20]);
  memory_mask MemMask(ByteOrWordE, HalfwordE, HalfwordOffsetE, ALUResultE[1:0], ByteMaskE);


  assign BranchTakenE    = BranchE & CondExE;
  assign RegWritepreMuxE = RegWriteE & CondExE;
  assign MemWriteGatedE  = MemWriteE & CondExE;
  assign PCSrcGatedE     = PCSrcE & CondExE;
  
  // disable write to register for flag-setting instructions
  assign RegWriteGatedE = DoNotWriteRegE ? 1'b0 : RegWritepreMuxE; 
  
  // ====================================================================================
  // =============================== Memory Stage =======================================
  // ====================================================================================
  flopenr #(13) regsM(clk, reset, ~StallM,
                   {MemWriteGatedE, MemtoRegE, RegWriteGatedE, PCSrcGatedE, ByteMaskE, 
                                        ByteOrWordE, ByteOffsetE, WriteHalfwordE, HalfwordOffsetE},
                   {MemWriteM, MemtoRegM, RegWriteM, PCSrcM, ByteMaskM, 
                                        ByteOrWordM, ByteOffsetM, WriteHalfwordM, HalfwordOffsetM});
  
  // ====================================================================================
  // =============================== Writeback Stage ====================================
  // ====================================================================================
  flopenrc #(8) regsW(clk, reset, ~StallW, FlushW, 
                   {MemtoRegM, RegWriteM, PCSrcM, ByteOrWordM, ByteOffsetM, WriteHalfwordM, HalfwordOffsetM},
                   {MemtoRegW, RegWriteW, PCSrcW, LoadLengthW, ByteOffsetW, WriteHalfwordW, HalfwordOffsetW});

  // Hazard Prediction
  assign PCWrPendingF = PCSrcD | PCSrcE | PCSrcM;

endmodule
