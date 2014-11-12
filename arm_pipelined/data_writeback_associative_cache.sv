// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
module data_writeback_associative_cache #(parameter blocksize = 4, parameter lines = 65536)
                  (input  logic clk, reset, MemWriteM, MemtoRegM, Valid, IStall,
                   input  logic [31:0] a, WD,
                   input  logic [blocksize*32-1:0] MemRD,
                   output logic [blocksize*32-1:0] MemWD,
                   output logic [31:0] RD, MemAddr,
                   output logic Stall, MemRE, MemWE);

    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-$clog2(blocksize)-$clog2(lines);

    logic W1V, W2V, W1EN, W2EN;
    logic [tagbits-1:0] W1Tag, W2Tag, CachedTag;
    logic CWE;
    logic [blocksize*32-1:0] W1WD, W2WD, W1BlockOut, W2BlockOut;
    logic [31:0] W2RD, W1RD, MemWord, CacheOut, CachedAddr;
    logic BlockWE, W1D, W2D, RDSel;

    // CacheIn Logic
    cacheIn #(blocksize) 
        w1in(.BlockWE(BlockWE), .MemRD(MemRD), .CacheBlock(W1BlockOut),
             .WD(WD), .WordOffset(a[3:2]), .BlockOut(W1WD));

    cacheIn #(blocksize) 
        w2in(.BlockWE(BlockWE), .MemRD(MemRD), .CacheBlock(W2BlockOut),
             .WD(WD), .WordOffset(a[3:2]), .BlockOut(W2WD));

    // Way 1
    data_writeback_associative_cache_memory #(lines, tagbits, blocksize) way1(
       .clk(clk), .reset(reset), .WD(W1WD), .a(a), .WE(W1EN), .BlockWE(BlockWE),
       .RV(W1V), .Dirty(W1D), .RTag(W1Tag), .RD(W1BlockOut));

    // Way 2
    data_writeback_associative_cache_memory #(lines, tagbits, blocksize) way2(
       .clk(clk), .reset(reset), .WD(W1WD), .a(a), .WE(W2EN), .BlockWE(BlockWE),
       .RV(W2V), .Dirty(W2D), .RTag(W2Tag), .RD(W2BlockOut));

    // Cache Controller
    data_writeback_associative_cache_controller dcc(.*);
        // .clk(clk), .reset(reset), 
        // .Hit(Hit), .IStall(IStall), .Dirty(Dirty), .MemWriteM(MemWriteM), 
        // .RE(MemtoRegM), .Valid(Valid), 
        // .RDSel(RDSel), .CWE(CWE), .Stall(Stall), 
        // .MemWE(MemWE), .MemRE(MemRE), .BlockWE(BlockWE));

    // Create the logic for a Hit.
    assign w1hit = (W1V & (a[31:31-tagbits+1] == W1Tag));
    assign w2hit = (W2V & (a[31:31-tagbits+1] == W2Tag));
    assign Hit = w1hit | w2hit;

    // Write-to logic
    // IN: W1V, W2V, CWE
    // OUT: W1EN, W2EN
    always_comb
        begin
            // If we aren't writing to a cache, then don't write
            if(~CWE) begin
                W1EN = 1'b0;
                W2EN = 1'b0;
            end else
            // If there is a Hit in either cache, then write to the Hit cache
            if( w1hit | w2hit) begin
                W1EN = w1hit;
                W2EN = w2hit;
            end else
            // Neither or Both caches have Valid data, so write to way 1
            if(~(W1V ^ W2V)) begin 
                W1EN = 1'b1;
                W2EN = 1'b0;
            // One way has Valid data, so write to the other
            end else begin
                W1EN = ~W1V;
                W2EN = ~W2V;
            end
        end

    // Dirty Mux
    assign Dirty = W1EN ? W1D : W2D;

    // MemWD Mux
    assign MemWD = W1EN ? W1BlockOut : W2BlockOut;

    // MemAddr Mux's
    assign CachedTag = W1EN ? W1Tag : W2Tag;
    assign CachedAddr = {a[31:31-tagbits+1], CachedTag};
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
    assign CacheOut = w1hit ? W1RD : W2RD;

    // Select from cache or memory
    assign RD = RDSel ? MemWord : CacheOut;

endmodule