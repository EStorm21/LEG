module regfile(input  logic        clk, 
               input  logic        we3, 
               input  logic [4:0]  ra1, ra2, wa3, 
               input  logic [31:0] wd3, r15,
               output logic [31:0] rd1, rd2);

  logic [31:0] rf[14:0];
  logic [31:0] rz; // Special register for microps
  // three ported register file
  // read two ports combinationally
  // write third port on falling edge of clock (midcycle)
  //   so that writes can be read on same cycle
  // register 15 reads PC+8 instead

  always_ff @(negedge clk)
    if (we3) rf[wa3] <= wd3;	

  assign rd1 = (ra1[4]) ? rz : ((ra1 == 4'b1111) ? r15 : rf[ra1[3:0]]);
  assign rd2 = (ra2[4]) ? rz : ((ra2 == 4'b1111) ? r15 : rf[ra2[3:0]]);
endmodule