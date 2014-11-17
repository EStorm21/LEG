module top(input  logic        clk, reset, 
           output logic [31:0] WriteDataM, DataAdrM, 
           output logic        MemWriteM);

  logic DStall, IStall;
  logic [31:0] PCF, InstrF, ReadDataM;
  
  // instantiate processor and memories
  arm arm(clk, reset, PCF, InstrF, MemWriteM, DataAdrM, 
          // Added for memory (DStall, MemtoRegM)
          WriteDataM, ReadDataM, DStall, IStall, MemtoRegM); 

  // ----------------------Added for memory------------------
  // data cache 
  logic Valid;
  logic MemWE;
  logic MemRE;
  logic [31:0] MemAddr;
  logic [4*32-1:0] MemRD, MemWD;

  // instr cache - Note these are temporarily separate to test the caches
  //               before a shared memory is bus is implemented.
  logic IValid;
  logic IMemRE;
  // logic [4*32-1:0] IMemBlock;

  // Wires between arbiter and ahb_lite
  logic HWrite, HReady;
  logic [31:0] HAddr;
  
  // instr_cache icache(.clk(clk), .a(PCF), .rd(InstrF), .hit(ihit), 
  //                 .validData(ivalidData), .MemRE(IMemRE));
  // instruction cache with a block size of 4 words and 16 lines
  instr_cache #(4, 128) 
    instr_cache(.clk(clk), .reset(reset), .Valid(IValid),
                .a(PCF), .MemBlock(MemRD), .rd(InstrF), 
                .Stall(IStall), .MemRE(IMemRE));

  // Read straight from the memory, then write to the cache
  // cache with a block size of 4 words and 16 lines (Parameterized block size not functional)
  // data_associative_cache #(4, 16) data_cache(.clk(clk), .reset(reset), .MemWriteM(MemWriteM), .IStall(IStall),
  //                       .MemtoRegM(MemtoRegM), .Valid(Valid), .a(DataAdrM), .MemBlock(MemRD),
  //                       .rd(ReadDataM), .Stall(DStall), .MemRE(MemRE), .MemWE(MemWE));

  data_writeback_associative_cache #(4, 2) 
    data_cache(.clk(clk), .reset(reset), .MemWriteM(MemWriteM), .MemtoRegM(MemtoRegM), 
               .BusReady(BusReadyM), .IStall(IStall), .a(DataAdrM), .WD(WriteDataM),
               .MemRD(MemRD), .MemWD(MemWD), .RD(ReadDataM), .MemAddr(MemAddr),
               .Stall(DStall), .MemRE(MemRE), .MemWE(MemWE));

  // Create ahb arbiter
  ahb_arbiter ahb_arb(.HWriteM(MemWE), .IStall(IStall), .DStall(DStall), .HReady(HReady),
              .HAddrM(MemAddr), .HAddrF(PCF), .HReadyF(IValid), .HReadyM(BusReadyM),
              .HAddr(HAddr), .HWrite(HWrite));

  // Create an ahb memory
  ahb_lite ahb(.HCLK(clk), .HRESETn(reset), .HADDR(HAddr), .HWRITE(HWrite),
               .HWDATA(MemWD), .HRDATA(MemRD), .HREADY(HReady));

  // Create memory with a 2 cycle delay and 4 word block size (Parameterized block size not functional)
  // mem_simulation #(2, 4) ms(.clk(clk), .we(MemWE), .re(MemRE),
  //                   .a(DataAdrM), .wd(WriteDataM), .rd(MemRD), 
  //                   .Valid(Valid));

  // Create instruction memory with a 2 cycle delay and 4 word block size 
  // (parameterized block size not functional)
  // imem_simulation #(2, 4) ims(.clk(clk), .re(IMemRE), .a(PCF), .rd(IMemBlock), 
  //                     .Valid(IValid));

  // imem imem(PCF, InstrF);
  // assign IStall = 1'b0;
  // assign DStall = 1'b0;
  // dmem dmem(.clk(clk), .we(MemWriteM), .a(DataAdrM), 
  //           .wd(WriteDataM), .rd(ReadDataM));
  //---------------------- Added for memory ----------------
endmodule