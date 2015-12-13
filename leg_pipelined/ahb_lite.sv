module ahb_lite (
  input  logic        HCLK    ,
  input  logic        HRESETn ,
  input  logic        HREQUEST,
  input  logic [ 2:0] HSIZE   ,
  input  logic [31:0] HADDR   ,
  input  logic        HWRITE  ,
  input  logic [31:0] HWDATA  ,
  output logic [31:0] HRDATA  ,
  output logic        HREADY, fiq, irq,

  //UART
  input logic UARTCLK,
  input logic nUARTRST,
  output logic UARTTXD,
  input logic UARTRXD

);
              
  // TODO: Make memRE functional
  logic [ 1:0] HSEL   ;
  logic [31:0] HRDATA0, HRDATA1; // NOTE: This assumes memory outputs 4 words at a time
  logic [31:0] rawFIQVec, rawIRQVecPart, rawIRQVec, rawSICVec;
  logic        SICinterrupt; // says whether an interrupt is pending in the SIC

  //Interrupt Vectors
  assign rawFIQVec = 32'b0;
  assign rawIRQVecPart = 32'b0;
  assign rawSICVec = 32'b0;
  assign rawIRQVec = {rawIRQVecPart[31:27], SICinterrupt, rawIRQVecPart[25:0]};
  
  // Memory map decoding
  ahb_decoder dec(HADDR, HSEL);
  ahb_mux     mux(HSEL, HRDATA0, HRDATA1, HRDATA);
  
  // Memory and peripherals
  // mem_simulation mem (.clk(HCLK), .we(HWRITE), .re(HREQUEST & ~HWRITE), 
  //                     .a(HADDR), .wd(HWDATA), .rd(HRDATA0), .Valid(HREADY));

// Byte Addressable memory simulation
dmem mem (
  .clk  (HCLK              ),
  .we   (HWRITE            ),
  .re   (HREQUEST & ~HWRITE),
  .a    (HADDR             ),
  .wd   (HWDATA            ),
  .rd   (HRDATA0           ),
  .Valid(HREADY            ),
  .HSEL (HSEL[0]           ),
  .HSIZE(HSIZE             )
);

io_fwd_shim ioShim(  .*,
  .HSEL  (HSEL[1]   ),
  .HRDATA(HRDATA1   )
);

uart uart (
  .PCLK (HCLK),
  .PRESETn (HRESETn),
  .PSEL (HSEL),
  .PENABLE (HREQUEST),
  .PWRITE (HWRITE),
  .PADDR (HADDR[11:0]),
  .PWDATA (HWDATA[15:0]),

  // Todo external clock UARTCLK
  .UARTCLK (UARTCLK), // input
  .nUARTRST (nUARTRST), // input
  .UARTTXD (UARTTXD), // input
  .UARTRXD (UARTRXD) // output
  );
  
endmodule
