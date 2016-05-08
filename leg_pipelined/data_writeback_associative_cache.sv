// data_writeback_associative_cache.sv
// mwaugaman@hmc.edu 8 August 2015
// Data Cache for LEG processor

module data_writeback_associative_cache #(
    parameter bsize = 4                   , parameter lines = 2,
    parameter setbits = $clog2(lines),
    parameter blockbits = $clog2(bsize),
    parameter tbits = 30-blockbits-setbits
) (
    // From leg 
    input  logic             clk, reset, MemWriteM, MemtoRegM,
    IStall, 
    input  logic [     31:0] VirtA, WD,
    // From Coprocessor
    input  logic             CP15en, Inv, Clean, AddrOp, InvAllMid,
    // From TLB
    input  logic             CurrCBit , PAReady,
    input  logic [tbits-1:0] PhysTag  ,
    // From AHB
    input  logic [      3:0] ByteMaskM,
    input  logic [     31:0] HRData   ,
    input  logic             BusReady , MSel,
    // To leg 
    output logic             Stall    ,
    // To TLB
    output logic             RequestPA,
    // To AHB
    output logic [     31:0] HWData   ,
    output logic [     31:0] RD, HAddr,
    output logic [      2:0] HSizeM   ,
    output logic             HRequestM, HWriteM
);

    // Cache way outputs
    logic                W1V, W2V, W1EN, W1WE, W2WE, W1D, W2D;
    logic [   tbits-1:0] W1Tag, W2Tag, CachedTag, Tag;
    logic [bsize*32-1:0] W1BlockOut, W2BlockOut; // Way output (4 words)
    logic [        31:0] W1RD, W2RD, CacheOut, CachedAddr, CacheWD;

    // Input Control Logic
    logic [             31:0] A             ;
    logic [              3:0] ActiveByteMask, WDSel;
    logic [    blockbits-1:0] AddrWordOffset, DataWordOffset;
    logic                     DirtyIn, vin;
    logic                     UseWD, BlockWE, W1Clean, W2Clean;
    logic [$clog2(lines)-1:0] BlockNum      ;
    logic [      setbits-1:0] set           ;
    logic [        tbits-1:0] VirtTag       ;
    logic [              1:0] WordOffset, CacheRDSel;
    logic                     enable, InvAll;

    // Output Control logic
    logic CurrLRU, UseCacheA, WaySel, RDSel;

    mux2 #(8) CacheWDMux0 (HRData[7:0],WD[7:0],WDSel[0],CacheWD[7:0]);
    mux2 #(8) CacheWDMux1 (HRData[15:8],WD[15:8],WDSel[1],CacheWD[15:8]);
    mux2 #(8) CacheWDMux2 (HRData[23:16],WD[23:16],WDSel[2],CacheWD[23:16]);
    mux2 #(8) CacheWDMux3 (HRData[31:24],WD[31:24],WDSel[3],CacheWD[31:24]);

    // Create New Address using the counter as the word offset
    assign A       = VirtA;
    assign VirtTag = VirtA[31:31-tbits+1];
    assign ANew    = {VirtTag, BlockNum, DataWordOffset, VirtA[1:0]};

    // Create Cache memory. 
    assign vin = enable;
    data_writeback_associative_cache_memory #(lines, tbits, bsize) dcmem(.*);

    // Cache Controller
    assign WordOffset = VirtA[3:2]; // Create word offset for cache controller
    data_writeback_associative_cache_controller #(lines, bsize, tbits) dcc(.*);

    // HWData
    assign HWData = RD;

    // HAddr Mux's
    assign CachedAddr = {CachedTag, A[31-tbits:4], AddrWordOffset, A[1:0]};
    mux2 #(32) HAddrMux({Tag, A[31-tbits:4], AddrWordOffset, A[1:0]}, CachedAddr, UseCacheA, HAddr);

    // Select from the ways
    mux2 #(32) CacheOutMux(W2RD, W1RD, WaySel, CacheOut);

    // Select from cache or memory
    // TODO: See if RDSel is necessary
    mux2 #(32) RDMux(CacheOut, WD, RDSel, RD);
endmodule
