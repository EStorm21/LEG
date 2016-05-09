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

module synchronizer(input logic    clk, reset, IRQ, FIQ,
					output logic   IRQsync, FIQsync);
	logic IRQ_intermediate, FIQ_intermediate;

	flopr #(1) irq_sync(clk, reset, IRQ, IRQ_intermediate);
	flopr #(1) irq_sync2(clk, reset, IRQ_intermediate, IRQsync);

	flopr #(1) fiq_sync(clk, reset, FIQ, FIQ_intermediate);
    flopr #(1) fiq_sync2(clk, reset, FIQ_intermediate, FIQsync);

endmodule