module controller(/// ------ From TOP ------
                    input  logic         clk, reset,

                  /// ------ To   TOP ------
                    output logic         MemtoRegM,

                  /// ------ To   Addresspath ------
                    output logic [11:0]  StatusRegisterE,

                  /// ------ From Datapath ------
                    input  logic [31:0]  InstrD,
                    input  logic [3:0]   ALUFlagsE, MultFlagsE,
                    input  logic [31:0]  ALUResultE, DefaultInstrD,
                    input  logic         ShifterCarryOutE,

                  /// ------ To   Datapath ------
                    output logic [1:0]   RegSrcD, ImmSrcD, 
                    output logic         ALUSrcE, BranchTakenE,
                    output logic [3:0]   ALUControlE,
                    output logic [2:0]   MultControlE,
                    output logic         MemWriteM,
                    output logic         MemtoRegW, PCSrcW, RegWriteW,
                    // For ALU logic unit
                    output logic  [2:0]  ALUOperationE, CVUpdateE,
                    output logic         DoNotWriteRegE, InvertBE, ReverseInputsE, ALUCarryE,
                    output logic  [3:0]  FlagsE,
                    // For micro-op decoding
                    output logic         RselectE, PrevRSRstateE, LDRSTRshiftE, LDMSTMforwardE, 
                    output logic  [1:0]  ResultSelectE,
                    output logic  [6:4]  ShiftOpCode_E,
                    output logic         MultSelectD, MultEnable,
                    output logic [31:0]  InstrE,
                    // To handle memory load/store byte and halfword
                    output logic [3:0]   ByteMaskM,
                    output logic         LoadLengthW, HalfwordOffsetW,
                    output logic [1:0]   ByteOffsetW,
                    output logic         WriteByteE, WriteHalfwordE, WriteHalfwordW,
                    // For micro-op decoding
                    output logic         KeepVE, SignExtendD, noRotateD, InstrMuxD, uOpStallD,
                    output logic [3:0]   RegFileRzD,
                    output logic [31:0]  uOpInstrD,
                    // Handle Multiplication stalls
                    output logic         MultStallD, MultStallE,
                    output  logic        WriteMultLoE, WriteMultLoKeptE,
                    // Shifter carry out to ALU
                    output  logic        ShifterCarryOut_cycle2E,

                  /// ------ From Hazard ------
                    input  logic         FlushE, StallE, StallM, FlushW, StallW, StalluOp,

                  /// ------ To   Hazard ------
                    output logic         RegWriteM, MemtoRegE, PCWrPendingF,

                  /// For BX instruction
                    output logic         BXInstrD, TFlagNextE,
                    input  logic         TFlagE);

  logic [12:0] ControlsD;
  logic        CondExE, ALUOpD, ldrstrALUopD, ldrstrALUopE;
  logic [3:0]  ALUControlD, ByteMaskE;
  logic [2:0]  MultControlD;
  logic        ALUSrcD, MemtoRegD, CondExE2;
  logic        RegWriteD, RegWriteE, RegWriteGatedE;
  logic        MemWriteD, MemWriteE, MemWriteGatedE;
  logic        BranchD, BranchE, HalfwordOffsetE, HalfwordOffsetM;
  logic        TFlag, restoreCPSR_D, restoreCPSR_E;
  logic [1:0]  FlagWriteD, FlagWriteE;
  logic        PCSrcD, PCSrcE, PCSrcM;
  logic [3:0]  FlagsNextE, CondE;
  logic        RegWritepreMuxE, RselectD, RSRselectD, LdrStrRtypeD;
  logic [1:0]  ResultSelectD;
  logic        ByteOrWordE, ByteOrWordM, LdrStr_HalfwordD, LdrStr_HalfwordE, HalfwordE, WriteHalfwordM;
  logic [1:0]  ByteOffsetE, ByteOffsetM;
  logic [1:0]  STR_cycleD;
  logic        doNotUpdateFlagD, LDMSTMforwardD, PrevRSRstateD, uOpRtypeLdrStrD, undefInstrD;
  logic [3:0]  FlagsM;
  logic [6:0]  PCVectorAddressE, PCVectorAddressM, PCVectorAddressW;



  // ====================================================================================
  // =============================== Decode Stage =======================================
  // ====================================================================================

  micropsfsm uOpFSM(clk, reset, DefaultInstrD, InstrMuxD, doNotUpdateFlagD, uOpStallD, LDMSTMforwardD, STR_cycleD,
                            PrevRSRstateD, KeepVD, SignExtendD, noRotateD, uOpRtypeLdrStrD, RegFileRzD, uOpInstrD, StalluOp);


  assign LdrStr_HalfwordD = (InstrD[27:25] == 3'b000 & InstrD[7] & InstrD[4] & ~(InstrD[6:5] == 2'b00));

  always_comb
  	casex(InstrD[27:26]) 
      // If 2'b00, then this is data processing instruction
  	  2'b00: if (InstrD[25]) ControlsD = 13'b00_00_1010_01000; // Data processing immediate   0x52
  	         else begin   // (~InstrD[25])      
                if (InstrD[7:4] == 4'b1001 & ~InstrD[24])       ControlsD = 13'b00_00_0010_01100; // Multiply                             
                else if (InstrD[22] & InstrD[20] & LdrStr_HalfwordD)   ControlsD = 13'b00_11_1110_00010;  // LDH I-type
                else if (~InstrD[22] & InstrD[20] & LdrStr_HalfwordD)  ControlsD = 13'b00_11_0110_00010;  // LDH R-type
                else if (InstrD[22] & ~InstrD[20] & LdrStr_HalfwordD)  ControlsD = 13'b10_11_1101_00010;  // STH I-type
                else if (~InstrD[22] & ~InstrD[20] & LdrStr_HalfwordD) ControlsD = 13'b10_11_0101_00010;  // STH R-type
                // "Move from status register" not implemented
                // "Move register to status register" not implemented
                else if ((InstrD[24:21] == 4'b1001) & (InstrD[19:4] == 16'hFFF1))
                              ControlsD = 13'b01_00_0000_10001; // BX
                else  ControlsD = 13'b00_00_0010_01000; // Data processing register
              end
  	  2'b01: if (InstrD[25] & InstrD[4])           undefInstrD = 1;
             else if (InstrD[20] & ~InstrD[25])    ControlsD = 13'b00_01_1110_00010; // LDR, "I-type" 0xf0
             else if (InstrD[20] & InstrD[25])     ControlsD = 13'b00_01_0110_00010; // LDR, "R-Type" 0xb0
             else if (~InstrD[20] & ~InstrD[25])   ControlsD = 13'b10_01_1101_00010; // STR, "I-type"
             else if (~InstrD[20] & InstrD[25])    ControlsD = 13'b10_01_0101_00010; // STR, "R-type"
  	  2'b10:                 ControlsD = 13'b01_10_1000_10000; // B                           0x344
  	  default:               begin undefInstrD = 1; ControlsD = 13'bx; end         // unimplemented
  	endcase

  // Notes: ldrstrALUopD gives Loads and Stores the ability to choose alu function add or subtract.
  assign {RegSrcD, ImmSrcD,     // 2 bits each
          ALUSrcD, MemtoRegD, RegWriteD, MemWriteD, 
          BranchD, ALUOpD, MultSelectD, ldrstrALUopD, BXInstrD} = ControlsD; 

  
   always_comb
    if (ALUOpD) begin                     // which Data-processing Instr?
      ALUControlD = InstrD[24:21];  // Always passes Instruction codes to ALUControlD
      FlagWriteD[1:0]   = {InstrD[20], InstrD[20]};       // update flags if S bit is set
    // The following is all: LOAD STORE LOGIC
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
 
  assign LdrStrRtypeD  = uOpRtypeLdrStrD | (LdrStr_HalfwordD & ~InstrD[20] & ~InstrD[22] & InstrD[11:8] == 4'b0); // Am I doing a R-type LDR/STR that may require reg access?
  assign MultControlD  = InstrD[23:21];   // Control for the Multiplier Block
  assign PCSrcD        = (((InstrD[15:12] == 4'b1111) & RegWriteD & ~RegFileRzD[2]) | BranchD); // Chooses program counter either from DMEM or from ALU calculation
  assign RselectD      = (InstrD[27:25] == 3'b000 & InstrD[4] == 0) | (LdrStrRtypeD & ~LDMSTMforwardD); // Is a R-type instruction or R-type load store
  assign RSRselectD    = (InstrD[27:25] == 3'b000 & ~InstrD[7] & InstrD[4] == 1) & ~(InstrD[27:4] == {8'b0001_0010, 12'hFFF, 4'b0001});
  assign ResultSelectD = {MultSelectD, RSRselectD}; 
  assign LDRSTRshiftD  = LdrStrRtypeD;    // Tells the shifter (located in E-stage) whether its a LDR/STR type
  assign restoreCPSR_D = ALUOpD & (ALUControlD == 4'b1101) & InstrD[20] & (InstrD[15:12] == 4'b1111); // Instruction for restoring CPSR (MOV/SUB)

  // < Handling all Multiplication Stalls Decode>
  assign MultStallD = (InstrD[27:24] == 4'b0) & InstrD[23] & (InstrD[7:4] == 4'b1001) & ~InstrD[25] & ~WriteMultLoE; //For Long Multiply
  flopenrc #(1)  MultOutputSrc(clk, reset, ~StallE, FlushE, MultStallD, WriteMultLoE);
  flopenrc #(1)  MultOutputSrc1(clk, reset, ~StallE, FlushE, WriteMultLoE, WriteMultLoKeptE); //write the low register on the second cycle
  // -----

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
  alu_decoder alu_dec(ALUOpE, ALUControlE, FlagsE[1:0], BXInstrE, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryE, DoNotWriteRegE);
                    
  flopenrc  #(4) condregE(clk, reset, ~StallE, FlushE, InstrD[31:28], CondE);
  flopenrc #(1)  keepV(clk, reset, ~StallE, FlushE, KeepVD, KeepVE);
  flopenrc #(1) shftrCarryOut(clk, reset, ~StallE, FlushE, ShifterCarryOutE, ShifterCarryOut_cycle2E);
  flopenrc #(1) restoreCPSR(clk, reset, ~StallE, FlushE, restoreCPSR_D, restoreCPSR_E);
  
  mux2 #(1) updatetflag(PreviousTFlagE, TFlagE, BXInstrE, TFlagNextE); // THUMB FLAG (TFlagNextE) is no longer being used since we haven't implemented thumb mode!

  cpsr          cpsrE(clk, reset, restoreCPSR_E, FlagsNextE, 6'b0, 5'b0, ~StallE, 1'b0, 1'b0, StatusRegisterE, PCVectorAddressE);

  assign  FlagsE = StatusRegisterE[11:8];
  assign  PreviousTFlagE = StatusRegisterE[5];
  flopenrc  #(3) shiftOpCodeE(clk, reset, ~StallE, FlushE, InstrD[6:4],ShiftOpCode_E[6:4]);
  conditional Cond(CondE, FlagsE, ALUFlagsE, MultFlagsE, FlagWriteE, CondExE, FlagsNextE, ResultSelectE[1]);

  /*** BRIEF ***
   * These bits select which bit of memory to mask for Load/Store Byte, Word and Halfword operations
   *************/
  assign ByteOrWordE = (InstrE[27:26] == 2'b01 & InstrE[22]);
  assign HalfwordE = (LdrStr_HalfwordE & InstrE[5]);
  assign ByteOffsetE = ALUResultE[1:0];
  assign HalfwordOffsetE = (LdrStr_HalfwordE & ALUResultE[1]);
  assign WriteByteE  = (InstrE[27:26] == 2'b01) & InstrE[22] & ~InstrE[20];
  assign WriteHalfwordE = (LdrStr_HalfwordE);
  memory_mask MemMask(ByteOrWordE, HalfwordE, HalfwordOffsetE, ALUResultE[1:0], ByteMaskE);


  assign BranchTakenE    = BranchE & CondExE;
  assign RegWritepreMuxE = (RegWriteE & CondExE) | (RegWriteE & CondExE2 & WriteMultLoKeptE & MultStallE);
  assign MemWriteGatedE  = MemWriteE & CondExE;
  assign PCSrcGatedE     = PCSrcE & CondExE;
  
  // disable write to register for flag-setting instructions
  assign RegWriteGatedE = DoNotWriteRegE ? 1'b0 : RegWritepreMuxE; 
  
  // < Handling all Multiplication Stalls Execute>
  assign MultStallE = (InstrD[27:24] == 4'b0) & InstrE[23] & (InstrE[7:4] == 4'b1001) & ~InstrD[25]; //For Long Multiply
  flopenrc #(1) longMultRegWritePt2(clk, reset, ~StallE, FlushE, CondExE, CondExE2);
  // -----


  // ====================================================================================
  // =============================== Memory Stage =======================================
  // ====================================================================================
  flopenr #(13) regsM(clk, reset, ~StallM,
                   {MemWriteGatedE, MemtoRegE, RegWriteGatedE, PCSrcGatedE, ByteMaskE, 
                                        ByteOrWordE, ByteOffsetE, WriteHalfwordE, HalfwordOffsetE},
                   {MemWriteM, MemtoRegM, RegWriteM, PCSrcM, ByteMaskM, 
                                        ByteOrWordM, ByteOffsetM, WriteHalfwordM, HalfwordOffsetM});
  flopenr #(7) PCVectorEM(clk, reset, ~StallM, PCVectorAddressE, PCVectorAddressM);
  
  // ====================================================================================
  // =============================== Writeback Stage ====================================
  // ====================================================================================
  flopenrc #(8) regsW(clk, reset, ~StallW, FlushW, 
                   {MemtoRegM, RegWriteM, PCSrcM, ByteOrWordM, ByteOffsetM, WriteHalfwordM, HalfwordOffsetM},
                   {MemtoRegW, RegWriteW, PCSrcW, LoadLengthW, ByteOffsetW, WriteHalfwordW, HalfwordOffsetW});
  flopenrc #(7) PCVectorMW(clk, reset, ~StallM, FlushW, PCVectorAddressM, PCVectorAddressW);

  // Hazard Prediction
  assign PCWrPendingF = PCSrcD | PCSrcE | PCSrcM;

endmodule
