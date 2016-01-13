module tlb_arbiter( input logic PAReady, RequestPAM, RequestPAF, IStall,
                    output logic PAReadyF, PAReadyM, RequestPA);
    assign PAReadyF = RequestPAF & ~RequestPAM & PAReady;
    assign PAReadyM = RequestPAM & PAReady;
    // assign RequestPAF = 1'b1;
    // TODO: Replace PArequest with logic that accounts for StallF.
    // The constant assignement assumes that the instruction cache always requests
    // a physical address.
    assign RequestPA = RequestPAF | RequestPAM;
endmodule
