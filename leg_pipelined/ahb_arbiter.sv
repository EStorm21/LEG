module ahb_arbiter( input  logic HWriteM, IStall, DStall, HReady, HRequestF, HRequestM,
                    input  logic [31:0] HAddrF, HAddrM,
                    output logic HReadyF, HReadyM, HWrite, HRequest,
                    output logic [31:0] HAddr);
    
    assign HWrite = HWriteM & DStall;
    assign HReadyF = IStall & ~DStall & HReady;
    assign HReadyM = DStall & HReady;
    assign HAddr = DStall ? HAddrM : HAddrF;
    assign HRequest = HRequestF | HRequestM;
    // always_comb
    // begin
    //     // Cases:
    //     // Instruction access only, 
    //     if (IStall & ~DStall) begin
    //         // Give instr cache bus
    //         HAddr = HAddrF;
    //         HReadyF = HReady;
    //         HReadyM = 1'b0;
    //         Hwrite = 1'b0;

    //     // Data access only
    //     end else if(~IStall & DStall) begin
    //         // Give bus to data cache
    //         HAddr = HAddrM;
    //         HReadyM = HReady;
    //         HReadyF = 1'b0;
    //         HWrite = HWriteM;

    //     // Both
    //     end else if(IStall & DStall) begin
    //         // Give bus to data cache
    //         HAddr = HAddrM;
    //         HReadyM = HReady;
    //         HReadyF = 1'b0;
    //         HWrite = HWriteM;

    //     // None
    //     end else begin
    //         HReadyF = 1'b0;
    //         HReadyM = 1'b0;
    //         HAddr = HAddrM;
    //         HWrite = 1'b0;
    //     end
    // end

endmodule