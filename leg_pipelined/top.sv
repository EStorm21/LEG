//`include "cfg.vh"

module top (
  input  logic        clk, reset,
  output logic [31:0] WriteDataM, DataAdrM,
  output logic        MemWriteM
);
  
  // ----- arbiter and ahb_lite -----
  logic        HWrite, HWriteM;
  logic        HRequest, HRequestM, HRequestF, HRequestT;
  logic        HReady, HReadyM, HReadyF, HReadyT;
  logic [ 2:0] HSIZE, HSizeM;
  logic [31:0] HAddrT, HAddrM, HAddrF, HAddr;
  logic [31:0] HWData, HWDataM;
  logic [31:0] HRData; 

  // ----- tlb arbiter -----
  logic RequestPA, DRequestPA, IRequestPA;
  logic PAReady, PAReadyF, PAReadyM;

  // ----- data cache -----
  logic        Valid, DStall, END, CLEAND;
  logic [31:0] ReadDataM, DANew;
  logic [3:0]  ByteMaskM;

  // ----- instr cache -----
  logic        IStall, ENI;
  logic [31:0] PCF, InstrF;

  // ----- Exception signals -----
  logic DataAbort, PrefetchAbort; // TODO: signals come from MMU
  logic IRQ, FIQ, IRQsync, FIQsync;

  // ----- MMU Signals -----
  parameter tbits = 22;
  logic        MMUExtInt, DataAccess, CPSR4, SBit, RBit;
  logic        SupMode, WordAccess;
  // logic        SupMode, WordAccess;
  logic [31:0] Dom;
  logic [6:0]  TLBCont, Cont;
  logic [17:0] TBase;
  logic [3:0]  CP15A;
  logic [tbits-1:0] PhysTag;

  // ----- CP15 signals for LEG -----
  logic        CoProc_WrEnM, CoProc_EnM, MMUWriteEn, MMUEn;
  logic [3:0]  CoProc_AddrM;
  logic [31:0] CPUWriteData, MMUWriteData;
  logic [2:0]  CoProc_Op2M;
  logic [3:0]  CoProc_CRmM;
  logic        StallCP, INVI, INVD, CleanI, CleanD, TLBFlushD, TLBFlushI,
    StallD, FlushD, FlushE;
  logic [31:0] CP15rd_M, control, FullTBase, DummyTBase, controlDummy;

  synchronizer synchro(.*);
  // instantiate processor core
  leg leg(clk, reset, PCF, InstrF, MemWriteM, DataAdrM,
    // Added for memory (DStall, MemtoRegM)
    WriteDataM, ReadDataM, DStall, IStall, MemtoRegM, ByteMaskM,
    // Added for exceptions
    PrefetchAbort, DataAbort, IRQsync, FIQsync,
    // Added for Coprocessor
    CoProc_WrEnM, CoProc_EnM, CoProc_AddrM, CoProc_CRmM, CoProc_Op2M,
    CPUWriteData, CP15rd_M,
    // Added for MMU
    StallD, FlushD, FlushE);

  //`define ECACHES 1
  initial
    begin
      `ifdef ECACHES
        $display("Caches Enabled");
      `else
	$display("Caches Disabled");
      `endif
    end

  `ifdef ECACHES
    assign ENI = control[12];
    assign END    = control[2];
    assign CLEAND = 1'b0;
  `else
    assign ENI    = 1'b0;
    assign END    = 1'b0;
    assign CLEAND = 1'b0;
  `endif

  coprocessor15 cp15 (
    .clk         (clk         ),
    .reset       (reset       ),
    .CPUWriteEn  (CoProc_WrEnM),
    .CPUEn       (CoProc_EnM  ),
    .MMUWriteEn  (MMUWriteEn  ),
    .MMUEn       (MMUEn       ),
    .addr        (CoProc_AddrM),
    .CPUWriteData(WriteDataM  ),
    .MMUWriteData(MMUWriteData),
    .opcode_2    (CoProc_Op2M ),
    .CRm         (CoProc_CRmM ),
    .StallCP     (StallCP     ),
    .INVI        (INVI        ),
    .INVD        (INVD        ),
    .CleanI      (CleanI      ),
    .CleanD      (CleanD      ),
    .TLBFlushD   (TLBFlushD   ),
    .TLBFlushI   (TLBFlushI   ),
    .rd          (CP15rd_M    ),
    .control     (control     ),
    .tbase       (FullTBase   )
  );
  // .TLBFlushI(TLBFlushI), .rd(CP15rd_M), .control(controlDummy), .tbase(DummyTBase));

  parameter iLines = 64;   // Number of lines in I$
  parameter ibsize = 4; // bsize of the I$
  // I$
  instr_cache #(ibsize,iLines) instr_cache (
    .clk       (clk         ),
    .reset     (reset       ),
    .enable    (ENI         ),
    .invalidate(INVI        ),
    .BusReady  (HReadyF   ),
    .A         (PCF         ),
    .HRData    (HRData      ),
    .RD        (InstrF      ),
    .PhysTag   (PhysTag),
    .PAReadyF  (PAReadyF    ),
    .IStall    (IStall      ),
    .HAddrF    (HAddrF      ),
    .HRequestF (HRequestF   )
  );

  parameter dLines = 64;   // Number of lines in D$
  parameter dbsize = 4;     // block size of the D$

  // D$
  data_writeback_associative_cache #(dbsize,dLines) data_cache (
    .clk       (clk         ),
    .reset     (reset       ),
    .enable    (END         ),
    .invalidate(INVD        ),
    .clean     (CLEAND      ),
    .PAReady   (PAReadyM    ),
    .ANew      (DANew       ),
    .RequestPA (DRequestPA  ),
    // .clean(CLEAND),
    .MemWriteM (MemWriteM   ),
    .MemtoRegM (MemtoRegM   ),
    .BusReady  (HReadyM   ),
    .IStall    (IStall      ),
    .PhysTag   (PhysTag),
    .VirtA     (DataAdrM    ),
    .WD        (WriteDataM  ),
    .HRData    (HRData      ),
    .ByteMask  (ByteMaskM   ),
    .HWData_d  (HWDataM     ),
    .RD        (ReadDataM   ),
    .HAddr     (HAddrM      ),
    .Stall     (DStall      ),
    .HRequestM (HRequestM   ),
    .HWriteM   (HWriteM     )
  );

  ahb_arbiter_3way ahb_arb(.*);

  tlb_arbiter tarb(.*);

  // Create an ahb memory
  // TODO: Partition into on chip and off chip
  ahb_lite ahb (
    .HCLK    (clk     ),
    .HRESETn (~reset   ),
    .HADDR   (HAddr   ),
    .HWRITE  (HWrite  ),
    .HREQUEST(HRequest),
    .HSIZE   (HSIZE),
    .HWDATA  (HWData  ),
    .HRDATA  (HRData  ),
    .HREADY  (HReady  ),
    .irq     (IRQ     ),
    .fiq     (FIQ     )
  );

  // Create the mmu
  mmu #(tbits) mmuInst (.*);

  // Set HSIZE from bytemask
  // FIXME: Use signals from control unit
  mask_to_hsize mth(ByteMaskM, HSizeM);

  assign WordAccess = 1'b0;   // Assuming byte or halfword accesses
  assign SupMode    = 1'b1;   // in supervisor mode
  // assign SBit = control[7];         // Give the most permissions with S and R
  // assign RBit = control[9];
  assign DataAccess = 1'b1;   // Trying to access data memory, not instruction memory
  assign CPSR4      = 1'b1;
  // assign FullTBase = 32'h0030_0000; // Fix the translation base
  assign TBase     = FullTBase[31:14];
  assign MMUExtInt = 1'b0;          // No External Interrupt

endmodule
