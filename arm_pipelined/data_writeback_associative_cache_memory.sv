module data_writeback_associative_cache_memory #(parameter lines = 65536, parameter tagbits = 14, 
                           parameter blocksize = 4)
                    (input logic clk, reset, WE, MemWriteM,
                     input logic [31:0] WD, 
                     input logic [31:0] a,
                     input logic [3:0]  Mask,
                     output logic RV, Dirty,
                     output logic [tagbits-1:0] RTag,
                     output logic [blocksize*32-1:0] RD);

  parameter setbits = $clog2(lines);
  parameter blockoffset = $clog2(blocksize);

  logic [tagbits-1:0] tag[lines-1:0];       // n lines x tagbits
  logic [lines-1:0] v, DirtyBits;           // n lines x 1 bit
  logic [setbits-1:0]  set;                 // n lines 16 bit address
  logic [31:0] rd0, rd1, rd2, rd3;          

  // Set write enables for each word memory
  assign we0 = WE & (a[3:2] == 2'b00);
  assign we1 = WE & (a[3:2] == 2'b01);
  assign we2 = WE & (a[3:2] == 2'b10);
  assign we3 = WE & (a[3:2] == 2'b11);

  // Read the data from the cache immediately
  assign set = a[blocksize+setbits-1:blocksize];
  assign word = a[blockoffset+2:2];         // Current word (for writing single words)
  assign RTag = tag[set];
  assign RV = v[set];
  assign RD = {rd3, rd2, rd1, rd0};
  assign Dirty = DirtyBits[set]; 

  // Create four word memories
  // TODO: Replace these with a c style for loop
  word_memory #(lines) wm0 (.clk(clk), .we(we0), .wd(WD), .set(set), .mask(Mask), .rd(rd0));
  word_memory #(lines) wm1 (.clk(clk), .we(we1), .wd(WD), .set(set), .mask(Mask), .rd(rd1));
  word_memory #(lines) wm2 (.clk(clk), .we(we2), .wd(WD), .set(set), .mask(Mask), .rd(rd2));
  word_memory #(lines) wm3 (.clk(clk), .we(we3), .wd(WD), .set(set), .mask(Mask), .rd(rd3));

  // Write to the cache
  always_ff @(posedge clk, posedge reset)
    if (reset) begin
      v         <= 'b0;
      DirtyBits <= 'b0;
    end else if (WE) begin
      tag[set]      <= a[31:31-tagbits+1]; // Write the tag
      v[set]        <= 1'b1;               // write the valid bit
      
      // Clean the block if writing an entire block
      DirtyBits[set]<= MemWriteM ? 1'b1 : 1'b0;            
    end
endmodule
