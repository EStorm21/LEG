module extend(input  logic [23:0] Instr,
              input  logic [1:0]  ImmSrc,
              output logic [31:0] ExtImm,
              // Added to take care of RSR and R type shift instructions in Execute stage.
              input  logic 		  RiType,
              // Added for LDR/STR instructions. They need 12 bit imm, not rotated
              input logic noRotate);
 
 /***** Brief Description *******
 * Created by Ivan Wong for Clay Wolkin 2014-2015
 * 32-BIT DATAPATH DECODE STAGE
 * Extender is used to ensure that the immediates are 32 bit in the pipeline
 * Different instructions have different immediate lengths
 *
 * SD 5/2/2014 Can probably clean this up. Look at 2'b01 for LDR/STR case. may condense b/c of micro ops
 ******************************/
  always_comb
    if (noRotate)
      ExtImm = {20'b0, Instr[11:0]}; // 12-bit unsigned immediate for LDR and STR
    else
      case(ImmSrc) 
        2'b00:   if (RiType) ExtImm = {24'b0, Instr[7:0]};  // 8-bit unsigned immediate - NEED TO LOOK @ 4 bits ROTATE NEXT
        		   else ExtImm = {20'b0, Instr[11:0]};			// Checks for Rr type with immediate shifts on register info
        2'b01:   ExtImm = {20'b0, Instr[11:0]}; // 12-bit unsigned immediate for LDR and STR
        2'b10:   ExtImm = {{6{Instr[23]}}, Instr[23:0], 2'b00}; // Branch
        2'b11:   ExtImm = {20'b0, 4'b0, Instr[11:8], Instr[3:0]}; // Halfwords
        default: ExtImm = 32'bx; // undefined
      endcase             
endmodule