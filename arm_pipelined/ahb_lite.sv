module ahb_lite(input  logic        HCLK,
                input  logic        HRESETn,
                input  logic [31:0] HADDR,
                input  logic        HWRITE,
                input  logic [4*32-1:0] HWDATA,
                output logic [4*32-1:0] HRDATA,
                output logic HREADY);
              
  logic HSEL;
  // Todo: Change HRDATA0 to 32 bits, 
  logic [4*32-1:0] HRDATA0; // NOTE: This assumes memory outputs 4 words at a time
  
  // Memory map decoding
  ahb_decoder dec(HADDR, HSEL);
  ahb_mux     mux(HSEL, HRDATA0, HRDATA);
  
  // Memory and peripherals
  mem_simulation mem (.clk(HCLK), .we(HWRITE), .re(HSEL & ~HWRITE), 
                      .a(HADDR), .wd(HWDATA), .rd(HRDATA0), .Valid(HREADY));
  
endmodule
