module tlb_arbiter( input logic PAReady, DRequestPA,
                    output logic PAReadyF, PAReadyM);
    assign PAReadyF = ~DRequestPA & PAReady;
    assign PAReadyM = DRequestPA & PAReady
endmodule
