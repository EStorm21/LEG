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

module instr_cache #(
    parameter bsize = 4,                    // Block size
    parameter lines = 2,                    // # of lines
    parameter setbits = $clog2(lines), 
    parameter blockbits = $clog2(bsize),
    parameter tbits = 30-blockbits-setbits
) (
    // From leg
    input  logic             clk, reset, uOpStallD,
    input  logic [     31:0] A       ,
    // From coprocessor
    input  logic             CP15en, AddrOp, InvAllMid, Inv,
    // From TLB
    input  logic [tbits-1:0] PhysTag , 
    input  logic             PAReadyF,
    // From AHB
    input  logic             FSel, BusReady,
    input  logic [     31:0] HRData  ,
    // To leg
    output logic [     31:0] RD,
    output logic             IStall,
    // To AHB
    output logic             HRequestF, RequestPA,
    output logic [     31:0] HAddrF
);

/***** Brief Description *******
 * First Created by Max Waugaman 22 September 2014
 *
 * instr_cache is the top level module for a 2-Way set associative
 * read only cache. This cache uses the same memory modules as the 
 * data cache, but disables the clean and dirty signals.
 ******************************/

    // Signal Declaration
    logic [         31:0] CacheWD, W1RD, W2RD, CacheOut, ANew;
    logic [    tbits-1:0] W1Tag, W2Tag, Tag; 
    logic [          3:0] ActiveByteMask;
    logic [blockbits-1:0] DataWordOffset ;
    logic [blockbits-1:0] AddrWordOffset ;
    logic [          1:0] CacheRDSel, Counter, WordOffset;
    logic                 W1V, W2V, W1WE, W2WE, ResetBlockOff, CurrLRU, DirtyIn;
    logic                 W1D, W2D, vin, WaySel, InvAll, Clean;

    // Create New Address using the counter as the word offset
    assign WordOffset     = A[blockbits+1:2];
    assign ANew           = {A[31:4], DataWordOffset, A[1:0]};
    assign HAddrF         = {Tag, A[31-tbits:4], AddrWordOffset, A[1:0]};

    assign CacheWD        = HRData;
    assign CacheRDSel     = WordOffset;
    assign vin            = CP15en; // Only validate cache lines when CP15end

    // Disable writeback behavior (read only cache)
    assign DirtyIn        = 1'b0;
    assign ActiveByteMask = 4'b1111;
    assign W1Clean        = 1'b0;
    assign W2Clean        = 1'b0;

    // Cache memory
    data_writeback_associative_cache_memory #(lines,tbits,bsize) icm (.*);

    // Cache Controller
    instr_cache_controller #(tbits) icc (.*);

    // Select from the ways
    mux2 #(32) CacheOutMux(W2RD, W1RD, WaySel, CacheOut);

    // Select from cache or memory
    assign RD = CacheOut;

endmodule
