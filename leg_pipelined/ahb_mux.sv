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


module ahb_mux #(parameter WIDTH = 32) (
	input  logic [ 1:0] HSEL   ,
	input  logic [WIDTH-1:0] IN0, IN1, 
	output logic [WIDTH-1:0] OUT 
);

/***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * ahb_mux selects the data and ready signal from all the AHB peripherals
 ******************************/

               
  //assign OUT = IN0;
  always_comb
    casez(HSEL)
      2'b?1: OUT <= IN0;
      2'b10: OUT <= IN1;
      default: OUT <= IN0;
    endcase
endmodule