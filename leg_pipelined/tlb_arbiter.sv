module tlb_arbiter( input logic PAReady, DRequestPA,
                    output logic PAReadyF, PAReadyM, RequestPA);
    assign PAReadyF = ~DRequestPA & PAReady;
    assign PAReadyM = DRequestPA & PAReady;
    // TODO: Replace PArequest with logic that accounts for StallF.
    // The constant assignement assumes that the instruction cache always requests
    // a physical address.
    assign RequestPA= 1'b1;
endmodule