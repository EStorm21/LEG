module controller (
  /// ------ From TOP ------
  input  logic        clk, reset             ,
  /// ------ To   TOP ------
  output logic        MemtoRegM, CoProc_WrEnM, CoProc_EnM,
  output logic [ 3:0] CoProc_AddrM, CoProc_CRmM,
  output logic [ 2:0] CoProc_Op2M            ,
  /// ------ To   Addresspath ------
  output logic [ 7:0] CPSR8_W                ,
  output logic        Reg_usr_D              ,
  /// ------ From Datapath ------
  input  logic [31:0] InstrD, ALUOutW        ,
  input  logic [ 3:0] ALUFlagsE              ,
  input  logic [31:0] ALUResultE, DefaultInstrD,
  input  logic        ZeroRotateD,
  input  logic [1:0]  Rs_D, // for multiply partial products
  input  logic        sh_a0E, sh_a31E, sh_rot0E, sh_rot31E,
  input  logic [7:0]  SrcA70E,
  /// ------ To   Datapath ------
  output logic [ 1:0] RegSrcD, ImmSrcD       ,
  output logic        ALUSrcE, ALUSrcD, BranchTakenE,
  output logic [ 3:0] ALUControlE            ,
  output logic        MemWriteM              ,
  output logic        MemtoRegW, PCSrcW, RegWriteW, CPSRtoRegW, ClzSelectE,
  output logic [ 4:0] shamtE,
  output logic [ 4:0] shctl_5E,
  output logic [ 7:0] shctl_8E,
  output logic        rrx_inE, longshiftE, leftE, shiftE, arithE,
  // For ALU logic unit
  output logic [ 2:0] ALUOperationE,
  output logic        DoNotWriteRegE, InvertBE, ReverseInputsE, ALUCarryInE,
  output logic [ 3:0] FlagsE                 ,
  // For micro-op decoding
  output logic        RselectE, LDMSTMforwardD, LDMSTMforwardE,
  output logic        RSRselectE          ,
  output logic [ 6:4] ShiftOpCode_E          ,
  output logic        MultSelectD,
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
  // For exceptions
  input  logic        PrefetchAbort, DataAbort, IRQ, FIQ,
  output logic  [1:0]    PCInSelect,
  output logic        ExceptionSavePC,
  output logic  [2:0] VectorPCnextF);

  logic [11:0] ControlsD          ;
  logic        CondExE, ALUOpD, ldrstrALUopD, ldrstrALUopE;
  logic [ 3:0] ALUControlD, ByteMaskE;
  logic [ 4:0] MSRmaskD, MSRmaskE, MSRmaskM, MSRmaskW;
  logic        MemtoRegD, MemtoReg_0E;
  logic        RegWriteD, RegWriteE, RegWriteGatedE;
  logic        MemWriteD, MemWriteE, MemWriteGatedE;
  logic        SetNextFlagsE, SetNextFlagsM, SetNextFlagsW;
  logic        BranchD, BranchE, HalfwordOffsetE, HalfwordOffsetM;
  logic        MicroOpCPSRrestoreD, DataRestoreCPSR_D;
  logic        restoreCPSR_D, restoreCPSR_E, restoreCPSR_M, restoreCPSR_W;
  logic        CPSRtoRegD, CPSRtoReg0E, CPSRtoRegE, CPSRtoRegM;
  logic        PSRtypeD, PSRtypeE, PSRtypeM;
  logic [2:0]  CVUpdateE;
  logic        PSRtypeW, RegtoCPSRr_D, RegtoCPSRi_D;
  logic        RegtoCPSR_D, RegtoCPSR_0E, RegtoCPSR_E, RegtoCPSR_M, RegtoCPSR_W;
  logic [ 1:0] FlagWriteD, FlagWriteE;
  logic        PCSrcD, PCSrcE, PCSrcM;
  logic [ 3:0] FlagsNext0E, FlagsNextE, FlagsNextM, FlagsNext0M, FlagsNextW, CondE;
  logic        RegWritepreMuxE, RselectD, RSRselectD, LdrStrRtypeD;
  logic        ByteOrWordE, ByteOrWordM, LdrStr_HalfD, LdrStr_HalfE, LdrHalfwordE, LdrHalfwordM;
  logic        Ldr_SignBD, Ldr_SignHD, Ldr_SignBE, Ldr_SignHE, Ldr_SignBM, Ldr_SignHM;
  logic [ 1:0] ByteOffsetE, ByteOffsetM;
  logic        PrevCycleCarryD, uOpRtypeLdrStrD;
  logic        RegWriteKillE   ;
  logic        CoProc_MCR_D, CoProc_MRC_D, CoProc_FlagUpd_D, CoProc_WrEnD, CoProc_EnD;
  logic        CoProc_FlagUpd_E, CoProc_FlagUpd_M, CoProc_FlagUpd_W;
  logic        CoProc_WrEnE, CoProc_EnE;
  logic        BXInstrD, BXInstrE;
  logic [ 3:0] FlagsOutE;
  logic [31:0] SPSRW, CPSRW;
  logic        nonFlushedInstrD, nonFlushedInstrE, nonFlushedInstrM, nonFlushedInstrW;
  logic        SWI_0E, SWI_E, SWI_D, SWI_W;
  logic        undefD, undefE, undefW;
  logic        PrefetchAbortW;
  logic        IRQAssert, FIQAssert, DataAbortAssert;
  logic        ExceptionResetMicrop, interrupting;
  logic        CondExM, CondExW;
  logic        CondAndD;
  logic        bkpt_D, bkpt_E;
  logic  [1:0] multCarryInD, multCarryInE;
  logic        ALUCarryIn_0E;
  logic        multPrevZFlagD, multPrevZFlagE;
  logic        ZeroRotateE, LDRSTRshiftD, LDRSTRshiftE;

  // For debugging
  logic        validDdebug, validEdebug, validMdebug, validWdebug;
  logic        validDdebug_pre;
  logic        uOpProgEdebug, uOpProgMdebug, uOpProgWdebug;
  logic        advancingEdebug, advancingWdebug;

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

  // Flush writeback signals when we flushD, unless we are actually doing a micro op. See usage of this below.
  flopenrc #(1) flushWBD(clk, reset | ExceptionResetMicrop, ~StallD, FlushD, 1'b1, nonFlushedInstrD);


  micropsfsm uOpFSM(clk, reset, DefaultInstrD, InstrMuxD, uOpStallD, LDMSTMforwardD, Reg_usr_D, MicroOpCPSRrestoreD, PrevCycleCarryD, 
    KeepVD, noRotateD, uOpRtypeLdrStrD, RegFileRzD, uOpInstrD, StalluOp, ExceptionSavePC, interrupting, Rs_D, multCarryInD, multPrevZFlagD); 
  assign MultSelectD = 0;

  // === Control Logic for Datapath ===
  always_comb
    casex(InstrD[27:26])
      // If 2'b00, then this is data processing instruction  SD 10/1/2015: Dangerous! Not all with this code are DP. We should catch them with undef though.
      2'b00: if (InstrD[25])                                ControlsD = 13'b00_00_1010_0100; // Data processing immediate   0x52
        else if (InstrD[7:4] == 4'b1001 & ~InstrD[24])      ControlsD = 13'b00_00_0010_0100; // Multiply
        else if (InstrD[22] & InstrD[20] & LdrStr_HalfD)    ControlsD = 13'b00_11_1110_0010;  // LDH I-type
        else if (~InstrD[22] & InstrD[20] & LdrStr_HalfD)   ControlsD = 13'b00_11_0110_0010;  // LDH R-type
        else if (InstrD[22] & ~InstrD[20] & LdrStr_HalfD)   ControlsD = 13'b10_11_1101_0010;  // STH I-type
        else if (~InstrD[22] & ~InstrD[20] & LdrStr_HalfD)  ControlsD = 13'b10_11_0101_0010;  // STH R-type
        else if ((InstrD[24:20] == 5'b10010) & (InstrD[19:4] == 16'hFFF1))
                                                            ControlsD = 13'b01_00_0000_1001; // BX
        // else if (InstrD[24:23] == 2'b10 & (&InstrD[21:16]) & ~(|InstrD[11:0]))  ControlsD = 13'b00_00_0  // MRS
        else if (InstrD[27:20] == 8'b00010110 & InstrD[7:4] == 4'b0001) 
                                                            ControlsD = 13'b00_00_0010_0000;  // CLZ. Exactly like CMN RSR, but S=0
        else                                                ControlsD = 13'b00_00_0010_0100; // Data processing register
      2'b01: if (InstrD[25] & InstrD[4])                    ControlsD = 13'b00_00_0000_0000;  // Exception: UNDEFINED INSTRUCTION
        else if (InstrD[20] & ~InstrD[25])                  ControlsD = 13'b00_01_1110_0010; // LDR, "I-type" 0xf0
        else if (InstrD[20] & InstrD[25])                   ControlsD = 13'b00_01_0110_0010; // LDR, "R-Type" 0xb0
        else if (~InstrD[20] & ~InstrD[25])                 ControlsD = 13'b10_01_1001_0010; // STR, "I-type"
        else if (~InstrD[20] & InstrD[25])                  ControlsD = 13'b10_01_0001_0010; // STR, "R-type"
      2'b10:                                                ControlsD = 13'b01_10_1000_1000; // B                         
      2'b11: if(InstrD[25:24] == 2'b11)                     ControlsD = 13'b00_00_0000_0000; // Exception: SWI
        else if (CoProc_MCR_D)                              ControlsD = 13'b10_00_0000_0000; // MCR (move to coprocessor from register)
        else if (CoProc_MRC_D & InstrD[15:12] == 4'hF)      ControlsD = 13'b10_00_0000_0000; // MRC (R15 update flags only)
        else if (CoProc_MRC_D)                              ControlsD = 13'b10_00_0010_0000; // MRC (move to register from coprocessor)
      default:                                              ControlsD = 13'bx;      // unimplemented
    endcase

  // Notes: ldrstrALUopD gives Loads and Stores the ability to choose alu function add or subtract.
  assign {RegSrcD, ImmSrcD,     // 2 bits each
    ALUSrcD, MemtoRegD, RegWriteD, MemWriteD,
    BranchD, ALUOpD, ldrstrALUopD, BXInstrD} = ControlsD & {5'b11_11_1, {3{nonFlushedInstrD | InstrMuxD}}, 4'b1111}; // And here to kill writeback in flush.
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
      FlagWriteD[1:0]   = {{InstrD[20] & ~DataRestoreCPSR_D}, {InstrD[20] & ~DataRestoreCPSR_D & ~KeepVD}};       // update flags if S bit is set. Don't update CV in multiply
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
  // SD 1/21/3016: may be able to remove the complex logic if we determine it is not necesary for correct shifter operation. 
  //               Then can simplify interaction with clzselect.
  //                      DP RSR-type                 rest of bits: These look like RSR, but are not. c.f. note 2, page A3-3
  assign RSRselectD    = (InstrD[27:25] == 3'b000 & ~InstrD[7] & InstrD[4]) & ~(InstrD[24:23] == 2'b10 & ~InstrD[20]);
  // SD 11/19/2015 Should this really be | BranchD? This has the effect of stalling everything when there may be a branch
  assign PCSrcD        = (((InstrD[15:12] == 4'b1111) & RegWriteD & ~RegFileRzD[2] & ~CPSRtoRegD & ~RegtoCPSR_D) | BranchD); // Chooses program counter either from DMEM or from ALU calculation
  assign PSRtypeD      = (CPSRtoRegD & InstrD[22]);
  // CLZ: looks like MVN but S not set. Actually in the misc. instructions group. 
  // We need to check all these things to extract only this case. 
  // Check all of 7:4 in case we implement E variant later. Really could do just (~7 & 4)
  assign ClzSelectE = InstrE[27:20] == 8'b00010110 & InstrE[7:4]==4'b0001;
  // === END ===

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
  assign CondAndD       = &InstrD[31:28];
  assign undefD         = (InstrD[27:25] == 3'b011 & InstrD[4]) 
                        | (CondAndD & ( InstrD[27:24] == 4'b1111 | InstrD[27:25] == 3'b100 | ~InstrD[27])) 
                        | (InstrD[27:23] == 5'b00110 & InstrD[21:20] == 2'b00);
  assign bkpt_D         = (InstrD[27:20] == 8'b00010010) & (InstrD[7:4] == 4'b0111);
  // === END ===

  // === DEBUGGING ===
  flopenrc #(1) validdreg(clk, reset, ~StallD, FlushD, 1'h1, validDdebug_pre);
  assign validDdebug = validDdebug_pre || IRQAssert;
  // === END ===

  // ====================================================================================================
  // ======================================= Execute Stage ==============================================
  // ====================================================================================================

  flopenrc #(1) shftrCarryOut(clk, reset, ~StallE, FlushE, ShifterCarryOutE, ShifterCarryOut_cycle2E);
  flopenrc #(1) aluCarryOut(  clk, reset, ~StallE, FlushE, ALUFlagsE[1],     ALUCarryOut_cycle2E);
  flopenrc #(2) multcarryin(  clk, reset, ~StallE, FlushE, multCarryInD,     multCarryInE);
  flopenrc #(1) multprevzflop(clk, reset, ~StallE, FlushE, multPrevZFlagD,   multPrevZFlagE);
  // pass Z if multPrevZFlag, otherwise pass 1. Use raw ALU flag to record value without need for the instruction to corrupt the flags 
  flopenrc #(1) prevzflop(    clk, reset, ~StallE, FlushE, (~multPrevZFlagE | ALUFlagsE[2]), zFlagPrevE); 
  flopenrc #(1) restoreCPSR_DE(clk, reset, ~StallE, FlushE, restoreCPSR_D, restoreCPSR_E);
  flopenrc #(3) undef_exception(clk, reset, ~StallE, FlushE, {undefD, SWI_D, bkpt_D}, {undefE, SWI_0E, bkpt_E});
  flopenrc #(3) shiftOpCodeE(clk, reset, ~StallE, FlushE, InstrD[6:4],ShiftOpCode_E[6:4]);
  flopenrc #(3) CoprocE(clk, reset, ~StallE, FlushE, {CoProc_FlagUpd_D, CoProc_EnD, CoProc_WrEnD}, {CoProc_FlagUpd_E, CoProc_EnE, CoProc_WrEnE});
  flopenrc #(4) condregE(clk, reset, ~StallE, FlushE, InstrD[31:28], CondE);
  flopenrc  #(8) shifterregE (clk, reset, ~StallE, FlushE,  {RselectD, RSRselectD, PrevCycleCarryD, LDMSTMforwardD, LDRSTRshiftD, LdrStr_HalfD, Ldr_SignHD, Ldr_SignBD},
                                                            {RselectE, RSRselectE, PrevCycleCarryE, LDMSTMforwardE, LDRSTRshiftE, LdrStr_HalfE, Ldr_SignHE, Ldr_SignBE});
  flopenrc #(11) flushedregsE(clk, reset, ~StallE, FlushE,
    {FlagWriteD, BranchD, MemWriteD, RegWriteD, PCSrcD, MemtoRegD,   ldrstrALUopD, BXInstrD, CPSRtoRegD,  RegtoCPSR_D},
    {FlagWriteE, BranchE, MemWriteE, RegWriteE, PCSrcE, MemtoReg_0E, ldrstrALUopE, BXInstrE, CPSRtoReg0E, RegtoCPSR_0E});
  flopenrc #(11)  regsE(clk, reset, ~StallE, FlushE, {ALUSrcD, ALUControlD, PSRtypeD, MSRmaskD},
                                                     {ALUSrcE, ALUControlE, PSRtypeE, MSRmaskE});
  flopenrc #(33) passALUinstr(clk, reset, ~StallE, FlushE, {(ALUOpD|ldrstrALUopD), InstrD}, {ALUOpE, InstrE});
  flopenrc #(1) flushWBE(clk, reset, ~StallE, FlushE, nonFlushedInstrD, nonFlushedInstrE);
  flopenrc #(1) zrotflop(clk, reset, ~StallE, FlushE, ZeroRotateD, ZeroRotateE);

  // SD 1/24/2016: Could move to D? think about timing
  shift_control shctl(InstrE[6:5], InstrE[11:7], SrcA70E, RselectE, RSRselectE, LDRSTRshiftE, ZeroRotateE, FlagsE[1], multCarryInE[0], ShifterCarryOut_cycle2E, sh_a0E, sh_a31E, sh_rot0E, sh_rot31E, 
                      shamtE, shctl_5E, shctl_8E, shiftE, leftE, arithE, longshiftE, rrx_inE, ShifterCarryOutE);

  // === ALU Decoding ===
  alu_decoder alu_dec(ALUOpE, ALUControlE, FlagsE[1:0], BXInstrE, RegtoCPSR_E, ALUOperationE, CVUpdateE, InvertBE, ReverseInputsE, ALUCarryIn_0E, DoNotWriteRegE);
  assign ALUCarryInE = multCarryInE[1] ? ALUCarryOut_cycle2E : ALUCarryIn_0E;
  // === END ===

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
  conditional Cond(CondE, FlagsE, ALUFlagsE, FlagWriteE, CondExE, FlagsNext0E, FlagsOutE, ShifterCarryOut_cycle2E, ShifterCarryOutE, PrevCycleCarryE, CVUpdateE, zFlagPrevE);
  assign BranchTakenE    = BranchE & CondExE;
  assign RegWritepreMuxE = (RegWriteE & CondExE);
  assign MemWriteGatedE  = MemWriteE & CondExE;
  assign MemtoRegE       = MemtoReg_0E & CondExE; // avoid reading memory when we shouldn't. Could cause data abort!
  assign PCSrcGatedE     = PCSrcE & CondExE;
  assign SetNextFlagsE   = (FlagWriteE != 2'b00) & CondExE;
  assign CPSRtoRegE      = CPSRtoReg0E & CondExE;
  assign RegtoCPSR_E     = RegtoCPSR_0E & CondExE;
  assign SWI_E           = SWI_0E & CondExE;
  // disable write to register for flag-setting instructions
  assign RegWriteKillE = ~CPSRtoRegE & DoNotWriteRegE;
  assign RegWriteGatedE   = RegWriteKillE ? 1'b0 : RegWritepreMuxE;
  // === END ===


 exception_handler exh(clk, reset, undefE, SWI_E, PrefetchAbort | bkpt_E, DataAbort, IRQ, FIQ, 
                       ~CPSRW[7], ~CPSRW[6], StallD, StallE, StallM, StallW, PCWrPendingF, PCSrcW & CondExW,
                       undefW, SWI_W, PrefetchAbortW, DataAbortAssert, IRQAssert, FIQAssert, // undefW, SWI_W, and PrefetchAbortW are for saving CPSR only.
                       interrupting, ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW, ExceptionStallD,
                       VectorPCnextF,
                       ExceptionResetMicrop, ExceptionSavePC, PCInSelect);

  // === DEBUGGING ===
  flopenrc #(1) validereg(clk, reset, ~StallE, FlushE, validDdebug, validEdebug);
  flopenrc #(1) uopprogereg(clk, reset, ~StallE, FlushE, uOpStallD, uOpProgEdebug);
  floprc #(1) advancingereg(clk, reset, FlushE, validDdebug && ~uOpStallD && ~StallE, advancingEdebug);
  // === END ===

  // ====================================================================================================
  // ======================================= Memory Stage ===============================================
  // ====================================================================================================

  flopenrc #(2) msr_mrs_M(clk, reset, ~StallM, FlushM, {restoreCPSR_E, RegtoCPSR_E},
                                                       {restoreCPSR_M, RegtoCPSR_M});
  flopenrc #(1) pcupd_M(clk, reset, ~StallM, FlushM, CondExE,
                                                     CondExM);
  flopenrc #(11) flagM(clk, reset, ~StallM, FlushM, {FlagsNextE,  SetNextFlagsE, PSRtypeE, MSRmaskE},
                                                    {FlagsNext0M, SetNextFlagsM, PSRtypeM, MSRmaskM});
  flopenrc #(14) CoProc_M(clk, reset, ~StallM, FlushM,
    {InstrE[19:16], InstrE[7:5], InstrE[3:0], (CoProc_WrEnE & CondExE), (CoProc_EnE & CondExE), (CoProc_FlagUpd_E & CondExE)},
    {CoProc_AddrM,  CoProc_Op2M, CoProc_CRmM, CoProc_WrEnM,             CoProc_EnM,             CoProc_FlagUpd_M});
  flopenrc #(16) regsM(clk, reset, ~StallM, FlushM,
    {MemWriteGatedE, MemtoRegE, RegWriteGatedE, PCSrcGatedE, ByteMaskE, ByteOrWordE, ByteOffsetE, LdrHalfwordE, Ldr_SignBE, Ldr_SignHE, HalfwordOffsetE, CPSRtoRegE},
    {MemWriteM,      MemtoRegM, RegWriteM,      PCSrcM,      ByteMaskM, ByteOrWordM, ByteOffsetM, LdrHalfwordM, Ldr_SignBM, Ldr_SignHM, HalfwordOffsetM, CPSRtoRegM});
  flopenrc #(1) flushWBM(clk, reset, ~StallM, FlushM, nonFlushedInstrE, nonFlushedInstrM);

  mux2 #(4)  flagM_mux(FlagsNext0M, CPSRW[31:28], CoProc_FlagUpd_W, FlagsNextM);

  // === DEBUGGING ===
  flopenrc #(1) validmreg(clk, reset, ~StallM, FlushM, validEdebug, validMdebug);
  flopenrc #(1) uopprogmreg(clk, reset, ~StallM, FlushM, uOpProgEdebug, uOpProgMdebug);
  // === END ===

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
 flopenrc #(1) pcupd_W(clk, reset, ~StallM, FlushM, CondExM,
                                                    CondExW);
 flopenrc #(1) flushWBW(clk, reset, ~StallW, FlushW, nonFlushedInstrM, nonFlushedInstrW);

  // === CPSR / SPSR relevant info ===
  cpsr          cpsr_W(clk, reset, FlagsNextW, nonFlushedInstrW, ALUOutW, MSRmaskW, {undefW, SWI_W, PrefetchAbortW, DataAbortAssert, IRQAssert, FIQAssert}, restoreCPSR_W, ~StallW, CoProc_FlagUpd_W,
    CPSRW, SPSRW);
  assign CPSR8_W = {CPSRW[7:0]}; // Forward to Decode stage
  assign PSR_W   = PSRtypeW ? SPSRW : CPSRW;
  // === END ===

  assign PCWrPendingF = PCSrcD | PCSrcE | PCSrcM;

  // === DEBUGGING ===
  flopenrc #(1) validwreg(clk, reset, ~StallW, FlushW, validMdebug, validWdebug);
  flopenrc #(1) uopprogwreg(clk, reset, ~StallW, FlushW, uOpProgMdebug, uOpProgWdebug);
  assign advancingWdebug = validWdebug && ~uOpProgWdebug && ~StallW;
  // === END ===

endmodule
