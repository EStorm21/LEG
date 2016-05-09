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

module rotator(input  logic [31:0] ExtImmD,
              input logic [31:0] InstrD,
              output logic [31:0] RotImm,
              output logic ZeroRotate,
              input logic		noRotateD);
 
 /***** Brief Description *******
 * First created by Ivan Wong 2014-2015
 * 32-BIT DATAPATH DECODE STAGE
 * Rotator is used for Data-processing I-type instructions which require an
 * immediate rotated by another rotate_immediate. 
 *
 ******************************/
reg[63:0] temp;
logic [4:0] shiftamt;
assign shiftamt = {InstrD[11:8],1'b0};
assign ZeroRotate = InstrD[11:8] == 0; // Whether or not rotate is zero is important for setting the carry flag. See shifter.
always_comb
	if (InstrD[27:25] == 3'b001 & ~noRotateD) // Note: The noRotateD might now be deprecated after some new updates to the rest of datapath & controller. 
	  begin
	    temp = ({ExtImmD,ExtImmD}) >> shiftamt;
	    RotImm = temp[31:0];
	  end
	else
	  RotImm = ExtImmD[31:0];


endmodule