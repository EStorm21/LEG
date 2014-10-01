module data_cache_memory (input logic clk, we,
                     input logic [31:0] wd, // Create 896B Cache (128 entries)
                     input logic [31:0] a,
                     output logic rv,
                     output logic [13:0] rtag,
                     output logic [31:0] rd);
  logic [13:0] tag[917503:0];   // 65536 entries x 14 bits
  logic [65535:0] v;            // 65536 entries x 1 bit
  logic [15:0]  set;            // 65536 entries 16 bit address
  logic [31:0] RAM[2097151:0];  // 65536 entries x 32 bits

  initial
    begin
      $readmemh("C:/Users/Max/Desktop/Google Drive/Clay-Wolkin/Testing/ldr_strtest/ldr_str_ri.dat",RAM);
      for (int i = 0; i <= 65535; i++)
        v[i] = 1; // How do I initialize the valid bits to 1?
    end

  // Read the data from the cache immediately
  assign set = a[17:2];
  assign rtag = a[31:18];
  assign rv = v[set];
  assign rd = RAM[set];

  // Write to the cache
  always_ff @(posedge clk)
    if (we) begin
      RAM[set] <= wd; // write the data
      v[set]    <= 1'b1;  // write the valid bit
      tag[set]  <= rtag;  // write the tag
    end
endmodule
