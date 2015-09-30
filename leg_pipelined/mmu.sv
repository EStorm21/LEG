module mmu #(parameter tbits = 22) (
  input  logic        clk, reset, MMUExtInt, CPUHRequest,
  input  logic        CPUHWrite, HReady, DataAccess, CPSR4,
  input  logic        SupMode, WordAccess, DStall, IStall,
  input  logic        StallD, FlushD, FlushE,
  input  logic [31:0] CPUHAddr, HRData,
  input  logic [31:0] control, CP15rd_M, // control[0] is the enable bit
  input  logic [17:0] TBase    ,
  output logic [31:0] HAddr, MMUWriteData,
  output logic [tbits-1:0] PhysTag,
  output logic [ 3:0] CP15A    ,
  output logic        HRequest, HWrite, CPUHReady, MMUWriteEn,
  PrefetchAbort, DataAbort, MMUEn, PAReady
);
                        // PrefetchAbort, DataAbort, MMUEn);
  
    // TODO: Assertions
  // Note that the faults are listed in priority order.
  typedef enum logic [3:0] {
    TERMFAULT = 4'b0010,
    VECTORFAULT = 4'b0000,
    ALIGNFAULT = 4'b0001,    // Alignment Fault = 0b00x1 (not just 0b0001)
    ETFIRSTFAULT = 4'b1100,
    ETSECONDTFAULT= 4'b1110,
    TSFAULT = 4'b0101,
    TPFAULT= 4'b0111,
    DSFAULT = 4'b1001,
    DPFAULT = 4'b1011,
    PSFAULT = 4'b1101,
    PPFAULT = 4'b1111,
    ESLINEFAULT = 4'b0100,
    EPLINEFAULT = 4'b0110,
    ESNLINEFAULT = 4'b1000,
    EPNLINEFAULT = 4'b1010
  } faulttype;
  faulttype FaultCode, FaultCodeMid;

  // Fault Signals
  logic        Enable;
  logic        Fault, SelPrevAddr;
  //logic        PStall;
  logic [3:0]  Domain;
  logic [31:0] FSR, FAR, Dom;
  // Translation Signals
  logic [31:0] HAddrMid, PHAddr, HAddrOut;
  logic [31:0] PHRData;
  logic        HRequestMid, CPUHReadyMid, HWriteMid; // Output signals from MMU
  logic [3:0]  statebits; // Carry state from twh to tfh
  // Signals for the Instruction Counter
  logic        InstrExecuting;
  logic        InstrCancelled;
  logic        instr_abort;
  // TLB Signals
  logic TLBwe;
  logic TLBMiss;
  tri [tbits+8:0] TableEntry;

  // PHRData flop: Hold onto the previous bus value for current translation
  flopenr #(32) HRDataFlop(clk, reset, HReady, HRData, PHRData);
  
  assign FSR[7:4] = Domain;    // Define the location of the domain
  assign FAR = CPUHAddr;       // Set the FAR
  assign Enable = control[0];  // Add enable, disable
  assign SBit = control[7];
  assign RBit = control[9];

  // Bypass translation
  mux2 #(35) enableMux({CPUHAddr, CPUHRequest, CPUHWrite, HReady},
                       {HAddrOut, HRequestMid, HWriteMid, CPUHReadyMid}, 
                       Enable & ~CPUHWrite, {HAddr, HRequest, HWrite, CPUHReady});
  
  // Save last translated address
  //    The caches expect the value on the bus to remain constant for 
  //    one cycle after the stall.
  // FIXME: Can this register and mux be removed?
  //flopr #(32) HAddrFlop(clk, reset, HAddr, PHAddr);
  assign HAddrOut = HAddrMid;
  assign PhysTag = TableEntry[tbits+8:8];
  //mux2 #(32) HAddrMidMux(HAddrMid, PHAddr, SelPrevAddr, HAddrOut);
  //flopr #(1) StallFlop(clk, reset, (DStall | IStall), PStall);

  // MMUWriteData Mux
  mux2 #(32) WDMux(FAR, FSR, WDSel, MMUWriteData);

  // Instruction Tracker
  // --- Track whether an instruction was executed.
  // --- If an instruction that causes a memory fault is executed, 
  // --- raise a prefetch abort
  instr_tracker it(.*);

  parameter tlb_size = 16;

  tlb #(tbits, tlb_size) tlb_inst (
    .clk       (clk       ),
    .reset     (reset     ),
    .enable    (Enable),
    .we        (TLBwe ),
    .VirtTag   (CPUHAddr[31:32-tbits]),
    .TableEntry(TableEntry), 
    .Miss      (TLBMiss      ),
    .PAReady   (PAReady)
  );

  twh #(tbits) translation_walk_hardware (.*);

  tfh translation_fault_hardware(.*);

endmodule
