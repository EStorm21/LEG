module ahb_arbiter( input  logic HWriteM, IStall, DStall, HReady, HRequestF, 
                    input  logic HRequestM, PAReady, DRequestPA,
                    input  logic [31:0] HAddrF, HAddrM,
                    output logic HReadyF, HReadyM, CPUHWrite, CPUHRequest,
                    output logic PAReadyF, PAReadyM,
                    output logic [31:0] CPUHAddr);
    
    assign CPUHWrite = HWriteM & DStall;
    assign HReadyF = IStall & ~DStall & HReady;
    assign HReadyM = DStall & HReady;
    assign PAReadyF = IStall & ~DRequestPA & PAReady;
    assign PAReadyM = DRequestPA & PAReady;
    // assign CPUHAddr = DStall ? HAddrM : HAddrF;
    // assign CPUHAddr = DRequestPA ? HAddrM : HAddrF;
    assign CPUHRequest = HRequestF | HRequestM;
    mux2 #(32) HAddrArbMux(HAddrF, HAddrM, DRequestPA, CPUHAddr);

endmodule