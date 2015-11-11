module match_ram #(parameter wordsize = 16, parameter lines = 16) (
    input logic clk, reset, enable, read, write,
    input logic [lines-1:0] Match,
    input logic [$clog2(lines)-1:0] CAdr,
    inout logic [wordsize-1:0] RData
);

// Create RAM
logic [wordsize-1:0] RAM[lines-1:0];
logic [$clog2(lines)-1:0] RAM_Adr;

// Create Address for RAM (actual digital logic will use Matchline)
// FIXME: Use matchlines directly with registers
priority_encoder #(lines) pe(Match, RAM_Adr);

// Initialize RAM to 0
// FIXME: Replace RAM with register bank
integer i;
initial
  begin 
    for(i = 0; i < lines; i = i + 1) begin
      RAM[i] = '0;
    end
  end

// RAM Write
always_ff @(posedge clk)
  begin
    if (write & enable) begin
      // Word Write
      RAM[CAdr] <= RData;
    end
  end

// Create Read Output
assign RData = !write ? RAM[RAM_Adr] : 'bz;

endmodule // cam
