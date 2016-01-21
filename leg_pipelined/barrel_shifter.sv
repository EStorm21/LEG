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