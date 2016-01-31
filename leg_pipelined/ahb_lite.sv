module ahb_lite (
  input  logic        HCLK    ,
  input  logic        HRESETn ,
  input  logic        HREQUEST, // TODO: Remove from io shim
  input  logic [ 2:0] HSIZE   ,
  input  logic [31:0] HADDR   ,
  input  logic        HWRITE  ,
  input  logic [31:0] HWDATA  ,
  output logic [31:0] HRDATA  ,
  output logic        HREADY, fiq, irq
);
              
  // TODO: Make memRE functional
  logic [ 1:0] HSEL, HSELDEL;
  logic [31:0] HRDATA0, HRDATA1; // NOTE: This assumes memory outputs 4 words at a time
  logic        HREADY0, HREADY1;
  logic [31:0] rawFIQVec, rawIRQVecPart, rawIRQVec, rawSICVec;
  logic        SICinterrupt; // says whether an interrupt is pending in the SIC
  logic        HREADYR;

  //Interrupt Vectors
  assign rawFIQVec = 32'b0;
  assign rawIRQVecPart = 32'b0;
  assign rawSICVec = 32'b0;
  assign rawIRQVec = {rawIRQVecPart[31:27], SICinterrupt, rawIRQVecPart[25:0]};

  // Delay enable logic
  mux2 #(1) HREADYmux(HREADY, 1'b1, HRESETn, HREADYR);

  // Delay address for decoder and mux
  // flopenr #(32) adrreg(HCLK, ~HRESETn, HREADYR, HADDR, HADDRDEL);
  flopenr #(2) selreg(HCLK, ~HResetn, HREADYR, HSEL, HSELDEL);
  
  // Memory map decoding
  ahb_decoder dec (HADDR, HSEL);
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

  io_fwd_shim ioShim (    .*,
    .HSEL  (HSEL[1]),
    .HRDATA(HRDATA1),
    .HREADY(HREADY1)
  );

  
endmodule
