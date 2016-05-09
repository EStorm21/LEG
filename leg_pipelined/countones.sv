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

// Sam Dietrich sdietrich@hmc.edu
// 12/21/2015
// count the number of ones in a 16 bit number (up to 16)
// This implementation uses a cascade of 16 adders, but it could also be done with a tree as described at https://en.wikipedia.org/wiki/Hamming_weight. However, that requires many more adders.
// This module is needed for ldm and stm
module countones(input  logic [15:0] a,
               output logic [4:0] y);
             
  assign y =  a[15]+a[14]+a[13]+a[12]+a[11]+a[10]+a[9]+a[8]+a[7]+a[6]+a[5]+a[4]+a[3]+a[2]+a[1]+a[0];
endmodule
