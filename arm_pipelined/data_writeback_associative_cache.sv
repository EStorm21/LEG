// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
module data_writeback_associative_cache #(parameter blocksize = 4, parameter lines = 2)
                  (input  logic clk, reset, MemWriteM, MemtoRegM, BusReady, IStall,
                   input  logic [31:0] a, WD,
                   input  logic [blocksize*32-1:0] MemRD,
                   output logic [blocksize*32-1:0] MemWD,
                   output logic [31:0] RD, MemAddr,
                   output logic Stall, MemRE, MemWE);

    parameter setbits = $clog2(lines);
    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-$clog2(blocksize)-setbits;

    // W1V:  valid bit for way 1
    // W1EN: enable way 1, select way 1 for writeback
    // W1WE: way 1 write enable, W1WE = W1EN & CWE
    logic W1V, W2V, W1EN, W2EN, W1WE, W2WE;        
    logic [tagbits-1:0] W1Tag, W2Tag, CachedTag;
    logic CWE;                                    // Cache write enable
    logic [blocksize*32-1:0] W1WD, W2WD,          // Write data into caches
          W1BlockOut, W2BlockOut;                 // Way output (4 words)
    // W2RD:       Word selected from way 2 output
    // MemWord:    Word selected from memory in block
    // CacheOut:   Word chosen from way 1 or 2
    // CahcedAddr: Memory address used in writeback
    logic [31:0] W1RD, W2RD, MemWord, CacheOut, CachedAddr;
    // W1D:        Way 1 dirty bit
    // W2D:        Way 2 dirty bit
    // RDSel:      Select output from bus or from cache
    logic BlockWE, W1D, W2D, RDSel;

    // CacheIn Logic
    cacheIn #(blocksize) 
        w1in(.BlockWE(BlockWE), .MemWriteM(MemWriteM), 
             .MemRD(MemRD), .CacheBlock(W1BlockOut),
             .WD(WD), .WordOffset(a[3:2]), .BlockOut(W1WD));

    cacheIn #(blocksize) 
        w2in(.BlockWE(BlockWE), .MemWriteM(MemWriteM),
             .MemRD(MemRD), .CacheBlock(W2BlockOut),
             .WD(WD), .WordOffset(a[3:2]), .BlockOut(W2WD));

    // Way 1
    data_writeback_associative_cache_memory #(lines, tagbits, blocksize) way1(
       .clk(clk), .reset(reset), .WD(W1WD), .a(a), .WE(W1WE), .MemWriteM(MemWriteM),
       .RV(W1V), .Dirty(W1D), .RTag(W1Tag), .RD(W1BlockOut));

    // Way 2
    data_writeback_associative_cache_memory #(lines, tagbits, blocksize) way2(
       .clk(clk), .reset(reset), .WD(W2WD), .a(a), .WE(W2WE), .MemWriteM(MemWriteM),
       .RV(W2V), .Dirty(W2D), .RTag(W2Tag), .RD(W2BlockOut));

    // Cache Controller
    data_writeback_associative_cache_controller dcc(.*);

    // Create the logic for a Hit.
    logic [tagbits-1:0] Tag;
    logic W1Hit, W2Hit;
    assign Tag = a[31:31-tagbits+1];
    assign W1Hit = (W1V & (Tag == W1Tag));
    assign W2Hit = (W2V & (Tag == W2Tag));
    assign Hit = W1Hit | W2Hit;

    // Create LRU Table
    logic [lines-1:0] LRU;
    logic [setbits-1:0] set;
    assign set = a[blocksize+setbits-1:blocksize];
    always_ff @(posedge clk, posedge reset)
        if(reset) begin
            LRU <= 'b0;
        end else if (W1WE | W2WE) begin
            LRU[set] <= W2WE;
        end

    // Write-to logic
    // IN: W1V, W2V, LRU 
    // OUT: W1EN, W2EN
    always_comb
        begin
            // If there is a Hit in either cache, then write to the Hit cache
            if( W1Hit | W2Hit) begin
                W1EN = W1Hit;
                W2EN = W2Hit;
            end else
            // Neither or Both caches have Valid data, so write to LRU cache
            if(~(W1V ^ W2V)) begin 
                W1EN = LRU[set];
                W2EN = ~LRU[set];
            // One way has Valid data, so write to the other
            end else begin
                W1EN = ~W1V;
                W2EN = ~W2V;
            end
        end

    // Write Enable And gates
    assign W1WE = W1EN & CWE;
    assign W2WE = W2EN & CWE;

    // Dirty Mux
    assign Dirty = W1EN ? W1D : W2D;

    // MemWD Mux
    assign MemWD = W1EN ? W1BlockOut : W2BlockOut;

    // MemAddr Mux's
    assign CachedTag = W1EN ? W1Tag : W2Tag;
    assign CachedAddr = {CachedTag, a[31-tagbits:0]};
    assign MemAddr = MemWE ? CachedAddr : a;

    // Word selection mux's
    // TODO: Make these mux's mux parameterized

    // Way1 Word Select
    always_comb
    case (a[3:2])
        2'b00 : W1RD = W1BlockOut[31:0];
        2'b01 : W1RD = W1BlockOut[2*32-1 : 32];
        2'b10 : W1RD = W1BlockOut[3*32-1 : 2*32];
        2'b11 : W1RD = W1BlockOut[4*32-1 : 3*32];
        default : W1RD = W1BlockOut[31:0]; 
    endcase

    // Way2 Word Select
    always_comb
    case (a[3:2])
        2'b00 : W2RD = W2BlockOut[31:0];
        2'b01 : W2RD = W2BlockOut[2*32-1 : 32];
        2'b10 : W2RD = W2BlockOut[3*32-1 : 2*32];
        2'b11 : W2RD = W2BlockOut[4*32-1 : 3*32];
        default : W2RD = W2BlockOut[31:0]; 
    endcase

    // Way3 Word Select
    always_comb
    case (a[3:2])
        2'b00 : MemWord = MemRD[31:0];
        2'b01 : MemWord = MemRD[2*32-1 : 32];
        2'b10 : MemWord = MemRD[3*32-1 : 2*32];
        2'b11 : MemWord = MemRD[4*32-1 : 3*32];
        default : MemWord = MemRD[31:0]; 
    endcase

    // Select from the ways
    assign CacheOut = W1Hit ? W1RD : W2RD;

    // Select from cache or memory
    assign RD = RDSel ? MemWord : CacheOut;

endmodule