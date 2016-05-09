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

module shift_decoder(input  logic [4:0] shamt0,
                    input  logic       left,
                    output logic [4:0] m5,
                    output logic [7:0] m8);

/***** Brief Description *******
 * Decode the shift amount into values for use in one-hot muxes
 ******************************/

  // A left shift by k is a right shift by ~k + 1. Invert here, handle +1 in mux5
  logic [4:0] shamt;
  assign shamt = left ? ~shamt0 : shamt0;

  always_comb begin
    // Create one-hot mux5 decode from shamt[1:0] and left
    case({shamt[1:0],left})
      3'b00_0: m5 = 5'b00001;
      3'b00_1: m5 = 5'b00010;
      3'b01_0: m5 = 5'b00010;
      3'b01_1: m5 = 5'b00100;
      3'b10_0: m5 = 5'b00100;
      3'b10_1: m5 = 5'b01000;
      3'b11_0: m5 = 5'b01000;
      3'b11_1: m5 = 5'b10000;
    endcase

    // Create one-hot mux8 decode from shamt[4:2]
    case(shamt[4:2])
      3'b000: m8 = 8'b00000001;
      3'b001: m8 = 8'b00000010;
      3'b010: m8 = 8'b00000100;
      3'b011: m8 = 8'b00001000;
      3'b100: m8 = 8'b00010000;
      3'b101: m8 = 8'b00100000;
      3'b110: m8 = 8'b01000000;
      3'b111: m8 = 8'b10000000;
    endcase 
  end
endmodule // shift_decoder