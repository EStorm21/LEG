module extend(input  logic [23:0] Instr,
              input  logic [1:0]  ImmSrc,
              output logic [31:0] ExtImm,
              // Added to take care of RSR and R type shift instructions in Execute stage.
              input  logic 		  RiType, SignExtend);
 
  always_comb
    case(ImmSrc) 
      2'b00:   if (RiType) ExtImm = {24'b0, Instr[7:0]};  // 8-bit unsigned immediate - NEED TO LOOK @ 4 bits ROTATE NEXT
      		   else ExtImm = {20'b0, Instr[11:0]};			// Checks for Rr type with immediate shifts on register info
      2'b01:   if (SignExtend) ExtImm = {{20{Instr[11]}}, Instr[11:0]};
             else ExtImm = {20'b0, Instr[11:0]}; // 12-bit unsigned immediate for LDR and STR
      2'b10:   ExtImm = {{6{Instr[23]}}, Instr[23:0], 2'b00}; // Branch
      default: ExtImm = 32'bx; // undefined
    endcase             
endmodule