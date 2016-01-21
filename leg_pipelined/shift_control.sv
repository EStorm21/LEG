module shift_control(input  logic [1:0] shtype,
                     input  logic [4:0] shamt0,
                     input  logic       isRtype, isRSRtype, zeroRotate, prevCflag, Csel,
                     output logic [4:0] shctl_5, // done
                     output logic [7:0] shctl_8, // done
                     output logic       shift, left, arith, shifterCarryIn, shifterCarryOut);

  // Create control signals for barrel shifter based on type of instruction
  logic zeroShift;
  assign zeroShift = shamt0 == 5'b00000;
  always_comb 
    casex({shtype, zeroShift})
      3'b00_? : {shift, left, arith} = 3'b110; // LSL
      3'b01_? : {shift, left, arith} = 3'b100; // LSR
      3'b10_? : {shift, left, arith} = 3'b101; // ASR
      3'b11_0 : {shift, left, arith} = 3'b001; // ROR
      3'b11_1 : {shift, left, arith} = 3'b101; // RRX, looks like ASR but we use C instead of sign
      default : {shift, left, arith} = 3'b110; // shouldn't get here
    endcase

  // Select carry in for RRX based on Csel
  mux2 #(1) shinmux(prevCflag, shiftCarryIn, Csel, shifterCarryIn);

  // Decode shift amount into rotate mux control signals.
  logic [4:0] shamt;
  logic rrx;
  assign rrx = {shtype,zeroShift} == 3'b11_1;
  assign shamt = rrx ? 5'b00001 : shamt0; // Probably needs more work here to handle shifts of 32+
  shift_decoder shdec(shamt, left, shctl_5, shctl_8);

endmodule // shift_control