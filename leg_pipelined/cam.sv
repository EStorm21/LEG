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

module cam #(parameter wordsize = 16, parameter lines = 16) (
    input logic clk, reset, enable, read, write,
    input logic [$clog2(lines)-1:0] CAdr,
    input logic [wordsize-1:0] CData,
    output logic [lines-1:0] Match
);

/***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * cam - content addressable memory used in the TLB
 ******************************/

// Create RAM
logic [wordsize-1:0] RAM[lines-1:0];

// Initialize CAM to 0
integer i;

// RAM Write
always_ff @(posedge clk)
  begin
    if(reset) begin
      for(i = 0; i < lines; i = i + 1) begin
        RAM[i] <= '0;
      end
    end else begin
      if (write & enable) begin
        // Word Write
        RAM[CAdr] <= CData;
      end
    end
  end

// Create Match Output
integer j;
always_comb
  begin
    for(j = 0; j < lines; j = j + 1) begin
      if(enable) begin
        Match[j] = (RAM[j] == CData);
        // $display("i = %d, Match[i] = %h, CData = %h",j, RAM[j], CData);
      end else begin
        Match[j] = 1'b0;
      end
    end
  end

endmodule // cam