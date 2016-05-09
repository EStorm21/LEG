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

module data_replicator (input  logic        ByteorWord, //byte or word 
						input  logic		Halfword,	// if halfword
                        input  logic [31:0] DataIn, //Data word from memory
              		    output logic [31:0] DataOut);

/***** Brief Description *******
 * Created by Eric Storm 2014-2015
 * 32-BIT DATAPATH EXECUTE STAGE
 * The data_selector is used for STR, STRB and STRH to select the data (including offset)
 * Gets data from registers and chooses output to write accordingly to memory.
 *
 ******************************/
  mux3 #(32) sizeSelect(DataIn, {4{DataIn[7:0]}}, {2{DataIn[15:0]}}, {Halfword, ByteorWord}, DataOut); // 00 is word, 01 is byte, 10 is halfword.
endmodule