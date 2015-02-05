module regfile(input  logic        clk, 
               input  logic        we3, 
               input  logic [31:0]  ra1, ra2, wa3, 
               input  logic [31:0] wd3, r15,
               output logic [31:0] rd1, rd2);

 /***** Brief Description *******
 *
 * 32-BIT DATAPATH DECODE STAGE
 * Register file stores all registers, including Rz (Hidden temp register) but excluding R15.
 * Currently only user/system mode R0-R14 are accessible
 * Recently added R16 thru R30 to be accessible --> R31 is shadow register Rz 
 * ==> See addressdecode.sv for full mapping of registers R0 - R31 for each status mode.
 *
 ******************************/

  logic [31:0] rf[31:0]; // System/User mode registers including PC
  logic [4:0]  ra1_5b, ra2_5b, wa3_5b;  
  
  // three ported register file
  // read two ports combinationally
  // write third port on falling edge of clock (midcycle)
  //   so that writes can be read on same cycle
  // register 15 reads PC+8 instead

  always_ff @(negedge clk)
    begin
    if(we3)
      rf[wa3_5b] <= wd3;	
    end
  
  /** DECODE MODULE TEMPORARILY NEEDED
   * when real transistor layout comes around, use 32 bit wordlines and bitlines.
   **/
  integer i;
  always_comb begin
    for(i = 0; i < 32; i = i+1) begin
      if(ra1[i]) ra1_5b = i;
      if(ra2[i]) ra2_5b = i;
      if(wa3[i]) wa3_5b = i;
    end
  end
  // -----------------------------

  // Version 3
  assign rd1 = (ra1_5b == 5'b01111) ? r15 : rf[ra1_5b];
  assign rd2 = (ra2_5b == 5'b01111) ? r15 : rf[ra2_5b];
  
endmodule