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
  logic [31:0] memdata;
  
  //instr_cache icache(.clk(clk), .a(PCF), .rd(InstrF), .hit(ihit), 
  //                 .validData(ivalidData), .memread(imemread));

  // 128 entry data cache
  data_cache #(128) data_cache(.clk(clk), .reset(reset), .we(MemWriteM), .MemtoRegM(MemtoRegM), .valid(valid), 
                        .a(DataAdrM), .wd(WriteDataM), .memdata(memdata),
                        .rd(ReadDataM), 
                        .stall(dstall), .memread(memread), .memwrite(memwrite));

  mem_simulation #(5) ms(.clk(clk), .we(memwrite), .re(memread),
                    .a(DataAdrM), .wd(WriteDataM), .rd(memdata), 
                    .valid(valid));

  imem imem(PCF, InstrF);
  // dmem dmem(.clk(clk), .we(MemWriteM), .a(DataAdrM), 
  //           .wd(WriteD), .rd(ReadDataM));
  //---------------------- Added for memory ----------------
endmodule