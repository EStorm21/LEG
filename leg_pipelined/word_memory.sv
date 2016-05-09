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

module word_memory #(parameter lines = 16, parameter setbits = $clog2(lines))
    (input logic clk, we,
      input logic [31:0] wd,
      input logic [setbits-1:0] set,
      input logic [3:0] ByteMask,
      output logic [31:0] rd);

/***** Brief Description *******
 * First Created by Max Waugaman 2014
 *
 * word_memory is a 32-bit, byte addressible memory with configurable size. 
 ******************************/

  // Create 4 byte memories
  logic [7:0] BYTE0[lines-1:0];  // n lines x bsize bits
  logic [7:0] BYTE1[lines-1:0];  // n lines x bsize bits
  logic [7:0] BYTE2[lines-1:0];  // n lines x bsize bits
  logic [7:0] BYTE3[lines-1:0];  // n lines x bsize bits

  assign rd = {BYTE3[set], 
               BYTE2[set],
               BYTE1[set],
               BYTE0[set]};

  // Write to the memory
  always_ff @(posedge clk)
    if (we) begin
      BYTE0[set] <= ByteMask[0] ? wd[7:0]   : BYTE0[set];
      BYTE1[set] <= ByteMask[1] ? wd[15:8]  : BYTE1[set];
      BYTE2[set] <= ByteMask[2] ? wd[23:16] : BYTE2[set];
      BYTE3[set] <= ByteMask[3] ? wd[31:24] : BYTE3[set];
    end
endmodule