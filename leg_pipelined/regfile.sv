/*
   LEG Processor for Education
   Copyright (C) 2016  Max Waugaman

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

module regfile(input  logic        clk, reset,
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
 * r10 also called sl
 * r11 also called fp
 * r12 also called ip
 * r13 also called sp
 * r14 also called lr
 *
 ******************************/

  logic [31:0] rf[31:0]; // System/User mode registers including PC
  logic [31:0] rd1_select, rd2_select;
  integer i, j;
  // three ported register file
  // read two ports combinationally
  // write third port on falling edge of clock (midcycle)
  //   so that writes can be read on same cycle
  // register 15 reads PC+8 instead

  always_ff @(negedge clk) begin
    if (reset)
      rf <= '{32{32'b0}};
    else begin
      for (j = 0; j < 32; j = j+1)
        if(we3 & wa3[15]) rf[15] <= 32'b0;
        else if(we3 & wa3[j]) rf[j] <= wd3;	
    end
  end
  

  // Version 4
  always_comb begin
    for(i = 0; i < 32; i = i+1) begin
      if(ra1[i]) rd1_select = rf[i];
      if(ra2[i]) rd2_select = rf[i];
    end
  end

  assign rd1 = ra1[15] ? r15 : rd1_select;
  assign rd2 = ra2[15] ? r15 : rd2_select;
  
endmodule