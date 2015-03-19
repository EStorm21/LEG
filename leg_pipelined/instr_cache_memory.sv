module instr_cache_memory #(parameter lines = 65536, parameter tagbits = 14, 
                           parameter blocksize = 4)
                    (input logic clk, reset, W1WE, W2WE, ResetCounter,
                     input logic [1:0] WordOffset,
                     input logic [31:0] HRData, ANew, 
                     output logic W1V, W2V, W1Hit, W2Hit, CurrLRU,
                     output logic [tagbits-1:0] W1Tag, W2Tag,
                     output logic [31:0] W1RD, W2RD);

  parameter setbits = $clog2(lines);
  parameter blockoffset = $clog2(blocksize);

  logic [tagbits-1:0] tag[lines-1:0]; // n lines x tagbits
  logic [lines-1:0] v, LRU;                // n lines x 1 bit
  logic [setbits-1:0]  set;           // n lines 16 bit address
  logic [31:0] rd3, rd2, rd1, rd0;    // Four words of instruction cache line
  logic [tagbits-1:0] Tag;
  logic [blocksize*32-1:0] W1BlockOut, W2BlockOut;

  // Create LRU Table
  assign set = ANew[blocksize+setbits-1:blocksize];
  always_ff @(posedge clk, posedge reset)
      if(reset) begin
          LRU <= 'b0;
      end else if (W1WE | W2WE) begin
          LRU[set] <= W2WE;
      end
  assign CurrLRU = LRU[set];

  // Create the logic for a Hit.
  assign Tag = ANew[31:31-tagbits+1];
  assign W1Hit = (W1V & (Tag == W1Tag));
  assign W2Hit = (W2V & (Tag == W2Tag));
  assign Hit = W1Hit | W2Hit;

  // Way 1
  instr_cache_way #(lines, tagbits, blocksize) way1(
     .clk(clk), .reset(reset), .WD(HRData), .A(ANew), .WE(W1WE),
     .rv(W1V), .RTag(W1Tag), .RD(W1BlockOut));

  // Way 2
  instr_cache_way #(lines, tagbits, blocksize) way2(
     .clk(clk), .reset(reset), .WD(HRData), .A(ANew), .WE(W2WE), 
     .rv(W2V), .RTag(W2Tag), .RD(W2BlockOut));

    // Word selection mux's
    // Way1 Word select mux
    mux4 #(32) c1mux
        (W1BlockOut[31:0],        W1BlockOut[2*32-1:32],
         W1BlockOut[3*32-1:2*32], W1BlockOut[4*32-1:3*32],
         WordOffset, W1RD);

    // Way1 Word select mux
    mux4 #(32) c2mux
       (W2BlockOut[31:0],        W2BlockOut[2*32-1:32],
        W2BlockOut[3*32-1:2*32], W2BlockOut[4*32-1:3*32],
        WordOffset, W2RD);

endmodule