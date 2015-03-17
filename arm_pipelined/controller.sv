module controller(/// ------ From TOP ------
                    input  logic         clk, reset,

                  /// ------ To   TOP ------
                    output logic         MemtoRegM,

                  /// ------ To   Addresspath ------
                    output logic [11:0]  CPSR12_W,
                    output logic [6:0]   PCVectorAddressW,
                    output logic         Reg_usr_D,

                  /// ------ From Datapath ------
                    input  logic [31:0]  InstrD, ALUOutW,
                    input  logic [3:0]   ALUFlagsE, MultFlagsE,
                    input  logic [31:0]  ALUResultE, DefaultInstrD,
                    input  logic         ShifterCarryOutE,

                  /// ------ To   Datapath ------
                    output logic [1:0]   RegSrcD, ImmSrcD, 
                    output logic         ALUSrcE, BranchTakenE,
                    output logic [3:0]   ALUControlE,
                    output logic [2:0]   MultControlE,
                    output logic         MemWriteM,
                    output logic         MemtoRegW, PCSrcW, RegWriteW, CPSRtoRegW,
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
                    output logic [31:0]  uOpInstrD, PSR_W,
                    // Handle Multiplication stalls
                    output logic         MultStallD, MultStallE,
                    output  logic        WriteMultLoE, WriteMultLoKeptE,
                    // Shifter carry out to ALU
                    output  logic        ShifterCarryOut_cycle2E,

                  /// ------ From Hazard ------
                    input  logic         FlushE, StallE, StallM, FlushW, StallW, StalluOp, ExceptionSavePC,

                  /// ------ To   Hazard ------
                    output logic         RegWriteM, MemtoRegE, PCWrPendingF, SWI_E, SWI_D, SWI_M, SWI_W,

                  /// For BX instruction
                    output logic         BXInstrD, TFlagNextE,
                    input  logic         TFlagE,
                    // For exceptions
                    output logic         UndefinedInstr, SWI);

  logic [12:0] ControlsD;
  logic        CondExE, ALUOpD, ldrstrALUopD, ldrstrALUopE;
  logic [3:0]  ALUControlD, ByteMaskE;
  logic [4:0]  MSRmaskD, MSRmaskE, MSRmaskM, MSRmaskW;
  logic [2:0]  MultControlD;
  logic        ALUSrcD, MemtoRegD, CondExE2;
  logic        RegWriteD, RegWriteE, RegWriteGatedE;
  logic        MemWriteD, MemWriteE, MemWriteGatedE;
  logic        SetNextFlagsE, SetNextFlagsM, SetNextFlagsW;
  logic        BranchD, BranchE, HalfwordOffsetE, HalfwordOffsetM;
  logic        MicroOpCPSRrestoreD, DataRestoreCPSR_D;
  logic        TFlag, restoreCPSR_D, restoreCPSR_E, restoreCPSR_M, restoreCPSR_W;
  logic        CPSRtoRegD, CPSRtoReg0E, CPSRtoRegE, CPSRtoRegM;
  logic        PSRtypeD, PSRtypeE, PSRtypeM;
  logic        PSRtypeW, RegtoCPSRr_D, RegtoCPSRi_D;
  logic        RegtoCPSR_D, RegtoCPSR_E, RegtoCPSR_0E;
  logic [1:0]  FlagWriteD, FlagWriteE;
  logic        PCSrcD, PCSrcE, PCSrcM;
  logic [3:0]  FlagsNextE, FlagsNextM, FlagsNextW, CondE;
  logic        RegWritepreMuxE, RselectD, RSRselectD, LdrStrRtypeD;
  logic [1:0]  ResultSelectD;
  logic        ByteOrWordE, ByteOrWordM, LdrStr_HalfwordD, LdrStr_HalfwordE, HalfwordE, WriteHalfwordM;
  logic [1:0]  ByteOffsetE, ByteOffsetM;
  logic [1:0]  STR_cycleD;
  logic        doNotUpdateFlagD, LDMSTMforwardD, PrevRSRstateD, uOpRtypeLdrStrD;
  logic        undefM, undefW, undefD, undefE;
  logic        RegWriteControlE;
  logic [3:0]  FlagsM;
  logic [6:0]  PCVectorAddressE, PCVectorAddressM;
  logic [31:0] SPSRW, CPSRW;



  // ====================================================================================
  // =============================== Decode Stage =======================================
  // ====================================================================================

  micropsfsm uOpFSM(clk, reset, DefaultInstrD, InstrMuxD, doNotUpdateFlagD, uOpStallD, LDMSTMforwardD, Reg_usr_D, MicroOpCPSRrestoreD, STR_cycleD,
                            PrevRSRstateD, KeepVD, SignExtendD, noRotateD, uOpRtypeLdrStrD, RegFileRzD, uOpInstrD, StalluOp, ExceptionSavePC);


  assign LdrStr_HalfwordD = (InstrD[27:25] == 3'b000 & InstrD[7] & InstrD[4] & ~(InstrD[6:5] == 2'b00));
  assign RegtoCPSRr_D  = (InstrD[27:23] == 5'b00010 & InstrD[21:20] == 2'b10 & InstrD[15:4] == 12'hF00); // Move register to CPSR/SPSR (MSR instruction r type)
  assign RegtoCPSRi_D  = (InstrD[27:23] == 5'b00110 & InstrD[21:20] == 2'b10 & InstrD[15:12] == 4'hF); // Move immediate to CPSR/SPSR (MSR instruction I type)
  assign RegtoCPSR_D   = RegtoCPSRr_D | RegtoCPSRi_D;

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
                // "Move register to status register" not implemented
                else if ((InstrD[24:20] == 5'b10010) & (InstrD[19:4] == 16'hFFF1))
                      ControlsD = 13'b01_00_0000_10001; // BX
                // else if (InstrD[24:23] == 2'b10 & (&InstrD[21:16]) & ~(|InstrD[11:0]))  ControlsD = 13'b00_00_0  // MRS
                else  ControlsD = 13'b00_00_0010_01000; // Data processing register
              end
  	  2'b01: if (InstrD[25] & InstrD[4])           ControlsD = 13'b00_00_0000_00000;  // undefD = 1; Exception: UNDEFINED INSTRUCTION
             else if (InstrD[20] & ~InstrD[25])    ControlsD = 13'b00_01_1110_00010; // LDR, "I-type" 0xf0
             else if (InstrD[20] & InstrD[25])     ControlsD = 13'b00_01_0110_00010; // LDR, "R-Type" 0xb0
             else if (~InstrD[20] & ~InstrD[25])   ControlsD = 13'b10_01_1101_00010; // STR, "I-type"
             else if (~InstrD[20] & InstrD[25])    ControlsD = 13'b10_01_0101_00010; // STR, "R-type"
  	  2'b10:                 ControlsD = 13'b01_10_1000_10000; // B                           0x344
      2'b11:  if(InstrD[25:24] == 2'b11)         ControlsD = 13'b00_00_0000_00000; // SWI_D = 1;  Exception: SWI;  Unimplemented Coprocessor stuff 
  	  default:          ControlsD = 13'bx;      // unimplemented
  	endcase

  // Notes: ldrstrALUopD gives Loads and Stores the ability to choose alu function add or subtract.
  assign {RegSrcD, ImmSrcD,     // 2 bits each
          ALUSrcD, MemtoRegD, RegWriteD, MemWriteD, 
          BranchD, ALUOpD, MultSelectD, ldrstrALUopD, BXInstrD} = ControlsD; 

  
   always_comb
    // The following two are: LOAD STORE LOGIC
    if ((InstrD[27:26] == 2'b01 | LdrStr_HalfwordD) & InstrD[23]) begin// Load/Store (Rn + 12 bit offset)
      ALUControlD     = 4'b0100;  // "Add" operation
      FlagWriteD[1:0] = 2'b00;
    end else if ((InstrD[27:26] == 2'b01 | LdrStr_HalfwordD) & ~InstrD[23]) begin // Load/Store (Rn - 12 bit offset)
      ALUControlD     = 4'b0010;  // "Subtract" operation
      FlagWriteD[1:0] = 2'b00;

    // Checking for MSR instruction (move register/imm to CPSR/SPSR)
    end else if (RegtoCPSR_D) begin
      ALUControlD     = 4'b1101;      // perform MOV instruction so that it takes only input B
      FlagWriteD      = 2'b00;        // Ignore flags for now

    end else if (ALUOpD) begin                     // which Data-processing Instr?
      ALUControlD = InstrD[24:21];  // Always passes Instruction codes to ALUControlD
      FlagWriteD[1:0]   = {InstrD[20], InstrD[20]};       // update flags if S bit is set
    end else begin                    
      ALUControlD     = 4'b0100;      // perform addition for non-dataprocessing instr (branch...)
      FlagWriteD[1:0] = 2'b00;        // don't update Flags
    end 
 
  assign LdrStrRtypeD  = uOpRtypeLdrStrD | (LdrStr_HalfwordD & ~InstrD[20] & ~InstrD[22] & InstrD[11:8] == 4'b0); // Am I doing a R-type LDR/STR that may require reg access?
  assign MultControlD  = InstrD[23:21];   // Control for the Multiplier Block
  assign RselectD      = (InstrD[27:25] == 3'b000 & InstrD[4] == 0) | (LdrStrRtypeD & ~LDMSTMforwardD); // Is a R-type instruction or R-type load store
  assign RSRselectD    = (InstrD[27:25] == 3'b000 & ~InstrD[7] & InstrD[4] == 1) & ~(InstrD[27:4] == {8'b0001_0010, 12'hFFF, 4'b0001});
  assign CPSRtoRegD    = (InstrD[27:23] == 5'b00010 & InstrD[21:16] == 6'b001111 & ~(|InstrD[11:0])); // MRS instruction
  assign PCSrcD        = (((InstrD[15:12] == 4'b1111) & RegWriteD & ~RegFileRzD[2] & ~CPSRtoRegD & ~RegtoCPSR_D) | BranchD); // Chooses program counter either from DMEM or from ALU calculation
  assign PSRtypeD = (CPSRtoRegD & InstrD[22]);
  assign ResultSelectD = {MultSelectD, RSRselectD}; 
  assign LDRSTRshiftD  = LdrStrRtypeD;    // Tells the shifter (located in E-stage) whether its a LDR/STR type
  assign MSRmaskD      = (RegtoCPSR_D) ? {InstrD[22], InstrD[19:16]} : 5'b0; // 5 bits are {R, field_mask}
  assign DataRestoreCPSR_D = ALUOpD & ((InstrD[24:12] == 13'b1101_1_0000_1111) | (InstrD[24:20] == 5'b00101 & InstrD[15:12] == 4'hF)); // Instruction for restoring CPSR (MOV/SUB)
  assign restoreCPSR_D = DataRestoreCPSR_D | MicroOpCPSRrestoreD;
  // < Handling all Multiplication Stalls Decode>
  assign MultStallD = (InstrD[27:24] == 4'b0) & InstrD[23] & (InstrD[7:4] == 4'b1001) & ~InstrD[25] & ~WriteMultLoE; //For Long Multiply
  flopenrc #(1)  MultOutputSrc(clk, reset, ~StallE, FlushE, MultStallD, WriteMultLoE);
  flopenrc #(1)  MultOutputSrc1(clk, reset, ~StallE, FlushE, WriteMultLoE, WriteMultLoKeptE); //write the low register on the second cycle
  // -----

  // ----- Exception handling -----
  assign SWI_D = InstrD[27:24] == 4'hF;
  assign undefD = InstrD[27:25] == 3'b011 & InstrD[4];
  assign UndefinedInstr = undefD;
  assign SWI = SWI_D | SWI_E | SWI_M | SWI_W; // TODO: Create logic to determine SWI instr

  // ====================================================================================
  // =============================== Execute Stage ======================================
  // ====================================================================================
  // Added enables to E, M, and flush to W. Added for memory
  flopenrc  #(7) shifterregE (clk, reset, ~StallE, FlushE,  {RselectD, ResultSelectD, PrevRSRstateD, LDMSTMforwardD, LDRSTRshiftD, LdrStr_HalfwordD}, 
                                                            {RselectE, ResultSelectE, PrevRSRstateE, LDMSTMforwardE, LDRSTRshiftE, LdrStr_HalfwordE});
  flopenrc #(11) flushedregsE(clk, reset, ~StallE, FlushE, 
                           {FlagWriteD, BranchD, MemWriteD, RegWriteD, PCSrcD, MemtoRegD, ldrstrALUopD, BXInstrD, CPSRtoRegD, RegtoCPSR_D},
                           {FlagWriteE, BranchE, MemWriteE, RegWriteE, PCSrcE, MemtoRegE, ldrstrALUopE, BXInstrE, CPSRtoReg0E, RegtoCPSR_0E});

  flopenrc #(14)  regsE(clk, reset, ~StallE, FlushE,
                    {ALUSrcD, ALUControlD, MultControlD, PSRtypeD, MSRmaskD},
                    {ALUSrcE, ALUControlE, MultControlE, PSRtypeE, MSRmaskE});

  assign MultEnable = InstrE[7:4] == 4'b1001;

  // ALU Decoding
  flopenrc #(33) passALUinstr(clk, reset, ~StallE, FlushE,
                           {(ALUOpD|ldrstrALUopD), InstrD}, {ALUOpE, InstrE});
  alu_decoder alu_dec(ALUOpE, ALUControlE, FlagsE[1:0], BXInstrE, RegtoCPSR_E, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryE, DoNotWriteRegE);
                    
  flopenrc  #(4) condregE(clk, reset, ~StallE, FlushE, InstrD[31:28], CondE);
  flopenrc #(1)  keepV(clk, reset, ~StallE, FlushE, KeepVD, KeepVE);
  flopenrc #(1) shftrCarryOut(clk, reset, ~StallE, FlushE, ShifterCarryOutE, ShifterCarryOut_cycle2E);
  flopenrc #(1) restoreCPSR_DE(clk, reset, ~StallE, FlushE, restoreCPSR_D, restoreCPSR_E);
  
  mux2 #(1) updatetflag(PreviousTFlagE, TFlagE, BXInstrE, TFlagNextE); // THUMB FLAG (TFlagNextE) is no longer being used since we haven't implemented thumb mode!
  flopenrc #(2) undef_exception(clk, reset, ~StallE, FlushE, {undefD, SWI_D}, {undefE, SWI_E});


  assign  FlagsE = SetNextFlagsM ? FlagsNextM : FlagsNextW;
  assign  PreviousTFlagE = 1'b0; // = StatusRegisterE[5];
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
  assign SetNextFlagsE   = FlagWriteE[0] & CondExE;
  assign CPSRtoRegE      = CPSRtoReg0E & CondExE;
  assign RegtoCPSR_E     = RegtoCPSR_0E & CondExE;

  
  // disable write to register for flag-setting instructions
  assign RegWriteControlE = ~CPSRtoRegE & DoNotWriteRegE;
  assign RegWriteGatedE = RegWriteControlE ? 1'b0 : RegWritepreMuxE; 
  
  // < Handling all Multiplication Stalls Execute>
  assign MultStallE = (InstrD[27:24] == 4'b0) & InstrE[23] & (InstrE[7:4] == 4'b1001) & ~InstrD[25]; //For Long Multiply
  flopenrc #(1) longMultRegWritePt2(clk, reset, ~StallE, FlushE, CondExE, CondExE2);
  // -----


  // ====================================================================================
  // =============================== Memory Stage =======================================
  // ====================================================================================
  flopenr #(14) regsM(clk, reset, ~StallM,
                   {MemWriteGatedE, MemtoRegE, RegWriteGatedE, PCSrcGatedE, ByteMaskE, 
                                        ByteOrWordE, ByteOffsetE, WriteHalfwordE, HalfwordOffsetE, CPSRtoRegE},
                   {MemWriteM, MemtoRegM, RegWriteM, PCSrcM, ByteMaskM, 
                                        ByteOrWordM, ByteOffsetM, WriteHalfwordM, HalfwordOffsetM, CPSRtoRegM});
  // flopenr #(7) PCVectorEM(clk, reset, ~StallM, PCVectorAddressE, PCVectorAddressM);
  flopenr #(1) restoreCPSR_EM(clk, reset, ~StallM, restoreCPSR_E, restoreCPSR_M);
  flopenr #(2) undef_exceptionEM(clk, reset, ~StallM, {undefE, SWI_E}, {undefM, SWI_M});
  flopenr #(11) flagM(clk, reset, ~StallM, {FlagsNextE, SetNextFlagsE, PSRtypeE, MSRmaskE}, 
                                          {FlagsNextM, SetNextFlagsM, PSRtypeM, MSRmaskM});
  
  // ====================================================================================
  // =============================== Writeback Stage ====================================
  // ====================================================================================
  flopenrc #(9) regsW(clk, reset, ~StallW, FlushW, 
                   {MemtoRegM, RegWriteM, PCSrcM, ByteOrWordM, ByteOffsetM, WriteHalfwordM, HalfwordOffsetM, CPSRtoRegM},
                   {MemtoRegW, RegWriteW, PCSrcW, LoadLengthW, ByteOffsetW, WriteHalfwordW, HalfwordOffsetW, CPSRtoRegW});
  // flopenrc #(7) PCVectorMW(clk, reset, ~StallW, FlushW, PCVectorAddressM, PCVectorAddressW);
  flopenrc #(1) restoreCPSR_MW(clk, reset, ~StallW, FlushW, restoreCPSR_M, restoreCPSR_W);
  flopenrc #(2) undef_exceptionMW(clk, reset, ~StallW, FlushW, {undefM, SWI_M}, {undefW, SWI_W});
  flopenrc #(11) flagW(clk, reset, ~StallW, FlushW, {FlagsNextM, SetNextFlagsM, PSRtypeM, MSRmaskM}, 
                                                   {FlagsNextW, SetNextFlagsW, PSRtypeW, MSRmaskW});
  cpsr          cpsr_W(clk, reset, FlagsNextW, ALUOutW, MSRmaskW, {undefW, SWI_W, 4'b0}, restoreCPSR_W, ~StallW, CPSRW, SPSRW, PCVectorAddressW); // TO CHANGE
  // Hazard Prediction
  assign CPSR12_W = {CPSRW[31:28], CPSRW[7:0]};

  assign PCWrPendingF = PCSrcD | PCSrcE | PCSrcM;
  assign PSR_W = PSRtypeW ? SPSRW : CPSRW;
endmodule
