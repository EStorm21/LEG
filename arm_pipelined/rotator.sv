module rotator(input  logic [31:0] ExtImmD,
              input logic [31:0] InstrD,
              output logic [31:0] RotImm);
 
// Here's a potential nicer rotator
reg[63:0] temp;
//integer rotateAmount;
always_comb
if (InstrD[27:25] == 3'b001)
  begin
    //rotateAmount = InstrD[11:8];
    temp = {ExtImmD,ExtImmD} >> (InstrD[11:8] << 1);
    RotImm = temp[31:0];
  end
else
  RotImm = ExtImmD[31:0];


endmodule