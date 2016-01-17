module rotator(input  logic [31:0] ExtImmD,
              input logic [31:0] InstrD,
              output logic [31:0] RotImm,
              output logic ZeroRotate,
              input logic		noRotateD);
 
 /***** Brief Description *******
 * First created by Ivan Wong for Clay Wolkin 2014-2015
 * 32-BIT DATAPATH DECODE STAGE
 * Rotator is used for Data-processing I-type instructions which require an
 * immediate rotated by another rotate_immediate. 
 *
 ******************************/
reg[63:0] temp;
logic [4:0] shiftamt;
assign shiftamt = {InstrD[11:8],1'b0};
assign ZeroRotate = InstrD[11:8] == 0; // Whether or not rotate is zero is important for setting the carry flag. See shifter.
always_comb
	if (InstrD[27:25] == 3'b001 & ~noRotateD) // Note: The noRotateD might now be deprecated after some new updates to the rest of datapath & controller. 
	  begin
	    temp = ({ExtImmD,ExtImmD}) >> shiftamt;
	    RotImm = temp[31:0];
	  end
	else
	  RotImm = ExtImmD[31:0];


endmodule