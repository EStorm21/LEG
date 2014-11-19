module data_writeback_associative_cache_memory #(parameter lines = 65536, parameter tagbits = 14, 
                           parameter blocksize = 4)
                    (input logic clk, reset, WE, MemWriteM,
                     input logic [blocksize*32-1:0] WD, 
                     input logic [31:0] a,
                     output logic RV, Dirty,
                     output logic [tagbits-1:0] RTag,
                     output logic [blocksize*32-1:0] RD);

  parameter setbits = $clog2(lines);
  parameter blockoffset = $clog2(blocksize);

  logic [tagbits-1:0] tag[lines-1:0];       // n lines x tagbits
  logic [lines-1:0] v, DirtyBits;           // n lines x 1 bit
  logic [setbits-1:0]  set;                 // n lines 16 bit address
  logic [blocksize*32-1:0] RAM[lines-1:0];  // n lines x blocksize bits

  // Read the data from the cache immediately
  assign set = a[blocksize+setbits-1:blocksize];
  assign word = a[blockoffset+2:2];         // Current word (for writing single words)
  assign RTag = tag[set];
  assign RV = v[set];
  assign RD = RAM[set];
  assign Dirty = DirtyBits[set]; 

  // Write to the cache
  always_ff @(posedge clk, posedge reset)
    if (reset) begin
      v         <= 'b0;
      DirtyBits <= 'b0;
    end else if (WE) begin
      RAM[set]      <= WD;           // Write the new block
      tag[set]      <= a[31:31-tagbits+1]; // Write the tag
      v[set]        <= 1'b1;               // write the valid bit
      
      // Clean the block if writing an entire block
      DirtyBits[set]<= MemWriteM ? 1'b1 : 1'b0;            
    end
endmodule
