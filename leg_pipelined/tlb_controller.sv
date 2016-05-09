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

module tlb_controller #(parameter size = 16, parameter tagbits = 16) (
	input logic enable, we, valid, Miss, reset,
	input logic [tagbits-1:0] VirtTag,
	output logic [$clog2(size)-1:0] CAdr,
	output logic CRead, RRead, PAReady
);

/***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * tlb_controller determines the CAM address for the TLB entry and
 * creates the read and ready signals for the memories.
 ******************************/

assign CRead = enable & ~we;
assign RRead = enable & ~we;
assign CAdr = (VirtTag[$clog2(size)-1:0] == 'h0) ? 4'hf : VirtTag[$clog2(size)-1:0]; // TODO: Fixme
assign PAReady = valid & ~Miss & ~reset | ~enable;

endmodule
