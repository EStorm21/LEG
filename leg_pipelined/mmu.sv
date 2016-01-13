module mmu #(parameter tbits = 22) (
  input  logic        clk, reset, MMUExtInt, RequestPA, RequestPAM,
  input  logic        HWrite, HReadyT,
  input  logic        DataAccess, CPSR4,
  input  logic        SupMode, WordAccess,
  input  logic        StallD, FlushD, FlushE,
  input  logic [31:0] HRData, DataAdrM, PCF, // TODO: Remove DataAdrM, PCF
  // TODO: fix control signal name
  input  logic [31:0] control, CP15rd_M, // control[0] is the enable bit
  input  logic [17:0] TBase    ,
  output logic [31:0] MMUWriteData, HAddrT,
  output logic [tbits-1:0] PhysTag,
  output logic [ 3:0] CP15A    ,
  output logic        MMUWriteEn,HRequestT,
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
  faulttype FaultCodeMid;

  // Fault Signals
  logic        Enable;
  logic        Fault;
  logic [3:0]  Domain, FaultCode;
  logic [31:0] FSR, FAR, Dom;
  // Translation Signals
  logic [31:0] VirtAdr; // TODO Remove VirtAdr
  logic [31:0] PHRData;
  logic [3:0]  statebits; // Carry state from twh to tfh
  // Signals for the Instruction Counter
  logic        InstrExecuting;
  logic        InstrCancelled;
  logic        instr_abort;
  // TLB Signals
  logic TLBwe;
  tri [tbits+8:0] TableEntry;

  // PHRData flop: Hold onto the previous bus value for current translation
  flopenr #(32) HRDataFlop(clk, reset, HReadyT, HRData, PHRData);
  
  assign FSR[7:4] = Domain;    // Define the location of the domain
  assign FAR = VirtAdr;       // Set the FAR
  assign Enable = control[0];  // Add enable, disable
  assign SBit = control[7];
  assign RBit = control[9];

  // TODO: Remove, this is for debugging
  always_ff @(posedge clk) begin
    if(Fault) begin
      $display("Mem fault detected at %d. VirtAdr = %h, FaultCode = %h", $time, VirtAdr, FaultCode);
    end
  end

  // Bypass translation
  mux2 #(tbits) PhsyTagEn(VirtAdr[31:32-tbits], TableEntry[tbits+8:9], Enable, PhysTag);

  // MMUWriteData Mux
  mux2 #(32) WDMux(FAR, FSR, WDSel, MMUWriteData);

  // Virtual Address MUX TODO: Remove and just use VirtAdr
  // This mux was placed here to protoype a bug fix
  mux2 #(32) VirtAdrMux(PCF, DataAdrM, RequestPAM, VirtAdr);

  // Translation Look-Aside Buffer
  parameter tlb_size = 16;
  tlb #(tbits, tlb_size) tlb_inst (
    .clk       (clk       ),
    .reset     (reset     ),
    .enable    (Enable),
    .we        (TLBwe ),
    .VirtTag   (VirtAdr[31:32-tbits]), // TODO: Use VirtAdr
    .TableEntry(TableEntry), 
    .PAReady   (PAReady)
  );

  twh #(tbits) translation_walk_hardware (.*);

  tfh translation_fault_hardware(.*);

endmodule
