// data_writeback_associative_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
module data_writeback_associative_cache #(parameter blocksize = 4, parameter lines = 2)
                  (input  logic clk, reset, MemWriteM, MemtoRegM, BusReady, IStall,
                   input  logic [31:0] A, WD,
                   input  logic [31:0] HRData,
                   input  logic [3:0]  ByteMask, 
                   output logic [31:0] HWData,
                   output logic [31:0] RD, HAddr,
                   output logic Stall, MemRE, HWriteM);

    parameter setbits = $clog2(lines);
    parameter blockbits = $clog2(blocksize);
    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-blockbits-setbits;

    // W1V:  valid bit for way 1
    // W1EN: enable way 1, select way 1 for writeback
    // W1WE: way 1 write enable, W1WE = W1EN & CWE
    logic W1V, W2V, W1EN, W2EN, W1WE, W2WE, ResetCounter;
    logic [tagbits-1:0] W1Tag, W2Tag, CachedTag;
    logic CWE;                                        // Cache write enable
    logic [blocksize*32-1:0] W1BlockOut, W2BlockOut;  // Way output (4 words)

    // W2RD:       Word selected from way 2 output
    // MemWord:    Word selected from memory in block
    // CacheOut:   Word chosen from way 1 or 2
    // ANew:       Address using iterated block offset
    // CahcedAddr: Memory address used in writeback
    // CacheWD:    Data to write into the cache, selected from memory or WD
    logic [31:0] W1RD, W2RD, CacheOut, ANew, CachedAddr, CacheWD;
    // W1D:        Way 1 dirty bit
    // W2D:        Way 2 dirty bit
    // RDSel:      Select output from bus or from cache
    logic BlockWE, W1D, W2D, RDSel;
    logic [tagbits-1:0] Tag;   // Tag bits
    logic [setbits-1:0] set;   // Set bits
    logic W1Hit, W2Hit;        // Hit signal from each way
    logic [lines-1:0] LRU;     // LRU Table
    logic [1:0] Counter, WordOffset, CacheRDSel;   // Counter for sequential buss access


    // CacheIn Logic
    cacheIn #(blocksize) ci(.*);

    // Create Counter for sequential bus access
    always_ff @(posedge clk, posedge reset)
        if(reset | ResetCounter) begin
            Counter <= 0;
        end else begin
            if (BusReady) begin
                Counter <= Counter + 1;
            end else begin
                Counter <= Counter;
            end
        end


    // Create New Address using the counter as the word offset
    assign ANew = ResetCounter ? A : {A[31:4], Counter, A[1:0]};

    // Mux for CacheRDSel
    assign WordOffset = A[blockbits+1:2];
    assign CacheRDSel = HWriteM ? Counter : WordOffset;

    // Way 1
    data_writeback_associative_cache_memory #(lines, tagbits, blocksize) way1(
       .clk(clk), .reset(reset), .WD(CacheWD), .A(ANew), .WE(W1WE), .MemWriteM(MemWriteM),
       .ByteMask(ByteMask), .RV(W1V), .Dirty(W1D), .RTag(W1Tag), .RD(W1BlockOut));

    // Way 2
    data_writeback_associative_cache_memory #(lines, tagbits, blocksize) way2(
       .clk(clk), .reset(reset), .WD(CacheWD), .A(ANew), .WE(W2WE), .MemWriteM(MemWriteM),
       .ByteMask(ByteMask), .RV(W2V), .Dirty(W2D), .RTag(W2Tag), .RD(W2BlockOut));

    // Cache Controller
    data_writeback_associative_cache_controller dcc(.*);

    // Create the logic for a Hit.
    assign Tag = A[31:31-tagbits+1];
    assign W1Hit = (W1V & (Tag == W1Tag));
    assign W2Hit = (W2V & (Tag == W2Tag));
    assign Hit = W1Hit | W2Hit;

    // Create LRU Table
    assign set = A[blocksize+setbits-1:blocksize];
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

    // HWData Mux
    assign HWData = W1EN ? W1RD : W2RD;

    // HAddr Mux's
    assign CachedTag = W1EN ? W1Tag : W2Tag;
    assign CachedAddr = {CachedTag, ANew[31-tagbits:0]};
    assign HAddr = HWriteM ? CachedAddr : ANew;

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

    // Select from the ways
    assign CacheOut = W1Hit ? W1RD : W2RD;

    // Select from cache or memory
    assign RD = RDSel ? HRData : CacheOut;

endmodule