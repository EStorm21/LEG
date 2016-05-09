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

module microps_reg_selector(input  logic [15:0] RegisterListNow,
              output logic [15:0] RegisterListNext,
              output logic [3:0]  Rd);
/* Brief
First created by Ivan Wong 2014-2015

Takes in a RegisterList (for ldm/stm) and modifies the register list for subsequent ldm/stm 
instructions.

*/

always_comb
  if (RegisterListNow[0] == 1'h1) begin
    RegisterListNext = {RegisterListNow[15:1], 1'b0};
    Rd = 4'd0;
  end
  else if (RegisterListNow[1:0] == 2'h2) begin
    RegisterListNext = {RegisterListNow[15:2], 2'b0};
    Rd = 4'd1;
  end
  else if (RegisterListNow[2:0] == 3'h4) begin
    RegisterListNext = {RegisterListNow[15:3], 3'b0};
    Rd = 4'd2;
  end
  else if (RegisterListNow[3:0] == 4'h8) begin
    RegisterListNext = {RegisterListNow[15:4], 4'b0};
    Rd = 4'd3;
  end
  else if (RegisterListNow[4:0] == 5'h10) begin
    RegisterListNext = {RegisterListNow[15:5], 5'b0};
    Rd = 4'd4;
  end
  else if (RegisterListNow[5:0] == 6'h20) begin
    RegisterListNext = {RegisterListNow[15:6], 6'b0};
    Rd = 4'd5;
  end
  else if (RegisterListNow[6:0] == 7'h40) begin
    RegisterListNext = {RegisterListNow[15:7], 7'b0};
    Rd = 4'd6;
  end
  else if (RegisterListNow[7:0] == 8'h80) begin
    RegisterListNext = {RegisterListNow[15:8], 8'b0};
    Rd = 4'd7;
  end
  else if (RegisterListNow[8:0] == 9'h100) begin
    RegisterListNext = {RegisterListNow[15:9], 9'b0};
    Rd = 4'd8;
  end
  else if (RegisterListNow[9:0] == 10'h200) begin
    RegisterListNext = {RegisterListNow[15:10], 10'b0};
    Rd = 4'd9;
  end
  else if (RegisterListNow[10:0] == 11'h400) begin
    RegisterListNext = {RegisterListNow[15:11], 11'b0};
    Rd = 4'd10;
  end
  else if (RegisterListNow[11:0] == 12'h800) begin
    RegisterListNext = {RegisterListNow[15:12], 12'b0};
    Rd = 4'd11;
  end
  else if (RegisterListNow[12:0] == 13'h1000) begin
    RegisterListNext = {RegisterListNow[15:13], 13'b0};
    Rd = 4'd12;
  end
  else if (RegisterListNow[13:0] == 14'h2000) begin
    RegisterListNext = {RegisterListNow[15:14], 14'b0};
    Rd = 4'd13;
  end
  else if (RegisterListNow[14:0] == 15'h4000) begin
    RegisterListNext = {RegisterListNow[15:15], 15'b0};
    Rd = 4'd14;
  end
  else if (RegisterListNow[15:0] == 16'h8000) begin
    RegisterListNext = {16'b0};
    Rd = 4'd15;
  end
  else begin
    RegisterListNext = {16'b0};
    Rd = 4'd0;
  end

endmodule
