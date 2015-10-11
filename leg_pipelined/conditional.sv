module conditional(input  logic [3:0] Cond,
                   input  logic [3:0] Flags,    // Previous flags
                   input  logic [3:0] ALUFlagsE,// incoming ALU flags
                   input  logic [1:0] MultFlagsE, // incoming multiplier flags
                   input  logic [1:0] FlagsWrite, // {update NZ, update CV}
                   output logic       CondEx,     // whether the instruction will be executed
                   output logic [3:0] FlagsNext,  // The new flags to base conditions on in the future
                   output logic [3:0] FlagsOut,   // The flags from the ALU or multiplier. Used by micro ops.
                   input  logic        MultSelectE, // Whether this is a multiply or ALU instruction
                   input  logic ShifterCarryOut_cycle2E, ShifterCarryOut_cycle1E, PrevRSRstateE, // Extra junk for using the shifter carry in a micro op
                   input  logic [2:0] CVUpdate, // Classes of ALU operations that do special things to the flags
                   input  logic LongMultHigh, LongMultlowZ, addZeroE, keepVE);  

/***** Brief Description *******
 * First Created by Ivan Wong for Clay Wolkin 2014-2015
 * CONTROLLER EXECUTE STAGE
 * Conditional is to check for conditional execution for instructions and whether flags should
 * be updated or not. 
 *
 ******************************/
  logic neg, zero, carry, overflow, ge;
  logic negNext, zeroNext, carryNext, overflowNext;
  logic aluZ, multZ;
  logic ShifterCarryOut;
  logic aluV;

  // Compute conditional execution

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
    
  // Compute next flags

  // Negative flag
  // no special cases
  assign negNext = MultSelectE ? MultFlagsE[1] : ALUFlagsE[3];

  // Zero flag
  // Long multiplies must have zero in both high and low results. 
  // The ALU flags need to know about this too for mlal.
  assign multZ = LongMultHigh ? LongMultlowZ & MultFlagsE[0] : MultFlagsE[0];
  assign aluZ = addZeroE ? LongMultlowZ & ALUFlagsE[2] : ALUFlagsE[2];
  assign zeroNext = MultSelectE ? multZ : aluZ;


  // Carry flag
  // Multiplies never update C.
  // AND, TST, EOR, TEQ, ORR, MOV, MVN, BIC use the shifter carry out. We need to save this shifter carry when we have RSR
  assign ShifterCarryOut = PrevRSRstateE ? ShifterCarryOut_cycle2E : ShifterCarryOut_cycle1E;
  assign carryNext = (CVUpdate == 3'b000) ? ShifterCarryOut : ALUFlagsE[1];

  // Overflow flag
  // Multiplies require the ALU to keep the V flag UNAFFECTED
  // The same DP instructions special cased in C require V UNAFFECTED
  // Some require a negated overflow as well (SUB, RSB, ADC, SBC, RSC, CMP)
  assign aluV = (CVUpdate == 3'b101) ? ~ALUFlagsE[0] : ALUFlagsE[0];
  assign overflowNext = (CVUpdate == 3'b000 | keepVE) ? Flags[0] : aluV;

  assign FlagsNext[3:2] = (FlagsWrite[1] & CondEx) ? {negNext, zeroNext}       : Flags[3:2];
  assign FlagsNext[1:0] = (FlagsWrite[0] & CondEx) ? {carryNext, overflowNext} : Flags[1:0]; // [1] is C flag, [0] is V flag

  // FlagsOut are the flag results that may or may not be used to update CPSR. We need them in intermediate steps of micro ops.
  // Please think of a better name.
  assign FlagsOut = {negNext, zeroNext, carryNext, overflowNext};

endmodule