module multiplier(input  logic [31:0] aIn, bIn,
           output logic [31:0] Result,
           output logic [3:0]  Flags,
           input logic [1:0] previousCVflag); // [1] = C flag, [0] = V flag

  logic        neg, zero, carry, overflow;
  logic [32:0] product;

 
                 
  assign product = aIn * bIn;
 


  // Order is NZCV
  assign neg      = product[31];
  assign zero     = (product == 32'b0);
  assign carry    = previousCVflag[1];
  assign overflow = previousCVflag[0];

  assign Flags = {neg, zero, carry, overflow};
  assign Result = product;
endmodule