module data_cache_memory #(parameter entries = 65536, parameter tagbits = 14)
                    (input logic clk, reset, we, 
                     input logic [31:0] wd, // Create 896B Cache (128 entries)
                     input logic [31:0] a,
                     output logic rv,
                     output logic [tagbits-1:0] rtag,
                     output logic [31:0] rd);

  parameter setbits = $clog2(entries);

  logic [tagbits-1:0] tag[entries-1:0]; // n entries x tagbits
  logic [entries-1:0] v;                // n entries x 1 bit
  logic [setbits-1:0]  set;             // n entries 16 bit address
  logic [31:0] RAM[entries-1:0];        // n entries x 32 bits

  // initial
  //   begin
  //     // $readmemh("C:/Users/Max/Desktop/Google Drive/Clay-Wolkin/Testing/ldr_strtest/ldr_str_ri.dat",RAM);
  //     // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/ldr_strtest/ldr_str_ri.dat",RAM);
  //     for (int i = 0; i <= entries-1; i++)
  //       v[i] = 0; 
  //   end

  // Read the data from the cache immediately
  assign set = a[2+setbits:2];
  assign rtag = a[31:31-tagbits];
  assign rv = v[set];
  assign rd = RAM[set];

  // Write to the cache
  always_ff @(posedge clk, posedge reset)
    if (reset) begin
      v <= 'b0;
    end else if (we) begin
      RAM[set] <= wd; // write the data
      v[set]    <= 1'b1;  // write the valid bit
      tag[set]  <= rtag;  // write the tag
    end
endmodule
