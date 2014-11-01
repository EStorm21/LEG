module alu(input  logic [31:0] aIn, bIn,
           input  logic [2:0]  ALUOperation, CVUpdate,
           input logic         InvertB, ReverseInputs, ALUCarry,
           output logic [31:0] Result,
           output logic [3:0]  Flags,
           input logic [1:0] PreviousCVFlag, // [1] = C flag, [0] = V flag
           input  logic shifterCarryOut_cycle2E, shifterCarryOut_cycle1E, prevRSRstateE, keepV);

  logic        neg, zero, carry, overflow, shifterCarryOutE;
  logic [31:0] condinvb, a, b;
  logic [32:0] sum;

  always_comb 
  begin
    if(prevRSRstateE)
      shifterCarryOutE = shifterCarryOut_cycle2E;
    else
      shifterCarryOutE = shifterCarryOut_cycle1E;
  end

  mux2 #(32)  alu_inA(aIn, bIn, ReverseInputs, a); 
  mux2 #(32)  alu_inB(bIn, aIn, ReverseInputs, b); 

  assign condinvb = InvertB ? ~b : b;
  assign sum = a + condinvb + ALUCarry;
 
  always_comb
    casex (ALUOperation[2:0]) // ------------------------ change to 3 bit type of operation
      3'b000: Result = a & condinvb;
      3'b001: Result = a ^ condinvb;
      3'b010: Result = sum;
      3'b011: Result = a | condinvb;
      3'b100: Result = condinvb;
      default: Result = sum;
    endcase

  // Order is NZCV
  assign neg      = Result[31];
  assign zero     = (Result == 32'b0);
  // FLAG HANDLING
  always_comb
    casex (CVUpdate[2:0])
      3'b000: begin carry = shifterCarryOutE;  // AND, TST, EOR, TEQ, ORR, MOV, MVN, BIC
                    overflow = PreviousCVFlag[0]; end
      3'b101: begin carry = sum[32];           // SUB, RSB, ADC, SBC, RSC, CMP
                    overflow = (a[31] ^ b[31]) & (a[31] ^ sum[31]); end
      3'b100: begin carry = sum[32];           // CMN
                    overflow = ~(a[31] ^ b[31]) & (a[31] ^ sum[31]); end
      3'b110: begin carry = sum[32];           // ADD
                    overflow = keepV ? PreviousCVFlag[0] : ~(a[31] ^ b[31]) & (a[31] ^ sum[31]); end
      //default: begin carry = PreviousCVFlag[1]; 
      //               overflow = PreviousCVFlag[0]; end
    endcase


  assign Flags = {neg, zero, carry, overflow};
endmodule