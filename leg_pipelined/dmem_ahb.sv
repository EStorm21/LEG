// dmem.sv
// mwaugaman@hmc.edu 8 August 2015
// Byte Addressable Memory simulation for LEG v5

// `define USE_DEFAULT_MEMORY 10

module dmem_ahb (
  input  logic        clk, we, re, HSEL,HReady, HResetn,
  input  logic [31:0] a    , wd,
  input  logic [ 2:0] HSIZE,
  output logic [31:0] rd   ,
  output logic        Valid
);

  logic we_d, re_d, HSEL_d;
  logic [31:0] a_d;
  logic [ 2:0] HSIZE_d;
  logic HReadyR;

  mux2 #(1) HReadyMux(HReady, 1'b1, HResetn, HReadyR);

  flopenr #(32) addrFlop(clk, ~HResetn, HReadyR, a, a_d);
  flopenr #(3) hsizeFlop(clk, ~HResetn, HReadyR, HSIZE, HSIZE_d);
  flopenr #(3) bitDelayFlop(clk, ~HResetn, HReadyR, {we, re, HSEL}, {we_d, re_d, HSEL_d});

  dmem m(.clk(clk), 
        .we(we_d), 
        .re(re_d),
        .HSEL(HSEL_d),
        .a(a_d),
        .wd(wd),
        .HSIZE(HSIZE_d),
        .rd(rd),
        .Valid(Valid));

endmodule
