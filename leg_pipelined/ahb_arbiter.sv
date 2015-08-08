module ahb_arbiter( input  logic HWriteM, IStall, DStall, HReady, HRequestF, 
                    input  logic HRequestM, PAReady, DRequestPA,
                    input  logic [31:0] HAddrF, HAddrM,
                    output logic HReadyF, HReadyM, HWrite, HRequest,
                    output logic PAReadyF, PAReadyM,
                    output logic [31:0] HAddr);
    
    assign HWrite = HWriteM & DStall;
    assign HReadyF = IStall & ~DStall & HReady;
    assign HReadyM = DStall & HReady;
    assign PAReadyF = IStall & ~DRequestPA & PAReady;
    assign PAReadyM = DRequestPA & PAReady;
    // assign HAddr = DStall ? HAddrM : HAddrF;
    assign HAddr = DRequestPA ? HAddrM : HAddrF;
    assign HRequest = HRequestF | HRequestM;

endmodule