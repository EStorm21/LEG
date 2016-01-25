module shift_control(input  logic [1:0] shtype,
                     input  logic [4:0] R_shamt0,
                     input  logic [7:0] RSR_shamt,
                     input  logic       isRtype, isRSRtype, zeroRotate, prevCflag, multCsel,
                     input  logic       multCarryIn, a0, a31, rot0, rot31,
                     output logic [4:0] shctl_5, 
                     output logic [7:0] shctl_8, 
                     output logic       shift, left, arith, longshift, rrx_in, shifterCarryOut);

  logic rrx, longShift, shiftSelect;
  logic [4:0] R_shamt;
  logic [5:0] actualShift;
  assign rrx = (shtype == 2'b11) & ~isRSRtype & (R_shamt0 == 5'b00000);
  assign R_shamt = rrx ? 5'b00001 : R_shamt0;
  assign shiftSelect = isRSRtype | isRtype;
  // Exactly what it says on the tin. Take all the possibilities. Output 0 when we don't use shifter.
  // Note that LSL and RRX don't shift by 32 even when shift amount is 0
  assign actualShift = {6{shiftSelect}} & (isRSRtype ? {(|RSR_shamt[7:5]),RSR_shamt[4:0]} 
                                                     : {((shtype != 2'b00) & (R_shamt == 0)), R_shamt});
  // A shift of 32+. Tells the shifter to mask everything.
  assign longshift = actualShift[5];

  // Create control signals for barrel shifter based on type of instruction
  always_comb 
    casex({shtype, isRSRtype, rrx})
      4'b00_?_? : {shift, left, arith} = 3'b110; // LSL
      4'b01_?_? : {shift, left, arith} = 3'b100; // LSR
      4'b10_?_? : {shift, left, arith} = 3'b101; // ASR
      4'b11_1_? : {shift, left, arith} = 3'b001; // ROR
      4'b11_0_0 : {shift, left, arith} = 3'b001; // ROR
      4'b11_0_1 : {shift, left, arith} = 3'b101; // RRX, looks like ASR but we use C instead of sign
      default   : {shift, left, arith} = 3'b110; // shouldn't get here
    endcase

  // Select carry in for RRX. If not rrx, always select the lsb of the shifter input
  mux3 #(1) shinmux(prevCflag, multCarryIn, a0, {~rrx,multCsel}, rrx_in);

  // Decode shift amount into rotate mux control signals.
  shift_decoder shdec(actualShift[4:0], left, shctl_5, shctl_8);

  // Select the proper carry out based on the shift type. This depends on RSR, shift type, and shift amount
  logic shift0 =  actualShift == 6'b000000;
  logic shift32 = actualShift == 6'b100000 | rrx;
  logic shift33 = actualShift  > 6'b100000;
  always_comb
    casez({shiftSelect, isRSRtype, shift33, shift32, shift0, shtype})
    // Shifts by 1-31
      7'b1_?_000_00 : shifterCarryOut = rot0;  // LSL 
      7'b1_?_000_01 : shifterCarryOut = rot31; // LSR 
      7'b1_?_000_10 : shifterCarryOut = rot31; // ASR 
      7'b1_?_000_11 : shifterCarryOut = rot31; // ROR (rrx forces shift32)
    // R type shifts by 0 (only LSL)
      7'b1_0_001_?? : shifterCarryOut = prevCflag;  // LSL 
    // R type shifts by 32 (including RRX)
      7'b1_0_?10_00 : shifterCarryOut = prevCflag;  // LSL (should never get here) 
      7'b1_0_?10_01 : shifterCarryOut = a31; // LSR 
      7'b1_0_?10_10 : shifterCarryOut = a31; // ASR 
      7'b1_0_?10_11 : shifterCarryOut = a0;  // RRX
    // RSR type shifts by 0
      7'b1_1_001_?? : shifterCarryOut = prevCflag;  // ALL
    // RSR type shifts by 32
      7'b1_1_010_00 : shifterCarryOut = a0;  // LSL 
      7'b1_1_010_01 : shifterCarryOut = a31; // LSR 
      7'b1_1_010_10 : shifterCarryOut = a31; // ASR 
      7'b1_1_010_11 : shifterCarryOut = a31; // ROR
    // RSR type shifts by 33+
      7'b1_1_100_00 : shifterCarryOut = 0;  // LSL 
      7'b1_1_100_01 : shifterCarryOut = 0; // LSR 
      7'b1_1_100_10 : shifterCarryOut = a31; // ASR 
      7'b1_1_100_11 : shifterCarryOut = rot31; // ROR
    // Not a shift (including I type)
      7'b0_?_???_?? : shifterCarryOut = zeroRotate ? prevCflag : a31; // From the immediate
      default       : shifterCarryOut = prevCflag;
    endcase

endmodule // shift_control