module ahb_arbiter( input  logic HWriteM, IStall, DStall, HReady, HRequestF, 
                    input  logic HRequestM, PAReady, DRequestPA,
                    input  logic [31:0] HAddrF, HAddrM,
                    output logic HReadyF, HReadyM, CPUHWrite, CPUHRequest,
                    output logic PAReadyF, PAReadyM,
                    output logic [31:0] CPUHAddr);
    
    assign CPUHWrite = HWriteM & DStall;
    assign HReadyF = IStall & ~DStall & HReady;
    assign HReadyM = DStall & HReady;
    // Assume that the instruction cache always requests a physical address.
    // Only give the instruction cache the physical address when the data cache
    // is not requesting it
    assign PAReadyF = ~DRequestPA & PAReady;
    assign PAReadyM = DRequestPA & PAReady;
    assign CPUHRequest = HRequestF | HRequestM;
    mux2 #(32) HAddrArbMux(HAddrF, HAddrM, DRequestPA, CPUHAddr);

endmodule
