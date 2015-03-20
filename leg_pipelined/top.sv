module top(input  logic        clk, reset, 
           output logic [31:0] WriteDataM, DataAdrM, 
           output logic        MemWriteM);

  logic DStall, IStall;
  logic [31:0] PCF, InstrF, ReadDataM;
  logic [3:0] ByteMaskM;
  
  // data cache 
  logic Valid;
  logic HWriteM;
  logic HRequestM;
  logic [31:0] HRData, HWData;

  // instr cache - Note these are temporarily separate to test the caches
  //               before a shared memory is bus is implemented.
  logic BusReadyF, HRequestF;

  // Wires between arbiter and ahb_lite
  logic HWrite, CPUHWrite, HReady, CPUHReady, HRequest, CPUHRequest;
  logic [31:0] HAddrM, HAddrF, HAddr, CPUHAddr;
  
  // ----- Exception signals -----
  logic DataAbort, PrefetchAbort; // TODO: signals come from MMU
  logic IRQ, FIQ; // TODO: change to external input pins

  // instantiate processor and memories
  leg leg(clk, reset, PCF, InstrF, MemWriteM, DataAdrM, 
          // Added for memory (DStall, MemtoRegM)
          WriteDataM, ReadDataM, DStall, IStall, MemtoRegM, ByteMaskM,
          // Added for exceptions
          PrefetchAbort, DataAbort, IRQ, FIQ); 

  // instruction cache with a block size of 4 words and 16 lines
  instr_cache #(4, 128) 
    instr_cache(.clk(clk), .reset(reset), .BusReady(BusReadyF),
                .A(PCF), .HRData(HRData), .RD(InstrF), 
                .IStall(IStall), .HAddrF(HAddrF), .HRequestF(HRequestF) );

  // Read straight from the memory, then write to the cache
  // cache with a block size of 4 words and 16 lines (Parameterized block size not functional)
  // data_associative_cache #(4, 16) data_cache(.clk(clk), .reset(reset), .MemWriteM(MemWriteM), .IStall(IStall),
  //                       .MemtoRegM(MemtoRegM), .Valid(Valid), .a(DataAdrM), .MemBlock(HRData),
  //                       .rd(ReadDataM), .Stall(DStall), .MemRE(MemRE), .HWriteM(HWriteM));

  data_writeback_associative_cache #(4, 128)
    data_cache(.clk(clk), .reset(reset), .MemWriteM(MemWriteM), .MemtoRegM(MemtoRegM), 
               .BusReady(BusReadyM), .IStall(IStall), .A(DataAdrM), .WD(WriteDataM),
               .HRData(HRData), .ByteMask(ByteMaskM), .HWData(HWData), .RD(ReadDataM), .HAddr(HAddrM),
               .Stall(DStall), .HRequestM(HRequestM), .HWriteM(HWriteM));

  // Create ahb arbiter
  ahb_arbiter ahb_arb(.HWriteM(HWriteM), .IStall(IStall), .DStall(DStall), .HReady(CPUHReady),
              .HAddrM(HAddrM), .HAddrF(HAddrF), .HRequestF(HRequestF), .HRequestM(HRequestM),
              .HReadyF(BusReadyF), .HReadyM(BusReadyM),
              .HAddr(CPUHAddr), .HWrite(CPUHWrite), .HRequest(CPUHRequest));

  // Create an ahb memory
  ahb_lite ahb(.HCLK(clk), .HRESETn(reset), .HADDR(HAddr), .HWRITE(HWrite), .HREQUEST(HRequest),
               .HWDATA(HWData), .HRDATA(HRData), .HREADY(HReady));

  // Create the mmu
  mmu mmuInst(.*);

  // False Signals for the mmu
  // TODO: Hook these wires up to the 
  logic MMUExtInt;
  logic [31:0] Dom;
  logic [6:0] TLBCont, Cont;
  logic [17:0] TBase;
  logic [31:0] FAR, FullTBase;
  logic [7:0] FSR;
  logic DataAccess, CPSR4, Fault;
  logic SBit, RBit, SupMode, WordAccess;

  assign Dom = 32'hffff_ffff; // Full permissions to all domains
  assign WordAccess = 1'b1;   // Assuming not byte or halfword accesses
  assign SupMode = 1'b1;      // in supervisor mode
  assign SBit = 1'b0;         // Give the most permissions with S and R
  assign RBit = 1'b1;
  assign DataAccess = 1'b1;   // Trying to access data memory, not instruction memory
  assign CPSR4 = 1'b1;
  assign FullTBase = 32'h0030_0000; // Translation Base at 0x0010_0000
  assign TBase = FullTBase[31:14];
  assign Cont  = 7'b000_0000;     // Enable the MMU with Cont[0]
  assign MMUExtInt = 1'b0;        // No External Interrupt

  // Create memory with a 2 cycle delay and 4 word block size (Parameterized block size not functional)
  // mem_simulation #(2, 4) ms(.clk(clk), .we(HWriteM), .re(MemRE),
  //                   .a(DataAdrM), .wd(WriteDataM), .rd(HRData), 
  //                   .Valid(Valid));

  // Create instruction memory with a 2 cycle delay and 4 word block size 
  // (parameterized block size not functional)
  // imem_simulation #(2, 4) ims(.clk(clk), .re(IMemRE), .a(PCF), .rd(IMemBlock), 
  //                     .Valid(BusReadyF));

  // imem imem(PCF, InstrF);
  // assign IStall = 1'b0;
  // assign DStall = 1'b0;
  // dmem dmem(.clk(clk), .we(MemWriteM), .a(DataAdrM), 
  //           .wd(WriteDataM), .rd(ReadDataM));
  //---------------------- Added for memory ----------------


endmodule