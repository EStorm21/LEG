// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
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

    // Create New Address using the counter as the word offset
    assign WordOffset = A[blockbits+1:2];
    assign ANew = ResetCounter ? A : {A[31:4], Counter, A[1:0]};
    assign HAddrF = ANew;

    // Cache Memory
    instr_cache_memory #(lines, tagbits, blocksize) icm(.*);

    // Cache Controller
    instr_cache_controller icc(.*);

    // Select from the ways
    assign CacheOut = W1Hit ? W1RD : W2RD;

    // Select from cache or memory
    assign RD = RDSel ? HRData : CacheOut;

endmodule