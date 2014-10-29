module multiplier(input  logic [31:0] aIn, bIn,
           input logic [2:0] MultControlE,
           output logic [31:0] ResultA, ResultB,
           output logic [3:0]  Flags,
           input logic [1:0] previousCVflag); // [1] = C flag, [0] = V flag

  logic        neg, zero, carry, overflow;
  logic [63:0] product, product_signed;
  logic        long, sign, accumulate;
  logic signed [31:0] aIn_signed, bIn_signed;

  assign {long, sign, accumulate} = MultControlE;

 assign aIn_signed = aIn;
 assign bIn_signed = bIn;
 assign product_signed = aIn_signed * bIn_signed;

  assign product = sign ? product_signed : aIn * bIn;
 


  // Order is NZCV
  assign neg      = long ? product[63] : product[31];
  assign zero     = long ? (product == 64'b0) : (product[31:0] == 32'b0);
  assign carry    = previousCVflag[1];
  assign overflow = previousCVflag[0];

  assign Flags = {neg, zero, carry, overflow};
  assign ResultA = long ? product[63:32] : product[31:0];
  assign ResultB = long ? product[31:0] : product[63:32];
endmodule