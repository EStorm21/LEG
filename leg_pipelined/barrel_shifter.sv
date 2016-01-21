module barrel_shifter(input  logic [31:0] a,
                      input  logic [ 4:0] shamt,
                      input  logic        left, shift, arith,
                      output logic [31:0] y);

  logic [31:0] x, rotOut; // intermediate signals
  logic [4:0] mux5_ctl;
  logic [7:0] mux8_ctl;


  // decode shamt to one-hot
  shift_decode dec(shamt, left, 
                   mux5_ctl, mux8_ctl);

  // 5:1 ror followed by 8:1 ror from CMOS VLSI Design 4th ed. 
  // First stage is ROR 0-3, +1 for left shift
  // Second stage is ROR 0,4,8,12,16,20,24,28 
  mux5_onehot sh5(a, {a[0],a[31:1]}, {a[1:0],a[31:2]}, {a[2:0],a[31:3]}, {a[3:0],a[31:4]}, mux5_ctl, 
                  x);

  mux8_onehot sh8(x, {x[3:0],x[31:4]}, {x[7:0],x[31:8]}, {x[11:0],x[31:12]}, {x[15:0],x[31:16]}, {x[19:0],x[31:20]}, {x[23:0],x[31:24]}, {x[27:0],x[31:28]}, mux8_ctl, 
                  rotOut);

  // Mask off some bits for shift, fill in with sign or 0
  shift_mask masker(rotOut, a[31], left, shift, arith, shamt,
                    y);

endmodule // barrel_shifter



// Decode the shift amount into values for use in one-hot muxes
module shift_decode(input  logic [4:0] shamt0,
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


// Mask the rotated output to create a shift output based on the type of operation
module shift_mask(input  logic [31:0] a,
                  input  logic        sign,
                  input  logic        left, shift, arith,
                  input  logic  [4:0] shamt,
                  output logic [31:0] y);

  logic [31:0] thermMask, mask, kill;
  logic fill;

  // Create mask thermometer
  bin_to_thermL therm(shamt, thermMask);

  // If left shift, we need to reverse the mask bits. Look up "streaming operator"
  assign mask = left ? {<<{thermMask}} : thermMask;

  // now fill in the masked bits with the correct value
  assign fill = arith & sign;
  assign kill = shift ? mask : 32'b0;
  assign y = (a & ~kill) | ({32{fill}} & mask);

endmodule // shift_mask



// Convert binary signal to 32-bit thermometer code, filling in from the msb. 
// Could be more efficiently implemented with prefix tree as in CMOS VLSI Design. 
// But that can be saved for later
module bin_to_thermL(input  logic [4:0] a,
                     output logic [31:0] y);
  integer i;
  always_comb
    for(i = 0; i < 32; i++) 
      y[i] = (31-i) < a;
endmodule // bin_to_thermL



// 5 input mux using one-hot select signal
module mux5_onehot(input  logic [31:0] a0, a1, a2, a3, a4,
                   input  logic [4:0]  sel,
                   output logic [31:0] y);
  always_comb
    casex(sel)
      5'b????1 : y = a0;
      5'b???1? : y = a1;
      5'b??1?? : y = a2;
      5'b?1??? : y = a3;
      5'b1???? : y = a4;
    endcase
endmodule // mux5_onehot


// 8 input mux using one-hot select signal
module mux8_onehot(input  logic [31:0] a0, a1, a2, a3, a4, a5, a6, a7,
                   input  logic [7:0]  sel,
                   output logic [31:0] y);
  always_comb
    casex(sel)
      8'b???????1 : y = a0;
      8'b??????1? : y = a1;
      8'b?????1?? : y = a2;
      8'b????1??? : y = a3;
      8'b???1???? : y = a4;
      8'b??1????? : y = a5;
      8'b?1?????? : y = a6;
      8'b1??????? : y = a7;
    endcase
endmodule // mux8_onehot