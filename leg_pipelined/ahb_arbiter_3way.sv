/***** Brief Description *******
 * First Created by Max Waugaman for Clay Wolkin 2015-2016
 *
 * ahb_arbiter_3way controls acess to the bus for the translation walk
 * hardware, data cache, and instruction cache. AHB-Lite does not support
 * bus arbitration, so the purpose of this module is to make the three 
 * look like one AHB master. This module will pipeline memory accesses from
 * the three modules when more that one request bus access during the same
 * cycle.
 *
 * Postfixes (i.e. HAddrM, HAddrF, HAddrT)
 * M = Memory stage (data cache)
 * F = Fetch stage (instruction cache)
 * T = Translation walk hardware
 ******************************/

module ahb_arbiter_3way (
    input  logic        clk, reset,
    input  logic        HWriteM, HReady,
    input  logic        HRequestM, HRequestF, HRequestT,
    input  logic [ 2:0] HSizeM   ,
    input  logic [31:0] HAddrM, HAddrF, HAddrT,
    input  logic [31:0] HWDataM  ,
    output logic        HReadyF, HReadyM, HReadyT,
    output logic        HWrite   ,
    output logic        HRequest,
    output logic [ 2:0] HSIZE    ,
    output logic [31:0] HWData, HAddr
);
    
    logic [1:0] HAddrSel;
    
    mux3 #(32) HAddrArbMux(HAddrT, HAddrM, HAddrF, HAddrSel, HAddr);
    assign HWData = HWDataM;

    ahb_arbiter_3way_controller c(.*);

endmodule