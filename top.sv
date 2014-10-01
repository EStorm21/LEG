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
  logic ihit;
  logic ivalidData;
  logic imemread;
  //instr_cache icache(.clk(clk), .a(PCF), .rd(InstrF), .hit(ihit), 
  //                 .validData(ivalidData), .memread(imemread));
  data_cache data_cache(.clk(clk), .a(DataAdrM), .rd(ReadDataM), 
                        .wd(WriteDataM), .we(MemWriteM), .stall(dstall),
                        .MemtoRegM(MemtoRegM));
  imem imem(PCF, InstrF);
  // dmem dmem(.clk(clk), .we(MemWriteM), .a(DataAdrM), 
  //           .wd(WriteD), .rd(ReadDataM));
  //---------------------- Added for memory ----------------
endmodule