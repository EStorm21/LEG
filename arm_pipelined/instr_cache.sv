// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
module instr_cache #(parameter blocksize = 4, parameter lines = 2)
                  (input  logic clk, reset, BusReady,
                   input  logic [31:0] a, 
                   input  logic [blocksize*32-1:0] HRData,
                   output logic [31:0] RD,
                   output logic IStall);

    parameter setbits = $clog2(lines);
    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-$clog2(blocksize)-setbits;

    // W1V:   valid bit for way 1
    // W1EN:  enable way 1, select way 1 for writeback
    // W1WE:  way 1 write enable, W1WE = W1EN & CWE
    // RDSel: Select output from bus or cache
    logic W1V, W2V, W1EN, W2EN, W1WE, W2WE, RDSel;        
    logic [tagbits-1:0] W1Tag, W2Tag;
    logic CWE;                                        // Cache write enable
    logic [blocksize*32-1:0] W1BlockOut, W2BlockOut;  // Way output (4 words)
    // W2RD:       Word selected from way 2 output
    // MemWord:    Word selected from memory in block
    // CacheOut:   Word chosen from way 1 or 2
    logic [31:0] W1RD, W2RD, MemWord, CacheOut;

    // Way 1
    instr_cache_memory #(lines, tagbits, blocksize) way1(
       .clk(clk), .reset(reset), .wd(HRData), .a(a), .we(W1WE),
       .rv(W1V), .rtag(W1Tag), .rd(W1BlockOut));

    // Way 2
    instr_cache_memory #(lines, tagbits, blocksize) way2(
       .clk(clk), .reset(reset), .wd(HRData), .a(a), .we(W2WE), 
       .rv(W2V), .rtag(W2Tag), .rd(W2BlockOut));

    // Cache Controller
    instr_cache_controller dcc(.*);

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
        2'b00 : MemWord = HRData[31:0];
        2'b01 : MemWord = HRData[2*32-1 : 32];
        2'b10 : MemWord = HRData[3*32-1 : 2*32];
        2'b11 : MemWord = HRData[4*32-1 : 3*32];
        default : MemWord = HRData[31:0]; 
    endcase

    // Select from the ways
    assign CacheOut = W1Hit ? W1RD : W2RD;

    // Select from cache or memory
    assign RD = RDSel ? MemWord : CacheOut;

endmodule