module controller (
  /// ------ From TOP ------
  input  logic        clk, reset             ,
  /// ------ To   TOP ------
  output logic        MemtoRegM, CoProc_WrEnM, CoProc_EnM,
  output logic [ 3:0] CoProc_AddrM, CoProc_CRmM,
  output logic [ 2:0] CoProc_Op2M            ,
  /// ------ To   Addresspath ------
  output logic [ 7:0] CPSR8_W                ,
  output logic [ 6:0] PCVectorAddress        ,
  output logic        Reg_usr_D              ,
  /// ------ From Datapath ------
  input  logic [31:0] InstrD, ALUOutW        ,
  input  logic [ 3:0] ALUFlagsE              ,
  input  logic [ 1:0] MultFlagsE             ,
  input  logic [31:0] ALUResultE, DefaultInstrD,
  input  logic        ShifterCarryOutE,
  /// ------ To   Datapath ------
  output logic [ 1:0] RegSrcD, ImmSrcD       ,
  output logic        ALUSrcE, BranchTakenE  ,
  output logic [ 3:0] ALUControlE            ,
  output logic [ 1:0] MultControlE           ,
  output logic        MemWriteM              ,
  output logic        MemtoRegW, PCSrcW, RegWriteW, CPSRtoRegW, ClzSelectE,
  // For ALU logic unit
  output logic [ 2:0] ALUOperationE,
  output logic        DoNotWriteRegE, InvertBE, ReverseInputsE, ALUCarryInE,
  output logic [ 3:0] FlagsE                 ,
  // For micro-op decoding
  output logic        RselectE, LDRSTRshiftE, LDMSTMforwardE,
  output logic [ 1:0] ResultSelectE          ,
  output logic [ 6:4] ShiftOpCode_E          ,
  output logic        MultSelectD, MultEnableE,
  output logic [31:0] InstrE                 ,
  // To handle memory load/store byte and halfword
  output logic [ 3:0] ByteMaskM              ,
  output logic        LoadLengthW, HalfwordOffsetW,
  output logic [ 1:0] ByteOffsetW            ,
  output logic        WriteByteE, StrHalfwordE, LdrHalfwordW, Ldr_SignBW, Ldr_SignHW,
  // For micro-op decoding
  output logic        noRotateD, InstrMuxD, uOpStallD,
  output logic [ 3:0] RegFileRzD             ,
  output logic [31:0] uOpInstrD, PSR_W       ,
  /// ------ From Hazard ------
  input  logic        StallD, FlushD, FlushE, StallE, StallM, FlushM, FlushW, StallW, StalluOp,
  /// ------ To   Hazard ------
  output logic        RegWriteM, MemtoRegE, PCWrPendingF,
  output logic        RegtoCPSR, CPSRtoReg, CoProc_En,
  output logic        RegtoCPSR_EMW, CPSRtoReg_EMW, CoProc_En_EMW,
  output logic        ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW, ExceptionStallD,
  /// For BX instruction
  output logic        BXInstrD, TFlagNextE   ,
  input  logic        TFlagE                 ,
  // For exceptions
  input  logic        PrefetchAbort, DataAbort, IRQ, FIQ,
  output logic      PCInSelect);

  logic [12:0] ControlsD          ;
  logic        CondExE, ALUOpD, ldrstrALUopD, ldrstrALUopE;
  logic [ 3:0] ALUControlD, ByteMaskE;
  logic [ 4:0] MSRmaskD, MSRmaskE, MSRmaskM, MSRmaskW;
  logic [ 1:0] MultControlD       ;
  logic        MultEnableD        ;
  logic        ALUSrcD, MemtoRegD, CondExE2;
  logic        RegWriteD, RegWriteE, RegWriteGatedE;
  logic        MemWriteD, MemWriteE, MemWriteGatedE;
  logic        SetNextFlagsE, SetNextFlagsM, SetNextFlagsW;
  logic        BranchD, BranchE, HalfwordOffsetE, HalfwordOffsetM;
  logic        MicroOpCPSRrestoreD, DataRestoreCPSR_D;
  logic        TFlag, restoreCPSR_D, restoreCPSR_E, restoreCPSR_M, restoreCPSR_W;
  logic        CPSRtoRegD, CPSRtoReg0E, CPSRtoRegE, CPSRtoRegM;
  logic        PSRtypeD, PSRtypeE, PSRtypeM;
  logic [2:0]  CVUpdateE;
  logic        PSRtypeW, RegtoCPSRr_D, RegtoCPSRi_D;
  logic        RegtoCPSR_D, RegtoCPSR_0E, RegtoCPSR_E, RegtoCPSR_M, RegtoCPSR_W;
  logic [ 1:0] FlagWriteD, FlagWriteE;
  logic        PCSrcD, PCSrcE, PCSrcM;
  logic [ 3:0] FlagsNext0E, FlagsNextE, FlagsNextM, FlagsNext0M, FlagsNextW, FlagsNext0W, CondE;
  logic        RegWritepreMuxE, RselectD, RSRselectD, LdrStrRtypeD;
  logic [ 1:0] ResultSelectD      ;
  logic        ByteOrWordE, ByteOrWordM, LdrStr_HalfD, LdrStr_HalfE, LdrHalfwordE, LdrHalfwordM;
  logic        Ldr_SignBD, Ldr_SignHD, Ldr_SignBE, Ldr_SignHE, Ldr_SignBM, Ldr_SignHM;
  logic [ 1:0] ByteOffsetE, ByteOffsetM;
  logic        LDMSTMforwardD, PrevRSRstateD, uOpRtypeLdrStrD;
  logic        RegWriteKillE   ;
  logic        CoProc_MCR_D, CoProc_MRC_D, CoProc_FlagUpd_D, CoProc_WrEnD, CoProc_EnD;
  logic        CoProc_FlagUpd_E, CoProc_FlagUpd_M, CoProc_FlagUpd_W;
  logic        CoProc_WrEnE, CoProc_EnE, MCR_D;
  logic [ 3:0] FlagsOutE, FlagsM;
  logic [31:0] SPSRW, CPSRW;
  logic        nonFlushedInstr, PipelineClearD, PipelineClearM, PipelineClearE, PipelineClearF;
  logic        SWI_0E, SWI_E, SWI_D;
  logic        undefD, undefE;
  logic        IRQAssert, FIQAssert, DataAbortAssert;
  logic        ExceptionResetMicrop, ExceptionSavePC;

  /***** Brief Description *******
  * Created by Ivan Wong for Clay Wolkin 2014-2015
  * Controller contains all control signals (no predefined width)
  * Datapath should have only 32-bit signals
  * Micro-OpFSM is huge
  * Decode to Writeback Stage
  ******************************/

  // ====================================================================================================
  // ======================================= Decode Stage ===============================================
  // ====================================================================================================

  // Flush writeback signals when we flushD. 
  flopenrc #(1) flushWBD(clk, reset | ExceptionResetMicrop, ~StallD, FlushD, 1'b1, nonFlushedInstr);
  flopenr  #(1) pipelineclearDflop(clk, reset, ~StallD, PipelineClearF, PipelineClearD); // see exception_handler.sv


  micropsfsm uOpFSM(clk, reset, DefaultInstrD, InstrMuxD, uOpStallD, LDMSTMforwardD, Reg_usr_D, MicroOpCPSRrestoreD, PrevRSRstateD, 
    KeepVD, KeepZD, KeepCD, AddCarryD, AddZeroD, noRotateD, uOpRtypeLdrStrD, MultControlD, RegFileRzD, uOpInstrD, StalluOp, ExceptionSavePC);

  // === Control Logic for Datapath ===
  always_comb
    casex(InstrD[27:26])
      // If 2'b00, then this is data processing instruction  SD 10/1/2015: Dangerous! Not all with this code are DP.
      2'b00: if (InstrD[25]) ControlsD = 13'b00_00_1010_01000; // Data processing immediate   0x52
        else if (InstrD[7:4] == 4'b1001 & ~InstrD[24])     ControlsD = 13'b00_00_0010_01100; // Multiply
        else if (InstrD[22] & InstrD[20] & LdrStr_HalfD)   ControlsD = 13'b00_11_1110_00010;  // LDH I-type
        else if (~InstrD[22] & InstrD[20] & LdrStr_HalfD)  ControlsD = 13'b00_11_0110_00010;  // LDH R-type
        else if (InstrD[22] & ~InstrD[20] & LdrStr_HalfD)  ControlsD = 13'b10_11_1101_00010;  // STH I-type
        else if (~InstrD[22] & ~InstrD[20] & LdrStr_HalfD) ControlsD = 13'b10_11_0101_00010;  // STH R-type
        // "Move register to status register" not implemented
        else if ((InstrD[24:20] == 5'b10010) & (InstrD[19:4] == 16'hFFF1))
          ControlsD = 13'b01_00_0000_10001; // BX
        // else if (InstrD[24:23] == 2'b10 & (&InstrD[21:16]) & ~(|InstrD[11:0]))  ControlsD = 13'b00_00_0  // MRS
        else if (InstrD[27:20] == 8'b00010110 & InstrD[7:4] == 4'b0001) ControlsD = 13'b00_00_0010_00000;  // CLZ. Exactly like CMN RSR, but S=0
        else  ControlsD = 13'b00_00_0010_01000; // Data processing register
      2'b01: if (InstrD[25] & InstrD[4])      ControlsD = 13'b00_00_0000_00000;  // Exception: UNDEFINED INSTRUCTION
        else if (InstrD[20] & ~InstrD[25])    ControlsD = 13'b00_01_1110_00010; // LDR, "I-type" 0xf0
        else if (InstrD[20] & InstrD[25])     ControlsD = 13'b00_01_0110_00010; // LDR, "R-Type" 0xb0
        else if (~InstrD[20] & ~InstrD[25])   ControlsD = 13'b10_01_1001_00010; // STR, "I-type"
        else if (~InstrD[20] & InstrD[25])    ControlsD = 13'b10_01_0001_00010; // STR, "R-type"
      2'b10:  ControlsD = 13'b01_10_1000_10000; // B                           0x344
      2'b11: if(InstrD[25:24] == 2'b11)                  ControlsD = 13'b00_00_0000_00000; // Exception: SWI
        else if (CoProc_MCR_D)                           ControlsD = 13'b10_00_0000_00000; // MCR (move to coprocessor from register)
        else if (CoProc_MRC_D & InstrD[15:12] == 4'hF)   ControlsD = 13'b10_00_0000_00000; // MRC (R15 update flags only)
        else if (CoProc_MRC_D)                           ControlsD = 13'b10_00_0010_00000; // MRC (move to register from coprocessor)
      default:          ControlsD = 13'bx;      // unimplemented
    endcase

  // Notes: ldrstrALUopD gives Loads and Stores the ability to choose alu function add or subtract.
  assign {RegSrcD, ImmSrcD,     // 2 bits each
    ALUSrcD, MemtoRegD, RegWriteD, MemWriteD,
    BranchD, ALUOpD, MultSelectD, ldrstrALUopD, BXInstrD} = ControlsD & {5'b11_11_1, {3{nonFlushedInstr}}, 5'b11111}; // And here to kill writeback in flush.
  // === END ===

  // === Controlling the ALU ===
  // ALUControlD is the opcode of the data processing instruction we want to perform.
  always_comb
    // The following two are: LOAD STORE LOGIC
    if ((InstrD[27:26] == 2'b01 | LdrStr_HalfD) & InstrD[23]) begin// Load/Store (Rn + 12 bit offset)
      ALUControlD     = 4'b0100;  // "Add" operation
      FlagWriteD[1:0] = 2'b00;
    end else if ((InstrD[27:26] == 2'b01 | LdrStr_HalfD) & ~InstrD[23]) begin // Load/Store (Rn - 12 bit offset)
      ALUControlD     = 4'b0010;  // "Subtract" operation
      FlagWriteD[1:0] = 2'b00;
      // Checking for MSR instruction (move register/imm to CPSR/SPSR)
    end else if (RegtoCPSR_D) begin
      ALUControlD     = 4'b1101;      // perform MOV instruction so that it takes only input B
      FlagWriteD      = 2'b00;        // Ignore flags for now
    end else if (ALUOpD) begin                     // which Data-processing Instr?
      ALUControlD = InstrD[24:21];  // Always passes Instruction codes to ALUControlD
      FlagWriteD[1:0]   = {{InstrD[20] & ~DataRestoreCPSR_D}, {InstrD[20] & ~DataRestoreCPSR_D} & ~KeepVD};       // update flags if S bit is set. Don't update CV in multiply
    end else begin
      ALUControlD     = 4'b0100;      // perform addition for non-dataprocessing instr (branch...)
      FlagWriteD[1:0] = 2'b00;        // don't update Flags
    end
  // === END ===

  // === LOAD/STORE ===
  assign LdrStr_HalfD = (InstrD[27:25] == 3'b000 & InstrD[7:4] == 4'b1011) | Ldr_SignBD | Ldr_SignHD;
  assign Ldr_SignBD   = (InstrD[27:25] == 3'b000 & InstrD[20] & InstrD[7:4] == 4'b1101);
  assign Ldr_SignHD   = (InstrD[27:25] == 3'b000 & InstrD[20] & InstrD[7:4] == 4'b1111);
  assign LdrStrRtypeD = uOpRtypeLdrStrD | ((LdrStr_HalfD | Ldr_SignBD | Ldr_SignHD)
    & ~InstrD[22] & InstrD[11:8] == 4'b0); // Am I doing a R-type LDR/STR that may require reg access?
  assign LDRSTRshiftD = LdrStrRtypeD;    // Tells the shifter (located in E-stage) whether its a LDR/STR type
  // === END ===

  // === BASIC DATAPATH SELECTION
  assign RselectD      = (InstrD[27:25] == 3'b000 & InstrD[4] == 0) | (LdrStrRtypeD & ~LDMSTMforwardD); // Is a R-type instruction or R-type load store
  //                      DP RSR-type                 rest of bits: These look like RSR, but are not. c.f. note 2, page A3-3
  assign RSRselectD    = (InstrD[27:25] == 3'b000 & ~InstrD[7] & InstrD[4] == 1) & ~(InstrD[24:23] == 2'b10 & ~InstrD[20]);
  assign PCSrcD        = (((InstrD[15:12] == 4'b1111) & RegWriteD & ~RegFileRzD[2] & ~CPSRtoRegD & ~RegtoCPSR_D) | BranchD); // Chooses program counter either from DMEM or from ALU calculation
  assign PSRtypeD      = (CPSRtoRegD & InstrD[22]);
  assign ResultSelectD = {MultSelectD, RSRselectD};
  // CLZ: looks like MVN but S not set. Actually in the misc. instructions group. 
  // We need to check all these things to extract only this case. 
  // Check all of 7:4 in case we implement E variant later. Really could do just (~7 & 4)
  assign ClzSelectE = InstrE[27:20] == 8'b00010110 & InstrE[7:4]==4'b0001;
  // === END ===

  // === Handling all Multiplication Stalls Decode ===
  // assign MultControlD  = InstrD[23:21];   // Control for the Multiplier Block
  // assign MultStallD = (InstrD[27:24] == 4'b0) & InstrD[23] & (InstrD[7:4] == 4'b1001) & ~InstrD[25] & ~WriteMultLoE; //For Long Multiply
  assign MultEnableD = InstrD[7:4] == 4'b1001 && InstrD[27:24] == 4'b0;

  // flopenrc #(1)  MultOutputSrc(clk, reset, ~StallE, FlushE, MultStallD, WriteMultLoE);
  // flopenrc #(1)  MultOutputSrc1(clk, reset, ~StallE, FlushE, WriteMultLoE, WriteMultLoKeptE); //write the low register on the second cycle
  // === END ===

  // === MSR or MRS (CPSR) INSTRUCTIONS ===
  assign RegtoCPSRr_D      = (InstrD[27:23] == 5'b00010 & InstrD[21:20] == 2'b10 & InstrD[15:4] == 12'hF00); // Move register to CPSR/SPSR (MSR instruction r type)
  assign RegtoCPSRi_D      = (InstrD[27:23] == 5'b00110 & InstrD[21:20] == 2'b10 & InstrD[15:12] == 4'hF); // Move immediate to CPSR/SPSR (MSR instruction I type)
  assign RegtoCPSR_D       = RegtoCPSRr_D | RegtoCPSRi_D;
  assign RegtoCPSR         = RegtoCPSR_D | RegtoCPSR_E | RegtoCPSR_M | RegtoCPSR_W;
  assign RegtoCPSR_EMW     = RegtoCPSR_E | RegtoCPSR_M | RegtoCPSR_W; // necessary to flushE in the correct place
  assign CPSRtoRegD        = (InstrD[27:23] == 5'b00010 & InstrD[21:16] == 6'b001111 & ~(|InstrD[11:0])); // MRS instruction
  assign CPSRtoReg         = CPSRtoRegD | CPSRtoRegE | CPSRtoRegM | CPSRtoRegW;
  assign CPSRtoReg_EMW     = CPSRtoRegE | CPSRtoRegM | CPSRtoRegW; // necessary to flushE in the correct place
  assign MSRmaskD          = (RegtoCPSR_D) ? {InstrD[22], InstrD[19:16]} : 5'b0; // 5 bits are {R, field_mask}
  assign DataRestoreCPSR_D = ALUOpD & ((InstrD[24:12] == 13'b1101_1_0000_1111) | (InstrD[24:20] == 5'b00101 & InstrD[15:12] == 4'hF)); // Instruction for restoring CPSR (MOV/SUB)
  assign restoreCPSR_D     = DataRestoreCPSR_D | MicroOpCPSRrestoreD;
  // === END ===

  // === COPROCESSOR INSTRUCTIONS ===
  assign CoProc_MRC_D     = (InstrD[27:24] == 4'b1110 & InstrD[20] & InstrD[4]); // MRC instruction
  assign CoProc_MCR_D     = InstrD[27:24] == 4'b1110 & ~InstrD[20] & InstrD[4]; // MCR instruction
  assign CoProc_FlagUpd_D = CoProc_MRC_D & InstrD[15:12] == 4'hF; // MRC instruction that only updates flags
  assign CoProc_EnD       = CoProc_MRC_D | CoProc_MCR_D;
  assign CoProc_WrEnD     = CoProc_MCR_D;
  assign CoProc_En        = CoProc_EnD | CoProc_EnE | CoProc_EnM | CoProc_FlagUpd_W;
  assign CoProc_En_EMW    = CoProc_EnE | CoProc_EnM | CoProc_FlagUpd_W; // necessary to flushE in the correct place
  // === END ===

  // === EXCEPTION HANDLING ===
  assign SWI_D          = InstrD[27:24] == 4'hF;
  assign undefD         = InstrD[27:25] == 3'b011 & InstrD[4];
  // === END ===

  // ====================================================================================================
  // ======================================= Execute Stage ==============================================
  // ====================================================================================================

  flopenrc #(1) MultZeroPrev(clk, reset, ~StallE & KeepZE, FlushE, FlagsOutE[2], ZFlagKeptE);
  flopenrc #(1) MlalCarryPrev(clk, reset, ~StallE & KeepCE, FlushE, FlagsOutE[1], CFlagKeptE);
  flopenrc #(5)  keepV(clk, reset, ~StallE, FlushE, {KeepVD, KeepZD, KeepCD, AddCarryD, AddZeroD}, {KeepVE, KeepZE, KeepCE, AddCarryE, AddZeroE});
  flopenrc #(1) shftrCarryOut(clk, reset, ~StallE, FlushE, ShifterCarryOutE, ShifterCarryOut_cycle2E);
  flopenrc #(1) restoreCPSR_DE(clk, reset, ~StallE, FlushE, restoreCPSR_D, restoreCPSR_E);
  flopenrc #(1) longMultRegWritePt2(clk, reset, ~StallE, FlushE, CondExE, CondExE2);
  flopenrc #(2) undef_exception(clk, reset, ~StallE, FlushE, {undefD, SWI_D}, {undefE, SWI_0E});
  flopenrc #(3) shiftOpCodeE(clk, reset, ~StallE, FlushE, InstrD[6:4],ShiftOpCode_E[6:4]);
  flopenrc #(3) CoprocE(clk, reset, ~StallE, FlushE, {CoProc_FlagUpd_D, CoProc_EnD, CoProc_WrEnD}, {CoProc_FlagUpd_E, CoProc_EnE, CoProc_WrEnE});
  flopenrc #(4) condregE(clk, reset, ~StallE, FlushE, InstrD[31:28], CondE);
  flopenrc  #(9) shifterregE (clk, reset, ~StallE, FlushE,  {RselectD, ResultSelectD, PrevRSRstateD, LDMSTMforwardD, LDRSTRshiftD, LdrStr_HalfD, Ldr_SignHD, Ldr_SignBD},
                                                            {RselectE, ResultSelectE, PrevRSRstateE, LDMSTMforwardE, LDRSTRshiftE, LdrStr_HalfE, Ldr_SignHE, Ldr_SignBE});
  flopenrc #(11) flushedregsE(clk, reset, ~StallE, FlushE,
    {FlagWriteD, BranchD, MemWriteD, RegWriteD, PCSrcD, MemtoRegD, ldrstrALUopD, BXInstrD, CPSRtoRegD,  RegtoCPSR_D},
    {FlagWriteE, BranchE, MemWriteE, RegWriteE, PCSrcE, MemtoRegE, ldrstrALUopE, BXInstrE, CPSRtoReg0E, RegtoCPSR_0E});
  flopenrc #(14)  regsE(clk, reset, ~StallE, FlushE, {ALUSrcD, ALUControlD, MultControlD, MultEnableD, PSRtypeD, MSRmaskD},
                                                     {ALUSrcE, ALUControlE, MultControlE, MultEnableE, PSRtypeE, MSRmaskE});
  flopenrc #(33) passALUinstr(clk, reset, ~StallE, FlushE, {(ALUOpD|ldrstrALUopD), InstrD}, {ALUOpE, InstrE});
  flopenr  #(1) pipelineclearEflop(clk, reset, ~StallE, PipelineClearD, PipelineClearE); // see exception_handler.sv


  // < Handling all Multiplication Stalls Execute>
  // assign MultStallE = (InstrD[27:24] == 4'b0) & InstrE[23] & (InstrE[7:4] == 4'b1001) & ~InstrD[25]; //For Long Multiply
  // assign MultEnable = InstrE[7:4] == 4'b1001;

  // === ALU Decoding ===
  alu_decoder alu_dec(ALUOpE, ALUControlE, FlagsE[1:0], AddCarryE, CFlagKeptE, BXInstrE, RegtoCPSR_E, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryInE, DoNotWriteRegE);
  // === END ===

  // TODO: Add Thumb mode
  mux2 #(1) updatetflag(PreviousTFlagE, TFlagE, BXInstrE, TFlagNextE); // THUMB FLAG (TFlagNextE) is no longer being used since we haven't implemented thumb mode!
  assign PreviousTFlagE = 1'b0; // = StatusRegisterE[5];

  /*** BRIEF ***
  * These bits select which bit of memory to mask for Load/Store Byte, Word and Halfword operations
  *************/
  assign ByteOrWordE     = (InstrE[27:26] == 2'b01 & InstrE[22]) | Ldr_SignBE; // 0 if Word, 1 if byte
  assign StrHalfwordE    = LdrStr_HalfE & ~InstrE[20];
  assign ByteOffsetE     = ALUResultE[1:0];
  assign HalfwordOffsetE = (LdrStr_HalfE & ALUResultE[1]); // to verify if it is offset by 2
  assign WriteByteE      = (InstrE[27:26] == 2'b01) & InstrE[22] & ~InstrE[20];
  assign LdrHalfwordE    = LdrStr_HalfE & InstrE[20] & InstrE[5];
  memory_mask MemMask(ByteOrWordE, StrHalfwordE, HalfwordOffsetE, ALUResultE[1:0], ByteMaskE);


  // === CONDITIONAL EXECUTION CHECKING ===
  assign FlagsE     = SetNextFlagsM ? FlagsNextM : (SetNextFlagsW ? FlagsNextW : CPSRW[31:28]);
  assign FlagsNextE = (RegtoCPSR_E & InstrE[19]) ? ALUResultE[31:28] : FlagsNext0E; // If flags field is set by MSR, update flags now!
  conditional Cond(CondE, FlagsE, ALUFlagsE, MultFlagsE, FlagWriteE, CondExE, FlagsNext0E, FlagsOutE, ResultSelectE[1], ShifterCarryOut_cycle2E, ShifterCarryOutE, PrevRSRstateE, CVUpdateE, MultControlE[0], ZFlagKeptE, AddZeroE, KeepVE);
  assign BranchTakenE    = BranchE & CondExE;
  assign RegWritepreMuxE = (RegWriteE & CondExE);
  assign MemWriteGatedE  = MemWriteE & CondExE;
  assign PCSrcGatedE     = PCSrcE & CondExE;
  assign SetNextFlagsE   = (FlagWriteE != 2'b00) & CondExE;
  assign CPSRtoRegE      = CPSRtoReg0E & CondExE;
  assign RegtoCPSR_E     = RegtoCPSR_0E & CondExE;
  assign SWI_E           = SWI_0E & CondExE;
  // disable write to register for flag-setting instructions
  assign RegWriteKillE = ~CPSRtoRegE & DoNotWriteRegE;
  assign RegWriteGatedE   = RegWriteKillE ? 1'b0 : RegWritepreMuxE;
  // === END ===


 exception_handler exh(clk, reset, undefE, SWI_E, PrefetchAbort, DataAbort, IRQ, FIQ, 
                       PipelineClearD, PipelineClearM,
                       ~CPSRW[7], ~CPSRW[6],
                       IRQAssert, FIQAssert, DataAbortAssert, 
                       PipelineClearF, ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW, ExceptionStallD,
                       PCVectorAddress,
                       ExceptionResetMicrop, ExceptionSavePC, PCInSelect);


  // ====================================================================================================
  // ======================================= Memory Stage ===============================================
  // ====================================================================================================

  flopenrc #(2) msr_mrs_M(clk, reset, ~StallM, FlushM, {restoreCPSR_E, RegtoCPSR_E},
                                              {restoreCPSR_M, RegtoCPSR_M});
  flopenrc #(11) flagM(clk, reset, ~StallM, FlushM, {FlagsNextE,  SetNextFlagsE, PSRtypeE, MSRmaskE},
                                           {FlagsNext0M, SetNextFlagsM, PSRtypeM, MSRmaskM});
  flopenrc #(14) CoProc_M(clk, reset, ~StallM, FlushM,
    {InstrE[19:16], InstrE[7:5], InstrE[3:0], (CoProc_WrEnE & CondExE), (CoProc_EnE & CondExE), (CoProc_FlagUpd_E & CondExE)},
    {CoProc_AddrM,  CoProc_Op2M, CoProc_CRmM, CoProc_WrEnM,             CoProc_EnM,             CoProc_FlagUpd_M});
  flopenrc #(16) regsM(clk, reset, ~StallM, FlushM,
    {MemWriteGatedE, MemtoRegE, RegWriteGatedE, PCSrcGatedE, ByteMaskE, ByteOrWordE, ByteOffsetE, LdrHalfwordE, Ldr_SignBE, Ldr_SignHE, HalfwordOffsetE, CPSRtoRegE},
    {MemWriteM,      MemtoRegM, RegWriteM,      PCSrcM,      ByteMaskM, ByteOrWordM, ByteOffsetM, LdrHalfwordM, Ldr_SignBM, Ldr_SignHM, HalfwordOffsetM, CPSRtoRegM});
  flopenr  #(1) pipelineclearMflop(clk, reset, ~StallM, PipelineClearE, PipelineClearM); // see exception_handler.sv

  mux2 #(4)  flagM_mux(FlagsNext0M, CPSRW[31:28], CoProc_FlagUpd_W, FlagsNextM);

  // ====================================================================================================
  // ======================================= Writeback Stage ============================================
  // ====================================================================================================

  flopenrc #(1) CoProc_W(clk, reset, ~StallW, FlushW, {CoProc_FlagUpd_M}, {CoProc_FlagUpd_W});
  flopenrc #(2) msr_mrs_W(clk, reset, ~StallW, FlushW, {restoreCPSR_M, RegtoCPSR_M}, {restoreCPSR_W, RegtoCPSR_W});
  flopenrc #(11) regsW(clk, reset, ~StallW, FlushW,
    {MemtoRegM, RegWriteM, PCSrcM, ByteOrWordM, ByteOffsetM, LdrHalfwordM, Ldr_SignBM, Ldr_SignHM, HalfwordOffsetM, CPSRtoRegM},
    {MemtoRegW, RegWriteW, PCSrcW, LoadLengthW, ByteOffsetW, LdrHalfwordW, Ldr_SignBW, Ldr_SignHW, HalfwordOffsetW, CPSRtoRegW});
  flopenrc #(11) flagW(clk, reset, ~StallW, FlushW, {FlagsNextM, SetNextFlagsM, PSRtypeM, MSRmaskM},
                                                    {FlagsNextW, SetNextFlagsW, PSRtypeW, MSRmaskW});

  // === CPSR / SPSR relevant info ===
  cpsr          cpsr_W(clk, reset, FlagsNextW, ALUOutW, MSRmaskW, {undefE, SWI_E, PrefetchAbort, DataAbortAssert, IRQAssert, FIQAssert}, restoreCPSR_W, ~StallW, CoProc_FlagUpd_W,
    CPSRW, SPSRW);
  assign CPSR8_W = {CPSRW[7:0]}; // Forward to Decode stage
  assign PSR_W   = PSRtypeW ? SPSRW : CPSRW;
  // === END ===

  assign PCWrPendingF = PCSrcD | PCSrcE | PCSrcM;

endmodule
