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

module data_writeback_associative_cache_way 
    #(parameter lines = 65536, parameter tbits = 14, 
      parameter bsize = 4)
    (input logic clk, reset, WE, DirtyIn, vin, InvAll, Inv, Clean,
      input logic [31:0] WD,
      input logic [31:0] A, // TODO: Make a capitalized
      input logic [tbits-1:0] PhysTag,
      input logic [3:0]  ByteMask,
      output logic RV, Dirty,
      output logic [tbits-1:0] RTag,
      output logic [bsize*32-1:0] RD);

/***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * data_writeback_associative_cache_way:
 * Contains the memory associated with one cache way. 
 * This includes four words per line along with the valid, dirty, and tag bits.
 ******************************/

  parameter setbits = $clog2(lines);
  parameter blockoffset = $clog2(bsize);

  logic [  tbits-1:0] tag[lines-1:0]; // n lines x tbits
  logic [  lines-1:0] v, DirtyBits; // n lines x 1 bit
  logic [setbits-1:0] set           ; // n lines 16 bit address
  logic [       31:0] rd0, rd1, rd2, rd3;

  // Read the data from the cache immediately
  assign set   = A[blockoffset+2+setbits-1:blockoffset+2];
  assign word  = A[blockoffset+2:2];         // Current word (for writing single words)
  assign RTag  = tag[set];
  assign RV    = v[set];
  assign RD    = {rd3, rd2, rd1, rd0};
  assign Dirty = DirtyBits[set];

  // Set write enables for each word memory
  assign we0 = WE & (A[3:2] == 2'b00);
  assign we1 = WE & (A[3:2] == 2'b01);
  assign we2 = WE & (A[3:2] == 2'b10);
  assign we3 = WE & (A[3:2] == 2'b11);

  // Create four word memories
  word_memory #(lines) wm0 (.clk(clk), .we(we0), .wd(WD), .set(set), .ByteMask(ByteMask), .rd(rd0));
  word_memory #(lines) wm1 (.clk(clk), .we(we1), .wd(WD), .set(set), .ByteMask(ByteMask), .rd(rd1));
  word_memory #(lines) wm2 (.clk(clk), .we(we2), .wd(WD), .set(set), .ByteMask(ByteMask), .rd(rd2));
  word_memory #(lines) wm3 (.clk(clk), .we(we3), .wd(WD), .set(set), .ByteMask(ByteMask), .rd(rd3));

  // Write to the cache
  always_ff @(posedge clk, posedge reset)
    if (reset | InvAll) begin
      v         <= 'b0;
      DirtyBits <= 'b0;
    end else if (Inv & ~Clean) begin
      v[set] <= 1'b0;
    end else if (~Inv & Clean) begin
      DirtyBits[set] <= 1'b0;
    end else if (Inv & Clean) begin
      v[set] <= 1'b0;
      DirtyBits[set] <= 1'b0;
    end else if (WE) begin
      // TODO: REmove (used for debugging)
      //$display("Wrote %h to tag[set] at time %d. set = %h", PhysTag, $time, set);
      tag[set]      <= PhysTag; // Write the tag
      v[set]        <= vin;               // write the valid bit
      
      // Clean the block if writing an entire block
      DirtyBits[set]<= DirtyIn;            
    end

endmodule
