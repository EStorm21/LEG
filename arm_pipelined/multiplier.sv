module multiplier(input logic clk, reset, MultEnable, StallE,
           input  logic [31:0] AIn, BIn,
           input logic [2:0] MultControlE,
           output logic [31:0] ResultA, ResultB,
           output logic [3:0]  Flags,
           input logic [1:0] PreviousCVflag); // [1] = C flag, [0] = V flag

  logic        Neg, Zero, Carry, Overflow, NegAccum, ZeroAccum;
  logic [63:0] Product, Product_signed, ProductKept, ProdAccumLong;
  logic        Long, Sign, Accumulate;
  logic signed [31:0] AIn_signed, BIn_signed;
  logic [31:0] ResultA1, ResultB1, ResultAccumLongA, ResultAccumLongB, ResultAccumLongBKept;
  logic [2:0] MultControlKept, MultControlKeptTwice;

  assign {Long, Sign, Accumulate} = MultControlE;

 assign AIn_signed = AIn;
 assign BIn_signed = BIn;
 assign Product_signed = AIn_signed * BIn_signed;

  assign Product = Sign ? Product_signed : AIn * BIn;
 


  // Order is NZCV
  assign Neg1      = Long ? Product[63] : Product[31];
  assign Zero1     = Long ? (Product == 64'b0) : (Product[31:0] == 32'b0);
  assign Carry    = PreviousCVflag[1];
  assign Overflow = PreviousCVflag[0];

  assign Flags = {Neg, Zero, Carry, Overflow};
  assign ResultA1 = Long ? Product[63:32] : Product[31:0];
  assign ResultB1 = Long ? Product[31:0] : Product[63:32];

  //Long Accumulate Multiply
  assign ProdAccumLong = ProductKept + BIn;
  assign ResultAccumLongB = ProdAccumLong[31:0];
  assign ResultAccumLongA = ProdAccumLong[63:32] + AIn;

  assign NegAccum = ResultAccumLongA[31];
  assign ZeroAccum = (ResultAccumLongA == 32'b0) & (ResultAccumLongB == 32'b0);



  assign Neg = (MultControlKept[0] & MultControlKept[2]) ? NegAccum : Neg1;
  assign Zero = (MultControlKept[0] & MultControlKept[2]) ? ZeroAccum : Zero1;
  assign ResultA = (MultControlKept[0] & MultControlKept[2]) ? ResultAccumLongA : ResultA1;
  assign ResultB = (MultControlKeptTwice[0] & MultControlKeptTwice[2]) ? ResultAccumLongBKept : ResultB1;

  flopenr #(64)  multProd(clk, reset, ~StallE & MultEnable, Product, ProductKept);
  flopenr #(3)  multContrl(clk, reset, ~StallE & MultEnable, MultControlE, MultControlKept);
  flopenr #(3)  multContrl2(clk, reset, ~StallE & MultEnable, MultControlKept, MultControlKeptTwice);
  flopenr #(32)  ResultBHold(clk, reset, ~StallE & MultEnable, ResultAccumLongB, ResultAccumLongBKept);


endmodule