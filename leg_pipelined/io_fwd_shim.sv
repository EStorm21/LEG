// Responsible for forwarding IO from qemu
module io_fwd_shim(input  logic        HCLK,
                   input  logic        HRESETn,
                   input  logic        HSEL,
                   input  logic        HREQUEST,
                   input  logic [31:0]  HADDR,
                   input  logic        HWRITE,
                   input  logic [31:0] HWDATA,
                   output logic [31:0] HRDATA,
                   output logic        fiq, irq);

    logic [31:0] readAddrs[$];
    logic [31:0] readVals[$];

    initial begin
        fiq <= 1'b0;
        irq <= 1'b0;
    end

    always_ff @(posedge HCLK ) begin
        if(HREQUEST & HSEL) begin
            if(HWRITE) begin
                $displayh("IO write data %h to %h", HWDATA, HADDR);
                // Ignore writes (Qemu can handle it)
            end else begin
                // $display("IO read data from %h", HADDR);
                if(readAddrs[0] == HADDR) begin
                    // Pop the recorded read off, to match Qemu
                    $displayh("IO read data %h from %h", readVals[0], readAddrs[0]);
                    void'( readAddrs.pop_front() );
                    HRDATA <= readVals.pop_front();
                end else begin
                    // This is an invalid read. Give garbage data
                    $displayh("IO read invalid data (xxxxxxxx) from %h", HADDR);
                    HRDATA <= 32'hxxxxxxxx;
                end
            end
        end
    end

    // Called from ModelSim using
    // call sim:/testbench/dut/ahb/ioShim/pushRead <address> <value>
    function void pushRead;
        input [31:0] addr, val;
        readAddrs.push_back(addr);
        readVals.push_back(val);
    endfunction

    // Called from ModelSim using
    // call sim:/testbench/dut/ahb/ioShim/setInterrupts <irq> <fiq>
    function void setInterrupts;
        input logic irqset, fiqset;
        irq <= irqset;
        fiq <= fiqset;
    endfunction

endmodule // io_fwd_shim
