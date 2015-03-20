module conditional(input  logic [3:0] Cond,
                   input  logic [3:0] Flags,    // Previous flags
                   input  logic [3:0] ALUFlagsE, MultFlagsE, // Incoming ALU flags
                   input  logic [1:0] FlagsWrite,
                   output logic       CondEx,
                   output logic [3:0] FlagsNext,
                   input logic        MultSelectE);

/***** Brief Description *******
 *
 * CONTROLLER EXECUTE STAGE
 * Conditional is to check for conditional execution for instructions and whether flags should
 * be updated or not. 
 *
 ******************************/
  logic neg, zero, carry, overflow, ge;
  logic [3:0] ALUFlags;

  assign ALUFlags = MultSelectE ? MultFlagsE : ALUFlagsE;
  assign {neg, zero, carry, overflow} = Flags;
  assign ge = (neg == overflow);
                  
  always_comb
    case(Cond)
      4'b0000: CondEx = zero;             // EQ
      4'b0001: CondEx = ~zero;            // NE
      4'b0010: CondEx = carry;            // CS
      4'b0011: CondEx = ~carry;           // CC
      4'b0100: CondEx = neg;              // MI
      4'b0101: CondEx = ~neg;             // PL
      4'b0110: CondEx = overflow;         // VS
      4'b0111: CondEx = ~overflow;        // VC
      4'b1000: CondEx = carry & ~zero;    // HI
      4'b1001: CondEx = ~(carry & ~zero); // LS
      4'b1010: CondEx = ge;               // GE
      4'b1011: CondEx = ~ge;              // LT
      4'b1100: CondEx = ~zero & ge;       // GT
      4'b1101: CondEx = ~(~zero & ge);    // LE
      4'b1110: CondEx = 1'b1;             // Always
      default: CondEx = 1'bx;             // undefined
    endcase
    
  assign FlagsNext[3:2] = (FlagsWrite[1] & CondEx) ? ALUFlags[3:2] : Flags[3:2];
  assign FlagsNext[1:0] = (FlagsWrite[0] & CondEx) ? ALUFlags[1:0] : Flags[1:0]; // [1] is C flag, [0] is V flag
endmodule