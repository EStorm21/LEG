module top(input  logic        clk, reset, 
           output logic [31:0] WriteDataM, DataAdrM, 
           output logic        MemWriteM);

  logic dstall; // Added for memory
  logic [31:0] PCF, InstrF, ReadDataM;
  
  // instantiate processor and memories
  arm arm(clk, reset, PCF, InstrF, MemWriteM, DataAdrM, 
          // Added for memory (dstall, MemtoRegM)
          WriteDataM, ReadDataM, dstall, MemtoRegM); 

  // ----------------------Added for memory------------------
  // cache outputs
  logic valid;
  logic memwrite;
  logic memread;
  logic [4*32-1:0] memdata;
  
  //instr_cache icache(.clk(clk), .a(PCF), .rd(InstrF), .hit(ihit), 
  //                 .validData(ivalidData), .memread(imemread));

  // 128 entry data cache with a block size of 4 words (Parameterized block size not functional)
  data_cache #(4, 128) data_cache(.clk(clk), .reset(reset), .MemWriteM(MemWriteM), .MemtoRegM(MemtoRegM), .valid(valid), 
                        .a(DataAdrM), .memdata(memdata),
                        .rd(ReadDataM), 
                        .stall(dstall), .memread(memread), .memwrite(memwrite));

  // Create memory with a 2 cycle delay and 4 word block size
  mem_simulation #(2, 4) ms(.clk(clk), .we(memwrite), .re(memread),
                    .a(DataAdrM), .wd(WriteDataM), .rd(memdata), 
                    .valid(valid));

  imem imem(PCF, InstrF);
  // dmem dmem(.clk(clk), .we(MemWriteM), .a(DataAdrM), 
  //           .wd(WriteD), .rd(ReadDataM));
  //---------------------- Added for memory ----------------
endmodule