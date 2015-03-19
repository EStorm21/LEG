module alu(input  logic [31:0] AIn, BIn,
           input  logic [2:0]  ALUOperation, CVUpdate,
           input logic         InvertB, ReverseInputs, ALUCarry,
           output logic [31:0] Result,
           output logic [3:0]  Flags,
           input logic [1:0] PreviousCVFlag, // [1] = C flag, [0] = V flag
           input  logic ShifterCarryOut_cycle2E, ShifterCarryOut_cycle1E, PrevRSRstateE, KeepV);

  logic        Neg, Zero, Carry, Overflow, ShifterCarryOutE;
  logic [31:0] Condinvb, A, B;
  logic [32:0] Sum;

  // TODO: Move cycle2E and cycle1E to controller; let controller send single bit to ALU.
  // Make this as structural as possible - Talk to David.

  assign ShifterCarryOutE = PrevRSRstateE ? ShifterCarryOut_cycle2E : ShifterCarryOut_cycle1E;

  mux2 #(32)  alu_inA(AIn, BIn, ReverseInputs, A); 
  mux2 #(32)  alu_inB(BIn, AIn, ReverseInputs, B); 

  assign Condinvb = InvertB ? ~B : B;
  assign Sum = A + Condinvb + ALUCarry;
 
  always_comb
    casex (ALUOperation[2:0]) // ------------------------ change to 3 bit type of operation
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

  // TODO: Flags move to control/ext datapath
  // FLAG HANDLING
  always_comb
    casex (CVUpdate[2:0])
      3'b000: begin Carry = ShifterCarryOutE;  // AND, TST, EOR, TEQ, ORR, MOV, MVN, BIC
                    Overflow = PreviousCVFlag[0]; end
      3'b101: begin Carry = Sum[32];           // SUB, RSB, ADC, SBC, RSC, CMP
                    Overflow = (A[31] ^ B[31]) & (A[31] ^ Sum[31]); end
      3'b100: begin Carry = Sum[32];           // CMN
                    Overflow = ~(A[31] ^ B[31]) & (A[31] ^ Sum[31]); end
      3'b110: begin Carry = Sum[32];           // ADD
                    Overflow = KeepV ? PreviousCVFlag[0] : ~(A[31] ^ B[31]) & (A[31] ^ Sum[31]); end
      //default: begin Carry = PreviousCVFlag[1]; 
      //               Overflow = PreviousCVFlag[0]; end
    endcase


  assign Flags = {Neg, Zero, Carry, Overflow};
endmodule