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
  logic [4*32-1:0] MemBlock;

  // instr cache - Note these are temporarily separate to test the caches
  //               before a shared memory is bus is implemented.
  logic IValid;
  logic IMemRE;
  logic [4*32-1:0] IMemBlock;
  
  // instr_cache icache(.clk(clk), .a(PCF), .rd(InstrF), .hit(ihit), 
  //                 .validData(ivalidData), .MemRE(IMemRE));
  // instruction cache with a block size of 4 words and 16 lines
  instr_cache #(4, 128) instr_cache(.clk(clk), .reset(reset), .Valid(IValid),
                            .a(PCF), .MemBlock(IMemBlock), .rd(InstrF), 
                            .Stall(IStall), .MemRE(IMemRE));

  // Read straight from the memory, then write to the cache
  // cache with a block size of 4 words and 16 lines (Parameterized block size not functional)
  data_associative_cache #(4, 16) data_cache(.clk(clk), .reset(reset), .MemWriteM(MemWriteM), .MemtoRegM(MemtoRegM), .Valid(Valid), 
                        .a(DataAdrM), .MemBlock(MemBlock),
                        .rd(ReadDataM), 
                        .Stall(DStall), .MemRE(MemRE), .MemWE(MemWE));

  // Create memory with a 2 cycle delay and 4 word block size (Parameterized block size not functional)
  mem_simulation #(2, 4) ms(.clk(clk), .we(MemWE), .re(MemRE),
                    .a(DataAdrM), .wd(WriteDataM), .rd(MemBlock), 
                    .Valid(Valid));

  // Create instruction memory with a 2 cycle delay and 4 word block size 
  // (parameterized block size not functional)
  imem_simulation #(2, 4) ims(.clk(clk), .re(IMemRE), .a(PCF), .rd(IMemBlock), 
                      .Valid(IValid));

  // imem imem(PCF, InstrF);
  // assign IStall = 1'b0;
  // dmem dmem(.clk(clk), .we(MemWriteM), .a(DataAdrM), 
  //           .wd(WriteD), .rd(ReadDataM));
  //---------------------- Added for memory ----------------
endmodule