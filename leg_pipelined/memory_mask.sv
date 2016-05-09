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

module memory_mask (input  logic       ByteOrWord, //byte or word 
					input  logic 	   Halfword,
					input  logic 	   HalfwordOffset,
                    input  logic [1:0] ByteOffset, //LSBs of address
              		output logic [3:0] FinalByteMask);

/***** Brief Description *******
 * Created by Eric Storm 2014-2015
 * CONTROLLER EXECUTE STAGE
 * The data_selector is used for STR, STRB and STRH to select the data (including offset)
 * Gets data from registers and chooses output to write accordingly to memory.
 *
 ******************************/
  logic [3:0] ByteMask, HalfwordMask, ByteorWordMask;
  mux4 #(4) byteSelect(4'b0001, 4'b0010, 4'b0100, 4'b1000, ByteOffset, ByteMask); 		// Get byte mask
  mux2 #(4) BoWSelect(4'b1111, ByteMask, ByteOrWord, ByteorWordMask);					// Choose between byte or word mask
  mux2 #(4) halfSelect(4'b0011, 4'b1100, HalfwordOffset, HalfwordMask);					// Get halfword mask
  mux2 #(4) finalSelect(ByteorWordMask, HalfwordMask, Halfword, FinalByteMask);			// Get Final mask: Either Byte, Word or Halfword.
endmodule	