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
    output logic        FSel, MSel, TSel,
    output logic        HWrite   ,
    output logic        HRequest ,
    output logic [ 1:0] Hsel     ,
    output logic [ 2:0] HSIZE    ,
    output logic [31:0] HWData, HAddr
);

    logic [1:0] HAddrSel;

    logic [31:0] rawFIQVec, rawIRQVecPart, rawIRQVec, rawSICVec;
    logic        SICinterrupt; // says whether an interrupt is pending in the SIC
  

    //Interrupt Vectors
    assign rawFIQVec = 32'b0;
    assign rawIRQVecPart = 32'b0;
    assign rawSICVec = 32'b0;
    assign rawIRQVec = {rawIRQVecPart[31:27], SICinterrupt, rawIRQVecPart[25:0]};
    
    mux3 #(32) HAddrArbMux(HAddrT, HAddrM, HAddrF, HAddrSel, HAddr);
    assign HWData = HWDataM;

    // Memory map decoding
    ahb_decoder dec (HAddr, Hsel);

    ahb_arbiter_3way_controller c(.*);

endmodule
