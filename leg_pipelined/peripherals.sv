module peripherals(input  logic        HCLK, HRESETn,
                   input  logic        HWRITE, HREQUEST,
                   input  logic  [1:0] HSEL,
                   input  logic  [2:0] HSIZE,
                   input  logic [31:0] HADDR, HWDATA,
                   output logic        HREADY,
                   output logic [31:0] HRDATA,
                   output logic        fiq, irq);

logic [31:0] HRDATA0, HRDATA1;
logic  [1:0] HSELDEL;
logic        HREADY0, HREADY1, HREADYR;

  // Delay enable logic
  mux2 #(1) HREADYmux(HREADY, 1'b1, HRESETn, HREADYR);

  // Delay address for decoder and mux
  // flopenr #(32) adrreg(HCLK, ~HRESETn, HREADYR, HADDR, HADDRDEL);
  flopenr #(2) selreg(HCLK, ~HRESETn, HREADYR, HSEL, HSELDEL);

  ahb_mux #(32) mux (HSELDEL,HRDATA0,HRDATA1,HRDATA);
  ahb_mux #(1) ready_mux (HSELDEL,HREADY0,HREADY1,HREADY);

  dmem_ahb mem (
    .clk     (HCLK    ),
    .HWRITE  (HWRITE  ),
    .HSEL    (HSEL[0] ),
    .HREADY  (HREADY  ),
    .HResetn (HRESETn ),
    .a       (HADDR   ),
    .wd      (HWDATA  ),
    .HSIZE   (HSIZE   ),
    .rd      (HRDATA0 ),
    .Valid   (HREADY0 )
  );


  io_fwd_shim ioShim (
    .HCLK    (HCLK    ),
    .HRESETn (HRESETn ),
    .HREQUEST(HREQUEST),
    .HADDR   (HADDR   ),
    .HWRITE  (HWRITE  ),
    .HWDATA  (HWDATA  ),
    .fiq     (fiq     ),
    .irq     (irq     ),
    .HSEL    (HSEL[1] ),
    .HRDATA  (HRDATA1 ),
    .HREADY  (HREADY1 )
  );


endmodule // peripherals