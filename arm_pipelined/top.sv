module top(input  logic        clk, reset, 
           output logic [31:0] WriteDataM, DataAdrM, 
           output logic        MemWriteM);

  logic DStall, IStall;
  logic [31:0] PCF, InstrF, ReadDataM;
  logic [3:0] ByteMaskM;
  
  // instantiate processor and memories
  arm arm(clk, reset, PCF, InstrF, MemWriteM, DataAdrM, 
          // Added for memory (DStall, MemtoRegM)
          WriteDataM, ReadDataM, DStall, IStall, MemtoRegM, ByteMaskM); 

  // data cache 
  logic Valid;
  logic HWriteM;
  logic HRequestM;
  logic [31:0] HRData, HWData;

  // instr cache - Note these are temporarily separate to test the caches
  //               before a shared memory is bus is implemented.
  logic BusReadyF, HRequestF;

  // Wires between arbiter and ahb_lite
  logic HWrite, HReady, HRequest;
  logic [31:0] HAddrM, HAddrF, HAddr;
  
  
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
  ahb_arbiter ahb_arb(.HWriteM(HWriteM), .IStall(IStall), .DStall(DStall), .HReady(HReady),
              .HAddrM(HAddrM), .HAddrF(HAddrF), .HRequestF(HRequestF), .HRequestM(HRequestM),
              .HReadyF(BusReadyF), .HReadyM(BusReadyM),
              .HAddr(HAddr), .HWrite(HWrite), .HRequest(HRequest));

  // Create an ahb memory
  ahb_lite ahb(.HCLK(clk), .HRESETn(reset), .HADDR(HAddr), .HWRITE(HWrite), .HREQUEST(HRequest),
               .HWDATA(HWData), .HRDATA(HRData), .HREADY(HReady));

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