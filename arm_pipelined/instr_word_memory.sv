module instr_word_memory #(parameter lines = 16, parameter setbits = $clog2(lines))
    (input logic clk, we,
    input logic [31:0] wd,
    input logic [setbits-1:0] set, 
    output logic [31:0] rd);

  // Create 4 byte memories
  logic [7:0] BYTE0[lines-1:0];  // n lines x blocksize bits
  logic [7:0] BYTE1[lines-1:0];  // n lines x blocksize bits
  logic [7:0] BYTE2[lines-1:0];  // n lines x blocksize bits
  logic [7:0] BYTE3[lines-1:0];  // n lines x blocksize bits

  assign rd = {BYTE3[set], 
               BYTE2[set],
               BYTE1[set],
               BYTE0[set]};

  // Write to the memory
  always_ff @(posedge clk)
    if (we) begin
      BYTE0[set] <= wd[7:0];
      BYTE1[set] <= wd[15:8];
      BYTE2[set] <= wd[23:16];
      BYTE3[set] <= wd[31:24];
    end

endmodule