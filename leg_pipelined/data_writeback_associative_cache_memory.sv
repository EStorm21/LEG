// data_writeback_associative_cache_memory
// mwaugaman@hmc.edu 8 August 2015
// Cache memory module. Used by instruction and data cache

module data_writeback_associative_cache_memory #(
  parameter lines = 65536, parameter tbits = 14,
  parameter bsize = 4
) (
  input  logic             clk, reset, W1WE, W2WE, DirtyIn, vin, cleanCurr, invalidate,
  input  logic [     31:0] CacheWD, ANew ,
  input  logic [tbits-1:0] PhysTag       ,
  input  logic [      3:0] ActiveByteMask,
  input  logic [      1:0] CacheRDSel    ,
  output logic             W1V, W2V, W1D, W2D, CurrLRU,
  output logic [tbits-1:0] W1Tag, W2Tag  ,
  output logic [     31:0] W1RD, W2RD
);

parameter setbits = $clog2(lines);

logic [bsize*32-1:0] W1BlockOut, W2BlockOut;
logic [lines-1:0] LRU;     // LRU Table

// Create LRU Table
assign set = ANew[bsize+setbits-1:bsize];  // ANew only modifies the block offset
always_ff @(posedge clk, posedge reset) begin
  if(reset) begin
      LRU <= 'b0;
  end else if (W1WE | W2WE) begin
      LRU[set] <= W2WE;
  end
end
assign CurrLRU = LRU[set]; // Send the current LRU bit to the output

// Way 1
data_writeback_associative_cache_way #(lines, tbits, bsize) way1(
  .clk(clk), .reset(reset), .invalidate(invalidate), .WD(CacheWD), .A(ANew), 
  .WE(W1WE), .DirtyIn(DirtyIn), .cleanCurr(cleanCurr), .PhysTag   (PhysTag),
  .ByteMask(ActiveByteMask), .RV(W1V), .Dirty(W1D), .RTag(W1Tag), .RD(W1BlockOut),
  .vin(vin));

// Way 2
data_writeback_associative_cache_way #(lines, tbits, bsize) way2(
   .clk(clk), .reset(reset), .invalidate(invalidate), .WD(CacheWD), .A(ANew), 
   .WE(W2WE), .DirtyIn(DirtyIn), .cleanCurr(cleanCurr), .PhysTag   (PhysTag),
   .ByteMask(ActiveByteMask), .RV(W2V), .Dirty(W2D), .RTag(W2Tag), .RD(W2BlockOut),
   .vin(vin));

// Word selection mux's
// Way1 Word select mux
mux4 #(32) c1mux
    (W1BlockOut[31:0],        W1BlockOut[2*32-1:32],
     W1BlockOut[3*32-1:2*32], W1BlockOut[4*32-1:3*32],
     CacheRDSel, W1RD);

// Way1 Word select mux
mux4 #(32) c2mux
   (W2BlockOut[31:0],        W2BlockOut[2*32-1:32],
    W2BlockOut[3*32-1:2*32], W2BlockOut[4*32-1:3*32],
    CacheRDSel, W2RD);

endmodule
