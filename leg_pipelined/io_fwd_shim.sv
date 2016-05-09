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

// Responsible for forwarding IO from qemu
module io_fwd_shim(input  logic        HCLK,
                   input  logic        HRESETn,
                   input  logic        HSEL,
                   input  logic        HREQUEST,
                   input  logic [31:0]  HADDR,
                   input  logic        HWRITE,
                   input  logic [31:0] HWDATA,
                   output logic [31:0] HRDATA,
                   output logic        fiq, irq, HREADY);

/***** Brief Description *******
 * io_fwd_shim forwards IO from qemu to the LEG processor.
 * This module sits on the AHB-Lite Bus and is used to send IO reads
 * and interrupts in the LEG processor. See ahb_decoder to determine
 * what address range is mapped to IO.
 ******************************/

    logic [31:0] readAddrs[$];
    logic [31:0] readVals[$];

    logic [31:0] HADDR_d;
    logic HSEL_d, HREQUEST_d, HWRITE_d;

    initial begin
        fiq <= 1'b0;
        irq <= 1'b0;
    end

    // Delay signals for ahb pipelining
    flopr #(32) addrdelay(HCLK, ~HRESETn, HADDR, HADDR_d);
    flopr #(3) delayflop(HCLK, ~HRESETn, {HSEL, HREQUEST, HWRITE}, {HSEL_d, HREQUEST_d, HWRITE_d});

    assign HREADY = HREQUEST_d & HSEL_d;

    always_ff @(posedge HCLK ) begin
        if(HREQUEST_d & HSEL_d & HWRITE_d) begin
            $displayh("IO write data %h to %h, @ %d", HWDATA, HADDR_d, $time);
            // Ignore writes (Qemu can handle it)
        end
        if(HREQUEST & HSEL & ~HWRITE) begin
            // $display("IO read data from %h", HADDR);
            if(readAddrs[0] == HADDR) begin
                // Pop the recorded read off, to match Qemu
                $displayh("IO read data %h from %h, @ %d ps", readVals[0], readAddrs[0], $time);
                void'( readAddrs.pop_front() );
                HRDATA <= readVals.pop_front();
            end else begin
                // This is an invalid read. Give garbage data
                $displayh("IO read invalid data (xxxxxxxx) from %h, @ %d ps", HADDR, $time);
                HRDATA <= 32'hxxxxxxxx;
            end
        end
    end

    // Called from ModelSim using
    // call sim:/testbench/dut/ahb/ioShim/pushRead <address> <value>
    function void pushRead;
        input [31:0] addr, val;
        $display("pushRead addr = %h, data = %h, time = %d", addr, val, $time);
        readAddrs.push_back(addr);
        readVals.push_back(val);
    endfunction

    // Called from ModelSim using
    // call sim:/testbench/dut/ahb/ioShim/setInterrupts <irq> <fiq>
    function void setInterrupts;
        input logic irqset, fiqset;
        if(~(irq == irqset) | ~(fiq==fiqset)) begin
            $display("Set interrupts, irq = %b, fiq = %b @ %d", irqset, fiqset, $time);
        end
        irq <= irqset;
        fiq <= fiqset;
    endfunction

endmodule // io_fwd_shim
