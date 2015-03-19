// data_writeback_associative_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for LEG v4

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
                   output logic Stall, HRequestM, HWriteM);

    parameter setbits = $clog2(lines);
    parameter blockbits = $clog2(blocksize);
    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-blockbits-setbits;

    // W1V:  valid bit for way 1
    // W1EN: enable way 1, select way 1 for writeback
    // W1WE: way 1 write enable, W1WE = W1EN & CWE
    // ActiveByteMask: mask currently used on the cache
    // CWE:  Cache Write Enable
    logic W1V, W2V, W1EN, W2EN, W1WE, W2WE, ResetCounter, CWE;
    logic [tagbits-1:0] W1Tag, W2Tag, CachedTag;

    // TODO: Remove blockout wires (they are moved to the cache memory)
    logic [blocksize*32-1:0] W1BlockOut, W2BlockOut;  // Way output (4 words)
    logic [3:0] ActiveByteMask;

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
    // Hit:        Hit in the cache
    logic BlockWE, W1D, W2D, RDSel, Hit;
    logic [setbits-1:0] set;   // Set bits
    logic [1:0] Counter, WordOffset, CacheRDSel;   // Counter for sequential buss access
    logic [tagbits-1:0] Tag;   // Current tag


    // CacheIn Selection
    logic UseWD;
    mux2 #(32) CacheWDMux(HRData, WD, UseWD, CacheWD);

    // Create New Address using the counter as the word offset
    // TODO: Make this structural
    // Move to controller
    // assign ANew = ResetCounter ? A : {A[31:4], Counter, A[1:0]};
    logic [blockbits-1:0] NewWordOffset;
    assign ANew = {A[31:4], NewWordOffset, A[1:0]};


    // Create Cache memory. This module contains both way memories and LRU table
    logic CurrLRU;   
    logic DirtyIn;
    assign DirtyIn = MemWriteM;
    data_writeback_associative_cache_memory #(lines, tagbits, blocksize) dcmem(.*);

    // Cache Controller
    assign WordOffset = A[3:2]; // Create word offset for cache controller
    assign Tag = ANew[31:31-tagbits+1];           
    data_writeback_associative_cache_controller #(blocksize, tagbits) dcc(.*);

    // HWData Mux
    mux2 #(32) HWDataMux(W2RD, W1RD, W1EN, HWData);

    // HAddr Mux's
    assign CachedAddr = {CachedTag, ANew[31-tagbits:0]};
    mux2 #(32) HAddrMux(ANew, CachedAddr, HWriteM, HAddr);

    // Select from the ways
    mux2 #(32) CacheOutMux(W2RD, W1RD, W1Hit, CacheOut);

    // Select from cache or memory
    mux2 #(32) RDMux(CacheOut, HRData, RDSel, RD);

endmodule