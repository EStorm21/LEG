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

module ahb_decoder(input  logic [31:0] HADDR,
                   output logic [1:0]  HSEL);

/***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * ahb_decoder uses HADDR to control the AHB Mux
 ******************************/

  // Decoding scheme used for qemu where IO is above address 32'h100000000
  assign HSEL[0] = (HADDR < 32'h10000000);
  assign HSEL[1] = (HADDR >= 32'h10000000);

  // Example: Decoding scheme with ROM, RAM, GPIO, and Timer
  // Decode based on most significant bits of the address
  // assign HSEL[0] = (HADDR[31:16] == 0x0000); // 64KB ROM  at 0x00000000 - 0x0000FFFF
  // assign HSEL[1] = (HADDR[31:17] == 0x0001); // 128KB RAM at 0x00020000 - 0x003FFFFF
  // assign HSEL[2] = (HADDR[31:4] == 0x2020000); // GPIO    at 0x20200000 - 0x20200007
  // assign HSEL[3] = (HADDR[31:8] == 0x200030);  // Timer   at 0x20003000 - 0x2000301B
endmodule
