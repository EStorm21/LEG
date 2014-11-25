module rotator(input  logic [31:0] ExtImmD,
              input logic [31:0] InstrD,
              output logic [31:0] RotImm,
              input logic		noRotateD);
 
/* Here's a potential nicer rotator
 * This rotator is needed because it does the I-type data processing instructions
 */
reg[63:0] temp;
logic [4:0] shiftamt;
assign shiftamt = (InstrD[11:8] << 1);
always_comb
	if (InstrD[27:25] == 3'b001 & ~noRotateD)
	  begin
	    temp = ({ExtImmD,ExtImmD}) >> shiftamt;
	    RotImm = temp[31:0];
	  end
	else
	  RotImm = ExtImmD[31:0];


endmodule