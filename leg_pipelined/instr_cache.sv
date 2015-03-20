// leg_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for LEG v4

//--------------------CACHE-----------------------------
module instr_cache #(parameter blocksize = 4, parameter lines = 2)
                  (input  logic clk, reset, BusReady,
                   input  logic [31:0] A, 
                   input  logic [31:0] HRData,
                   output logic [31:0] RD, HAddrF,
                   output logic IStall, HRequestF);

    parameter setbits = $clog2(lines);
    parameter blockbits = $clog2(blocksize);
    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-blockbits-setbits;

    // W1V:   valid bit for way 1
    // W1EN:  enable way 1, select way 1 for writeback
    // W1WE:  way 1 write enable, W1WE = W1EN & CWE
    // RDSel: Select output from bus or cache
    // CWE:   Cache Write Enable
    logic W1V, W2V, W1EN, W2EN, W1WE, W2WE, RDSel, CWE, ResetCounter, Hit, W1Hit, W2Hit, CurrLRU;        
    logic [tagbits-1:0] W1Tag, W2Tag;
    logic [blocksize*32-1:0] W1BlockOut, W2BlockOut;  // Way output (4 words)
    
    // W2RD:       Word selected from way 2 output
    // CacheOut:   Word chosen from way 1 or 2
    logic [31:0] W1RD, W2RD, CacheOut, ANew;
    logic [1:0] Counter, WordOffset;
    logic [tagbits-1:0] Tag;   // Current tag
    logic [blockbits-1:0] NewWordOffset;


    // Create New Address using the counter as the word offset
    assign WordOffset = A[blockbits+1:2];
    assign ANew = {A[31:4], NewWordOffset, A[1:0]};
    assign HAddrF = ANew;

    // Cache Memory
    // instr_cache_memory #(lines, tagbits, blocksize) icm(.*);
    logic [3:0] ActiveByteMask;
    logic [31:0] CacheWD;
    logic [1:0] CacheRDSel;
    logic DirtyIn, W1D, W2D;
    assign ActiveByteMask = 4'b1111;
    assign CacheWD = HRData;
    assign CacheRDSel = WordOffset;
    assign DirtyIn = 1'b0;
    data_writeback_associative_cache_memory #(lines, tagbits, blocksize) icm(.*);

    // Cache Controller
    assign Tag = ANew[31:31-tagbits+1];  
    instr_cache_controller #(tagbits) icc(.*);

    // Select from the ways
    mux2 #(32) CacheOutMux(W2RD, W1RD, W1Hit, CacheOut);

    // Select from cache or memory
    mux2 #(32) RDMux(CacheOut, HRData, RDSel, RD);

endmodule