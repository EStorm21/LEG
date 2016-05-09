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

module dmem_ahb (
  input  logic        clk, HWRITE, HSEL, HREADY, HResetn,
  input  logic [31:0] a    , wd,
  input  logic [ 2:0] HSIZE,
  output logic [31:0] rd   ,
  output logic        Valid
);

/***** Brief Description *******
 * First Created by Max Waugaman 8 August 2015
 *
 * ahb_dmem: AHB-Lite RAM that delays address one cycle to simulate the AHB
 * address then data phase.
 ******************************/

  logic we, re;
  logic we_d, re_d, HSEL_d, HREQUEST_d;
  logic [31:0] a_d;
  logic [ 2:0] HSIZE_d;
  logic HREADYR;
  logic DelayEnable;

  assign we = HWRITE;
  assign re = ~HWRITE;

  flopr #(32) addrFlop(clk, ~HResetn, a, a_d);
  flopr #(3) hsizeFlop(clk, ~HResetn, HSIZE, HSIZE_d);
  flopr #(3) bitDelayFlop(clk, ~HResetn, {we, re, HSEL}, {we_d, re_d, HSEL_d});

  dmem m(.clk(clk), 
        .we(we_d), 
        .re(re_d),
        .HSEL(HSEL_d),
        .a(a_d),
        .wd(wd),
        .HSIZE(HSIZE_d),
        .rd(rd),
        .Valid(Valid));

endmodule
