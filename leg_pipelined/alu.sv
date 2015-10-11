module alu(input  logic [31:0] AIn, BIn,
           input  logic [2:0]  ALUOperation,
           input logic         InvertB, ReverseInputs, ALUCarryIn,
           output logic [31:0] Result,
           output logic [3:0]  Flags,
           input  logic ShifterCarryOut_cycle2E, ShifterCarryOut_cycle1E, PrevRSRstateE);

 /***** Brief Description *******
 * First Created by Ivan Wong for Clay Wolkin 2014-2015
 * ALU receives all control signals from Controller.
 * To be implemented in 32-bit datapath.
 ******************************/
  logic        Neg, Zero, Carry, Overflow, ShifterCarryOutE;
  logic [31:0] Condinvb, A, B;
  logic [32:0] Sum;

  // In RSR we do shift and op on different cycles. We need to save the shifter flag
  assign ShifterCarryOutE = PrevRSRstateE ? ShifterCarryOut_cycle2E : ShifterCarryOut_cycle1E;

  mux2 #(32)  alu_inA(AIn, BIn, ReverseInputs, A); 
  mux2 #(32)  alu_inB(BIn, AIn, ReverseInputs, B); 

  assign Condinvb = InvertB ? ~B : B;
  assign Sum = A + Condinvb + ALUCarryIn;
 
  always_comb
    casex (ALUOperation[2:0]) 
      3'b000: Result = A & Condinvb;
      3'b001: Result = A ^ Condinvb;
      3'b010: Result = Sum;
      3'b011: Result = A | Condinvb;
      3'b100: Result = Condinvb;
      3'b101: Result = {Condinvb[31:1], 1'b0};
      default: Result = Sum;
    endcase

  // Order is NZCV
  assign Neg      = Result[31];
  assign Zero     = (Result == 32'b0);
  assign Carry    = Sum[32]; 
  assign Overflow = ~(A[31] ^ B[31]) & (A[31] ^ Sum[31]);

  assign Flags = {Neg, Zero, Carry, Overflow};
endmodule