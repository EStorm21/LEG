// instr_cache.v
// mwaugaman@hmc.edu 22 September 2014
// 2-Way Set Associative Instruction cache for LEG Processor

module instr_cache #(
    parameter bsize = 4                   , parameter lines = 2,
    parameter setbits = $clog2(lines),
    parameter blockbits = $clog2(bsize),
    parameter tbits = 30-blockbits-setbits
) (
    input  logic             clk, reset, enable, BusReady, invalidate,
    input  logic             PAReadyF,
    input  logic [     31:0] A      ,
    input  logic [tbits-1:0] PhysTag,
    input  logic [     31:0] HRData ,
    output logic [     31:0] RD, HAddrF,
    output logic             IStall, HRequestF
);

    // Signal Declaration
    logic [         31:0] CacheWD, W1RD, W2RD, CacheOut, ANew;
    logic [    tbits-1:0] W1Tag, W2Tag; 
    logic [          3:0] ActiveByteMask;
    logic [blockbits-1:0] NewWordOffset ;
    logic [          1:0] CacheRDSel, Counter, WordOffset;
    logic                 W1V, W2V, W1WE, W2WE, ResetBlockOff, CurrLRU, DirtyIn, W1D, W2D, vin, WaySel;

    // Create New Address using the counter as the word offset
    assign WordOffset     = A[blockbits+1:2];
    assign ANew           = {A[31:4], NewWordOffset, A[1:0]};
    assign HAddrF         = {PhysTag, ANew[31-tbits:0]};

    assign CacheWD        = HRData;
    assign CacheRDSel     = WordOffset;
    assign vin            = enable; // Only validate cache lines when enabled

    // Disable writeback behavior (read only cache)
    assign DirtyIn        = 1'b0;   
    assign cleanCurr      = 1'b0;   
    assign ActiveByteMask = 4'b1111;

    data_writeback_associative_cache_memory #(lines,tbits,bsize) icm (
        .clk           (clk           ),
        .reset         (reset         ),
        .W1WE          (W1WE          ),
        .W2WE          (W2WE          ),
        .DirtyIn       (DirtyIn       ),
        .vin           (vin           ),
        .cleanCurr     (cleanCurr     ),
        .invalidate    (invalidate    ),
        .CacheWD       (CacheWD       ),
        .ANew          (ANew          ),
        .PhysTag       (PhysTag       ),
        .ActiveByteMask(ActiveByteMask),
        .CacheRDSel    (CacheRDSel    ),
        .W1V           (W1V           ),
        .W2V           (W2V           ),
        .W1D           (W1D           ),
        .W2D           (W2D           ),
        .CurrLRU       (CurrLRU       ),
        .W1Tag         (W1Tag         ),
        .W2Tag         (W2Tag         ),
        .W1RD          (W1RD          ),
        .W2RD          (W2RD          )
    );

    // Cache Controller
    instr_cache_controller #(tbits) icc (
        .clk          (clk          ),
        .reset        (reset        ),
        .enable       (enable       ),
        .PAReadyF      (PAReadyF      ),
        .W1V          (W1V          ),
        .W2V          (W2V          ),
        .CurrLRU      (CurrLRU      ),
        .BusReady     (BusReady     ),
        .WordOffset   (WordOffset   ),
        .W1Tag        (W1Tag        ),
        .W2Tag        (W2Tag        ),
        .PhysTag      (PhysTag      ),
        .Counter      (Counter      ),
        .W1WE         (W1WE         ),
        .W2WE         (W2WE         ),
        .WaySel       (WaySel       ),
        .IStall       (IStall       ),
        .ResetBlockOff (ResetBlockOff ),
        .HRequestF    (HRequestF    ),
        .NewWordOffset(NewWordOffset)
    );

    // Select from the ways
    mux2 #(32) CacheOutMux(W2RD, W1RD, WaySel, CacheOut);

    // Select from cache or memory
    assign RD = CacheOut;

endmodule
