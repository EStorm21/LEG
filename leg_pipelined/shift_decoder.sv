// Decode the shift amount into values for use in one-hot muxes
module shift_decoder(input  logic [4:0] shamt0,
                    input  logic       left,
                    output logic [4:0] m5,
                    output logic [7:0] m8);

  // A left shift by k is a right shift by ~k + 1. Invert here, handle +1 in mux5
  logic [4:0] shamt;
  assign shamt = left ? ~shamt0 : shamt0;

  always_comb begin
    // Create one-hot mux5 decode from shamt[1:0] and left
    case({shamt[1:0],left})
      3'b00_0: m5 = 5'b00001;
      3'b00_1: m5 = 5'b00010;
      3'b01_0: m5 = 5'b00010;
      3'b01_1: m5 = 5'b00100;
      3'b10_0: m5 = 5'b00100;
      3'b10_1: m5 = 5'b01000;
      3'b11_0: m5 = 5'b01000;
      3'b11_1: m5 = 5'b10000;
    endcase

    // Create one-hot mux8 decode from shamt[4:2]
    case(shamt[4:2])
      3'b000: m8 = 8'b00000001;
      3'b001: m8 = 8'b00000010;
      3'b010: m8 = 8'b00000100;
      3'b011: m8 = 8'b00001000;
      3'b100: m8 = 8'b00010000;
      3'b101: m8 = 8'b00100000;
      3'b110: m8 = 8'b01000000;
      3'b111: m8 = 8'b10000000;
    endcase 
  end
endmodule // shift_decoder