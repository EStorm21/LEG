module ahb_lite(input  logic        HCLK,
                input  logic        HRESETn,
                input  logic        HREQUEST,
                input  logic [31:0] HADDR, 
                input  logic        HWRITE,
                input  logic [31:0] HWDATA,
                output logic [31:0] HRDATA,
                output logic HREADY, fiq, irq);
              
  // TODO: Make memRE functional
  logic [2:0]  HSEL;
  logic [31:0] HRDATA0, HRDATA1, HRDATA2; // NOTE: This assumes memory outputs 4 words at a time
  logic [31:0] rawFIQVec, rawIRQVecPart, rawIRQVec, rawSICVec;
  logic        SICinterrupt; // says whether an interrupt is pending in the SIC

  //Interrupt Vectors
  assign rawFIQVec = 32'b0;
  assign rawIRQVecPart = 32'b0;
  assign rawSICVec = 32'b0;
  assign rawIRQVec = {rawIRQVecPart[31:27], SICinterrupt, rawIRQVecPart[25:0]};
  
  // Memory map decoding
  ahb_decoder dec(HADDR, HSEL);
  ahb_mux     mux(HSEL, HRDATA0, HRDATA1, HRDATA2, HRDATA);
  
  // Memory and peripherals
  // mem_simulation mem (.clk(HCLK), .we(HWRITE), .re(HREQUEST & ~HWRITE), 
  //                     .a(HADDR), .wd(HWDATA), .rd(HRDATA0), .Valid(HREADY));

dmem mem (.clk(HCLK), .we(HWRITE), .re(HREQUEST & ~HWRITE), 
                      .a(HADDR), .wd(HWDATA), .rd(HRDATA0), .Valid(HREADY), .HSEL(HSEL[0]));

pic primaryInterruptController(.*, .HSEL(HSEL[1]), .HRDATA(HRDATA1), .HADDR(HADDR[5:2]));
sic secondaryInterruptController(.*, .HSEL(HSEL[2]), .HRDATA(HRDATA2), .HADDR(HADDR[4:2]), .interrupt(SICinterrupt));
  
endmodule
