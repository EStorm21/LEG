// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
module data_associative_cache #(parameter blocksize = 4, parameter lines = 65536)
                  (input  logic clk, reset, MemWriteM, MemtoRegM, valid, 
                   input  logic [31:0] a, 
                   input  logic [blocksize*32-1:0] memdata,
                   output logic [31:0] rd,
                   output logic stall, memread, memwrite);

    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-$clog2(blocksize)-$clog2(lines);

    logic w1v, w2v, w1en, w2en;
    logic [tagbits-1:0] w1tag, w2tag;
    logic cwe;
    logic [blocksize*32-1:0] w1rd, w2rd, blockout;

    // Way 1
    data_associative_cache_memory #(lines, tagbits, blocksize) way1(
       .clk(clk), .reset(reset), .wd(memdata), .a(a), .we(w1en), 
       .rv(w1v), .rtag(w1tag), .rd(w1rd));

    // Way 2
    data_associative_cache_memory #(lines, tagbits, blocksize) way2(
       .clk(clk), .reset(reset), .wd(memdata), .a(a), .we(w2en), 
       .rv(w2v), .rtag(w2tag), .rd(w2rd));

    // Cache Controller
    data_associative_cache_controller dcc(
        .clk(clk), .reset(reset), .hit(hit), .ds(ds), .MemWriteM(MemWriteM),
        .stall(stall), .valid(valid),
        .memread(memread), .cwe(cwe), .memwrite(memwrite),
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
            // Neither or Both caches have valid data, so write to way 1
            if(~(w1v ^ w2v)) begin 
                w1en = 1'b1;
                w2en = 1'b0;
            // One way has valid data, so write to the other
            end else begin
                w1en = ~w1v;
                w2en = ~w2v;
            end
        end

    // Block selection logic
    assign blockout = w1hit ? w1rd : w2rd;

    // Word selection mux
    // TODO: Make this mux parameterized
    assign bo = a[3:2];
    always_comb
    case (a[3:2])
        2'b11 : rd = blockout[31:0];
        2'b10 : rd = blockout[2*32-1 : 32];
        2'b01 : rd = blockout[3*32-1 : 2*32];
        2'b00 : rd = blockout[4*32-1 : 3*32];
        default : rd = blockout[31:0]; 
    endcase

endmodule