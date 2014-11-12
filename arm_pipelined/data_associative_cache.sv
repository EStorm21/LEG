// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
module data_associative_cache #(parameter blocksize = 4, parameter lines = 65536)
                  (input  logic clk, reset, MemWriteM, MemtoRegM, Valid, IStall,
                   input  logic [31:0] a, 
                   input  logic [blocksize*32-1:0] MemBlock,
                   output logic [31:0] rd,
                   output logic Stall, MemRE, MemWE);

    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-$clog2(blocksize)-$clog2(lines);

    logic w1v, w2v, w1en, w2en;
    logic [tagbits-1:0] w1tag, w2tag;
    logic cwe;
    logic [blocksize*32-1:0] W1Block, W2Block;
    logic [31:0] w2rd, w1rd, MemRD, CacheOut;
    logic RDSel;

    // Way 1
    data_associative_cache_memory #(lines, tagbits, blocksize) way1(
       .clk(clk), .reset(reset), .wd(MemBlock), .a(a), .we(w1en), 
       .rv(w1v), .rtag(w1tag), .rd(W1Block));

    // Way 2
    data_associative_cache_memory #(lines, tagbits, blocksize) way2(
       .clk(clk), .reset(reset), .wd(MemBlock), .a(a), .we(w2en), 
       .rv(w2v), .rtag(w2tag), .rd(W2Block));

    // Cache Controller
    data_associative_cache_controller dcc(
        .clk(clk), .reset(reset), .hit(hit), .IStall(IStall), .RDSel(RDSel), .MemWriteM(MemWriteM),
        .Stall(Stall), .Valid(Valid),
        .MemRE(MemRE), .cwe(cwe), .MemWE(MemWE),
        .re(MemtoRegM));

    // Create the logic for a hit.
    assign w1hit = (w1v & (a[31:31-tagbits+1] == w1tag));
    assign w2hit = (w2v & (a[31:31-tagbits+1] == w2tag));
    assign hit = w1hit | w2hit;

    // Write-to logic
    // IN: w1v, w2v, cwe
    // OUT: w1en, w2en
    always_comb
        begin
            // If we aren't writing to a cache, then don't write
            if(~cwe) begin
                w1en = 1'b0;
                w2en = 1'b0;
            end else
            // If there is a hit in either cache, then write to the hit cache
            if( w1hit | w2hit) begin
                w1en = w1hit;
                w2en = w2hit;
            end else
            // Neither or Both caches have Valid data, so write to way 1
            if(~(w1v ^ w2v)) begin 
                w1en = 1'b1;
                w2en = 1'b0;
            // One way has Valid data, so write to the other
            end else begin
                w1en = ~w1v;
                w2en = ~w2v;
            end
        end

    // Word selection mux's
    // TODO: Make these mux's mux parameterized

    // Way1 Word Select
    always_comb
    case (a[3:2])
        2'b11 : w1rd = W1Block[31:0];
        2'b10 : w1rd = W1Block[2*32-1 : 32];
        2'b01 : w1rd = W1Block[3*32-1 : 2*32];
        2'b00 : w1rd = W1Block[4*32-1 : 3*32];
        default : w1rd = W1Block[31:0]; 
    endcase

    // Way2 Word Select
    always_comb
    case (a[3:2])
        2'b11 : w2rd = W2Block[31:0];
        2'b10 : w2rd = W2Block[2*32-1 : 32];
        2'b01 : w2rd = W2Block[3*32-1 : 2*32];
        2'b00 : w2rd = W2Block[4*32-1 : 3*32];
        default : w2rd = W2Block[31:0]; 
    endcase

    // Way3 Word Select
    always_comb
    case (a[3:2])
        2'b11 : MemRD = MemBlock[31:0];
        2'b10 : MemRD = MemBlock[2*32-1 : 32];
        2'b01 : MemRD = MemBlock[3*32-1 : 2*32];
        2'b00 : MemRD = MemBlock[4*32-1 : 3*32];
        default : MemRD = MemBlock[31:0]; 
    endcase

    // Select from the ways
    assign CacheOut = w1hit ? w1rd : w2rd;

    // Select from cache or memory
    assign rd = RDSel ? MemRD : CacheOut;

endmodule