module regfile(input  logic        clk, 
               input  logic        we3, 
               input  logic [4:0]  ra1, ra2, wa3, 
               input  logic [31:0] wd3, r15,
               output logic [31:0] rd1, rd2);

  logic [31:0] rf[14:0]; // System/User mode registers including PC
  logic [31:0] rg[15:0]; // Other registers

  //logic [31:0] rz; // Special register for microps
  // three ported register file
  // read two ports combinationally
  // write third port on falling edge of clock (midcycle)
  //   so that writes can be read on same cycle
  // register 15 reads PC+8 instead

  always_ff @(negedge clk)
    begin
    if (we3 & wa3[4]) 
      rg[wa3[3:0]] <= wd3;
    else if(we3)
      rf[wa3[3:0]] <= wd3;	
    end

  //assign rd1 = (ra1[4]) ? rg[ra1[3:0]] : rf[ra1[3:0]];
  //assign rd2 = (ra2[4]) ? rg[ra2[3:0]] : rf[ra2[3:0]];
  assign rd1 = (ra1[4]) ? rg[ra1[3:0]] : ((ra1 == 5'b01111) ? r15 : rf[ra1[3:0]]);
  assign rd2 = (ra2[4]) ? rg[ra2[3:0]] : ((ra2 == 5'b01111) ? r15 : rf[ra2[3:0]]);
endmodule