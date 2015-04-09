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
  logic IRQ, FIQ, IRQsync, FIQsync; 

  // CP15 signals for LEG
  logic         CoProc_WrEnM, CoProc_EnM, MMUWriteEn, MMUEn;
  logic [3:0]   CoProc_AddrM;
  logic [31:0]  CPUWriteData, MMUWriteData;
  logic [2:0]   CoProc_Op2M;
  logic [3:0]   CoProc_CRmM;
  logic         StallCP, FlushI, FlushD, CleanI, CleanD, TLBFlushD, TLBFlushI;
  logic [31:0]  CP15rd_M, control, FullTBase;

  synchronizer synchro(.*);
  // instantiate processor core
  leg leg(clk, reset, PCF, InstrF, MemWriteM, DataAdrM, 
          // Added for memory (DStall, MemtoRegM)
          WriteDataM, ReadDataM, DStall, IStall, MemtoRegM, ByteMaskM,
          // Added for exceptions
          PrefetchAbort, DataAbort, IRQsync, FIQsync,
          // Added for Coprocessor
          CoProc_WrEnM, CoProc_EnM, CoProc_AddrM, CoProc_CRmM, CoProc_Op2M, 
          CPUWriteData, CP15rd_M); 



  // False signal for the Caches
  // TODO: Hook these up to the coprocessor
  logic IEN, INV; // Instruction cache enable and invalidate
  logic DEN, DNV, DCLEAN; // Data cache enable and invalidate
  assign INV = 1'b0;
  assign DNV = 1'b0;
  assign IEN = 1'b0;
  assign DEN = 1'b0;
  assign DCLEAN = 1'b0;

  coprocessor15 cp15(.clk(clk), .reset(reset), .CPUWriteEn(CoProc_WrEnM), .CPUEn(CoProc_EnM), 
                    .MMUWriteEn(MMUWriteEn), .MMUEn(MMUEn), .addr(CoProc_AddrM), 
                    .CPUWriteData(WriteDataM), .MMUWriteData(MMUWriteData), 
                    .opcode_2(CoProc_Op2M), .CRm(CoProc_CRmM),
                    .StallCP(StallCP), .FlushI(FlushI), .FlushD(FlushD), 
                    .CleanI(CleanI), .CleanD(CleanD), .TLBFlushD(TLBFlushD), 
                    .TLBFlushI(TLBFlushI), .rd(CP15rd_M), .control(control), .tbase(FullTBase));

  
  // instruction cache
  instr_cache #(4, 1024) 
    instr_cache(.clk(clk), .reset(reset), .enable(IEN), .invalidate(INV),
      .BusReady(BusReadyF), .A(PCF), .HRData(HRData), .RD(InstrF), 
                .IStall(IStall), .HAddrF(HAddrF), .HRequestF(HRequestF) );

  // Read straight from the memory, then write to the cache
  data_writeback_associative_cache #(4, 1024)
    data_cache(.clk(clk), .reset(reset), .enable(DEN), .invalidate(DNV),
      .clean(DCLEAN),
      .MemWriteM(MemWriteM), .MemtoRegM(MemtoRegM), .BusReady(BusReadyM), 
      .IStall(IStall), .A(DataAdrM), .WD(WriteDataM), .HRData(HRData), 
      .ByteMask(ByteMaskM), .HWData(HWData), .RD(ReadDataM), 
      .HAddr(HAddrM), .Stall(DStall), .HRequestM(HRequestM), 
      .HWriteM(HWriteM));

  // Create ahb arbiter
  ahb_arbiter ahb_arb(.HWriteM(HWriteM), .IStall(IStall), .DStall(DStall), .HReady(CPUHReady),
              .HAddrM(HAddrM), .HAddrF(HAddrF), .HRequestF(HRequestF), .HRequestM(HRequestM),
              .HReadyF(BusReadyF), .HReadyM(BusReadyM),
              .HAddr(CPUHAddr), .HWrite(CPUHWrite), .HRequest(CPUHRequest));

  // Create an ahb memory
  ahb_lite ahb(.HCLK(clk), .HRESETn(reset), .HADDR(HAddr), .HWRITE(HWrite), .HREQUEST(HRequest),
               .HWDATA(HWData), .HRDATA(HRData), .HREADY(HReady), .irq(IRQ), .fiq(FIQ));

  // Create the mmu
  mmu mmuInst(.*);

  // False Signals for the mmu
  // TODO: Hook these wires up to the coprocessor
  logic MMUExtInt;
  logic [31:0] Dom;
  logic [6:0] TLBCont, Cont;
  logic [17:0] TBase;
  logic [31:0] FAR;
  logic [7:0] FSR;
  logic DataAccess, CPSR4, Fault;
  logic SBit, RBit, SupMode, WordAccess;

  assign Dom = 32'hffff_ffff; // Full permissions to all domains
  assign WordAccess = 1'b0;   // Assuming byte or halfword accesses
  assign SupMode = 1'b1;      // in supervisor mode
  // assign SBit = control[7];         // Give the most permissions with S and R
  // assign RBit = control[9];
  assign DataAccess = 1'b1;   // Trying to access data memory, not instruction memory
  assign CPSR4 = 1'b1;
  // assign FullTBase = 32'h0030_0000; // Translation Base at 0x0010_0000
  assign TBase = FullTBase[31:14];
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