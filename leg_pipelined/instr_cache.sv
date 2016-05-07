// instr_cache.v
// mwaugaman@hmc.edu 22 September 2014
// 2-Way Set Associative Instruction cache for LEG Processor

module instr_cache #(
    parameter bsize = 4,                    // Block size
    parameter lines = 2,                    // # of lines
    parameter setbits = $clog2(lines), 
    parameter blockbits = $clog2(bsize),
    parameter tbits = 30-blockbits-setbits
) (
    // From leg
    input  logic             clk, reset, uOpStallD,
    input  logic [     31:0] A       ,
    // From coprocessor
    input  logic             CP15en, AddrOp, InvAllMid, Inv,
    // From TLB
    input  logic [tbits-1:0] PhysTag , 
    input  logic             PAReadyF,
    // From AHB
    input  logic             FSel, BusReady,
    input  logic [     31:0] HRData  ,
    // To leg
    output logic [     31:0] RD,
    output logic             IStall,
    // To AHB
    output logic             HRequestF, HAddrF, RequestPA
);

    // Signal Declaration
    logic [         31:0] CacheWD, W1RD, W2RD, CacheOut, ANew;
    logic [    tbits-1:0] W1Tag, W2Tag, Tag; 
    logic [          3:0] ActiveByteMask;
    logic [blockbits-1:0] DataWordOffset ;
    logic [blockbits-1:0] AddrWordOffset ;
    logic [          1:0] CacheRDSel, Counter, WordOffset;
    logic                 W1V, W2V, W1WE, W2WE, ResetBlockOff, CurrLRU, DirtyIn;
    logic                 W1D, W2D, vin, WaySel, InvAll, Clean;

    // Create New Address using the counter as the word offset
    assign WordOffset     = A[blockbits+1:2];
    assign ANew           = {A[31:4], DataWordOffset, A[1:0]};
    assign HAddrF         = {Tag, A[31-tbits:4], AddrWordOffset, A[1:0]};

    assign CacheWD        = HRData;
    assign CacheRDSel     = WordOffset;
    assign vin            = CP15en; // Only validate cache lines when CP15end

    // Disable writeback behavior (read only cache)
    assign DirtyIn        = 1'b0;
    assign ActiveByteMask = 4'b1111;
    assign W1Clean        = 1'b0;
    assign W2Clean        = 1'b0;

    data_writeback_associative_cache_memory #(lines,tbits,bsize) icm (.*);

    // Cache Controller
    instr_cache_controller #(tbits) icc (.*);

    // Select from the ways
    mux2 #(32) CacheOutMux(W2RD, W1RD, WaySel, CacheOut);

    // Select from cache or memory
    assign RD = CacheOut;

endmodule
