module instr_cache_memory #(parameter lines = 65536, parameter tagbits = 14, 
                           parameter blocksize = 4)
                    (input logic clk, reset, we, 
                     input logic [blocksize*32-1:0] wd, 
                     input logic [31:0] a,
                     output logic rv,
                     output logic [tagbits-1:0] rtag,
                     output logic [blocksize*32-1:0] rd);

  parameter setbits = $clog2(lines);
  parameter blockoffset = $clog2(blocksize);

  initial
    begin
      //$readmemh("C:/Users/estor_000/Downloads/simTest.dat",RAM);
      $readmemh("F:/Academics/Research Clay Wolkin - ARM v4/ARM/tests/simTest.dat",RAM); //teqrs
      //$readmemh("F:/Academics/Research Clay Wolkin - ARM v4/ARM/test_most_RType/test_most_RType.dat",RAM);
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/ldr_strtest/ldr_str_ri.dat",RAM);
      // $readmemh("C:/Users/Max/Desktop/Google Drive/Clay-Wolkin/Testing/ldr_strtest/ldr_str_ri.dat",RAM);

  logic [tagbits-1:0] tag[lines-1:0];       // n lines x tagbits
  logic [lines-1:0] v, dirty;               // n lines x 1 bit
  logic [setbits-1:0]  set;                 // n lines 16 bit address
  logic [blocksize*32-1:0] RAM[lines-1:0];  // n lines x 32 bits

  // Read the data from the cache immediately
  assign set = a[blocksize+setbits-1:blocksize];
  assign rtag = tag[set];
  assign rv = v[set];
  assign rd = RAM[set];

  // Write to the cache
  always_ff @(posedge clk, posedge reset)
    if (reset) begin
      v <= 'b0;
    end else if (we) begin
      RAM[set]  <= wd; // write the data
      v[set]    <= 1'b1;  // write the valid bit
      tag[set]  <= a[31:31-tagbits+1];  // write the tag
    end

endmodule