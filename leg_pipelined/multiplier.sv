module multiplier(input logic clk, reset, 
           input  logic [31:0] AIn, BIn,
           input logic [1:0] MultControlE,
           output logic [31:0] Result,
           output logic [3:0]  Flags,
           input logic [1:0] PreviousCVflag, // [1] = C flag, [0] = V flag
           input logic       ZFlagKeptE,
           output logic      CarryHidden); 
 
 /***** Brief Description *******
 * First Created by Eric Storm for Clay Wolkin 2014-2015
 * Handles Multiply instructions!
 ******************************/
 
  logic        Neg, Zero, Carry, Overflow;
  logic [63:0] Product_unsigned, Product_signed;
  logic        High, Signed;
  logic signed [31:0] AIn_signed, BIn_signed;

  assign {Signed, High} = MultControlE;

 assign AIn_signed = AIn;
 assign BIn_signed = BIn;
 assign Product_signed = AIn_signed * BIn_signed;
 assign Product_unsigned = AIn * BIn; 

  mux4 #(32) signSelect(Product_unsigned[31:0], Product_unsigned[63:32], Product_signed[31:0], Product_signed[63:32], MultControlE, Result);


  // For all multiply instructions, overflow and carry are either UNAFFECTED or
  // UNPREDICTABLE. For this implementation, they are always UNAFFECTED.
  assign CarryHidden = Result[31];
  assign Carry    = PreviousCVflag[1];
  assign Overflow = PreviousCVflag[0];
  assign Zero = High ? ZFlagKeptE & (Result == 0) : (Result == 0);
  assign Neg = Result[31];

  assign Flags = {Neg, Zero, Carry, Overflow};

endmodule