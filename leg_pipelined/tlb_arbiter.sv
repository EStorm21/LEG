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

module tlb_arbiter( input logic PAReady, RequestPAM, RequestPAF, IStall, 
                    output logic PAReadyF, PAReadyM, RequestPA);

/***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * tlb_arbiter controls access to the TLB by the instruction and data caches.
 * In a more traditional processor, two TLB's would be implemented to 
 * handle simultaneous requests from the D$ and I$. This processor uses one
 * for simplicity and gives priority access to the D$.
 ******************************/

    assign PAReadyF = RequestPAF & ~RequestPAM & PAReady;
    assign PAReadyM = RequestPAM & PAReady;
    assign RequestPA = RequestPAF | RequestPAM;
endmodule
