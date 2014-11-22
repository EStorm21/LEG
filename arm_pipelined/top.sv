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
  logic HWriteM;
  logic MemRE;
  logic [31:0] HAddrM;
  logic [31:0] HRData, HWData;

  // instr cache - Note these are temporarily separate to test the caches
  //               before a shared memory is bus is implemented.
  logic BusReadyF;
  // logic [4*32-1:0] IMemBlock;

  // Wires between arbiter and ahb_lite
  logic HWrite, HReady;
  logic [31:0] HAddr;
  logic [3:0] ByteMask = 4'b1111;
  
  // instruction cache with a block size of 4 words and 16 lines
  // instr_cache #(4, 8) 
  //   instr_cache(.clk(clk), .reset(reset), .BusReady(BusReadyF),
  //               .a(PCF), .HRData(HRData), .RD(InstrF), 
  //               .IStall(IStall));

  // Read straight from the memory, then write to the cache
  // cache with a block size of 4 words and 16 lines (Parameterized block size not functional)
  // data_associative_cache #(4, 16) data_cache(.clk(clk), .reset(reset), .MemWriteM(MemWriteM), .IStall(IStall),
  //                       .MemtoRegM(MemtoRegM), .Valid(Valid), .a(DataAdrM), .MemBlock(HRData),
  //                       .rd(ReadDataM), .Stall(DStall), .MemRE(MemRE), .HWriteM(HWriteM));

  data_writeback_associative_cache #(4, 2) 
    data_cache(.clk(clk), .reset(reset), .MemWriteM(MemWriteM), .MemtoRegM(MemtoRegM), 
               .BusReady(BusReadyM), .IStall(IStall), .A(DataAdrM), .WD(WriteDataM),
               .HRData(HRData), .ByteMask(ByteMask), .HWData(HWData), .RD(ReadDataM), .HAddr(HAddrM),
               .Stall(DStall), .MemRE(MemRE), .HWriteM(HWriteM));

  // Create ahb arbiter
  ahb_arbiter ahb_arb(.HWriteM(HWriteM), .IStall(IStall), .DStall(DStall), .HReady(HReady),
              .HAddrM(HAddrM), .HAddrF(PCF), .HReadyF(BusReadyF), .HReadyM(BusReadyM),
              .HAddr(HAddr), .HWrite(HWrite));

  // Create an ahb memory
  ahb_lite ahb(.HCLK(clk), .HRESETn(reset), .HADDR(HAddr), .HWRITE(HWrite),
               .HWDATA(HWData), .HRDATA(HRData), .HREADY(HReady));

  // Create memory with a 2 cycle delay and 4 word block size (Parameterized block size not functional)
  // mem_simulation #(2, 4) ms(.clk(clk), .we(HWriteM), .re(MemRE),
  //                   .a(DataAdrM), .wd(WriteDataM), .rd(HRData), 
  //                   .Valid(Valid));

  // Create instruction memory with a 2 cycle delay and 4 word block size 
  // (parameterized block size not functional)
  // imem_simulation #(2, 4) ims(.clk(clk), .re(IMemRE), .a(PCF), .rd(IMemBlock), 
  //                     .Valid(BusReadyF));

  imem imem(PCF, InstrF);
  assign IStall = 1'b0;
  // assign DStall = 1'b0;
  // dmem dmem(.clk(clk), .we(MemWriteM), .a(DataAdrM), 
  //           .wd(WriteDataM), .rd(ReadDataM));
  //---------------------- Added for memory ----------------
endmodule