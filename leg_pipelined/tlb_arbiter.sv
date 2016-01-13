module tlb_arbiter( input logic PAReady, RequestPAM, StallF, IStall,
                    output logic PAReadyF, PAReadyM, RequestPA);
    logic RequestPAF;
    assign PAReadyF = RequestPAF & ~RequestPAM & PAReady;
    assign PAReadyM = RequestPAM & PAReady;
    assign RequestPAF = ~(StallF & ~IStall);
    // TODO: Replace PArequest with logic that accounts for StallF.
    // The constant assignement assumes that the instruction cache always requests
    // a physical address.
    assign RequestPA = RequestPAF | RequestPAM;
endmodule
