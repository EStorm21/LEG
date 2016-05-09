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

// Create an n bit counter with reset and enable
module countEn #(parameter n)
	(input logic clk, reset, en,
	 output logic[n-1:0] q);
	always_ff @(posedge clk)
    if(reset) begin
        q <= 0;
    end else begin
        if (en) begin
            q <= q + 1;
        end else begin
            q <= q;
        end
    end
endmodule