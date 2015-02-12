module rotator(input  logic [31:0] ExtImmD,
              input logic [31:0] InstrD,
              output logic [31:0] RotImm,
              input logic		noRotateD);
 
 /***** Brief Description *******
 *
 * 32-BIT DATAPATH DECODE STAGE
 * Rotator is used for Data-processing I-type instructions which require an
 * immediate rotated by another rotate_immediate. 
 *
 ******************************/
reg[63:0] temp;
logic [4:0] shiftamt;
assign shiftamt = (InstrD[11:8] << 1);
always_comb
	if (InstrD[27:25] == 3'b001 & ~noRotateD) // Note: The noRotateD might now be deprecated after some new updates to the rest of datapath & controller. 
	  begin
	    temp = ({ExtImmD,ExtImmD}) >> shiftamt;
	    RotImm = temp[31:0];
	  end
	else
	  RotImm = ExtImmD[31:0];


endmodule