module rotator(input  logic [31:0] ExtImmD,
              input  logic [1:0]  ImmSrc,
              input logic [31:0] InstrD,
              output logic [31:0] RotImm
              //output logic rotatorCout, ---> Don't know if this is necessary yet. 
              );
 

  always_comb
  if(InstrD[27:25] == 3'b001) begin
    case(InstrD[11:8]) 
      4'b0000:   RotImm = {ExtImmD[31:0]};  // 32 bit keep the same
      4'b0001:   RotImm = {ExtImmD[1:0], 24'b0, ExtImmD[7:2]}; // Rotate Right by 2 bits, need 32 bits total
      4'b0010:   RotImm = {ExtImmD[3:0], 24'b0, ExtImmD[7:4]}; // Rotate Right by 2 bits, need 32 bits total
      4'b0011:   RotImm = {ExtImmD[5:0], 24'b0, ExtImmD[7:6]}; // Rotate Right by 2 bits, need 32 bits total
      4'b0100:   RotImm = {ExtImmD[7:0], 24'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b0101:   RotImm = {2'b0, ExtImmD[7:0], 22'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b0110:   RotImm = {4'b0, ExtImmD[7:0], 20'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b0111:   RotImm = {6'b0, ExtImmD[7:0], 18'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b1000:   RotImm = {8'b0, ExtImmD[7:0], 16'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b1001:   RotImm = {10'b0, ExtImmD[7:0], 14'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b1010:   RotImm = {12'b0, ExtImmD[7:0], 12'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b1011:   RotImm = {14'b0, ExtImmD[7:0], 10'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b1100:   RotImm = {16'b0, ExtImmD[7:0], 8'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b1101:   RotImm = {18'b0, ExtImmD[7:0], 6'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b1110:   RotImm = {20'b0, ExtImmD[7:0], 4'b0 }; // Rotate Right by 2 bits, need 32 bits total
      4'b1111:   RotImm = {22'b0, ExtImmD[7:0], 2'b0 }; // Rotate Right by 2 bits, need 32 bits total
      default: RotImm = 32'bx; // undefined
    endcase             
  end
  else begin
    RotImm = ExtImmD[31:0];
  end

/*
// Here's a potential nicer rotator
    reg[63:0] temp;
    integer rotateAmount;
    assign rotateAmount = InstrD[11:8];
    assign temp = {ExtImmD,ExtImmD} >> rotateAmount;
    assign RotImm = temp[31:0];
  */

  /*
reg[63:0] temp;
integer rotateAmount;
always_comb
  if (ImmSrc[1:0] == 2'b00) begin
// Here's a potential nicer rotator
    //rotateAmount = InstrD[11:8];
    temp = {ExtImmD,ExtImmD} >> InstrD[11:8];
    RotImm = temp[31:0];
  end*/

endmodule