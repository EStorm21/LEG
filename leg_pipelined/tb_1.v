/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * tb_1.v
 */
//
// In the first tb we are checking to see that we can write to the
// apb_interface
//
`timescale 1ns/100ps

module tb_1();
   
   logic UARTCLK;
   logic nUARTRST;


   logic PCLK;
   logic PRESETn;
   logic PSEL;
   logic PENABLE;
   logic PWRITE;
   logic [11:0] PADDR;
   logic [15:0] PWDATA;
   logic [15:0] PRDATA;
   

   initial begin
      

      UARTCLK = 0;
      nUARTRST = 0;
      #1550;

      nUARTRST = 1;

      @(posedge UARTCLK);
      @(posedge UARTCLK);
      @(negedge UARTCLK);


      $stop;
      
   end

   //
   // 4MHz is 250ns period.  1/2 period is thus 125us.
   //
   always begin
      #125 UARTCLK = !UARTCLK;
   end

   logic PCLK;
   logic PRESETn


   initial begin
      PCLK = 0;
      PRESETn = 0;

      #1505;

      PRESETn = 1;

      @(posedge PCLK);
      @(posedge PCLK);
      @(posedge PCLK);
      
   end
   
   //
   // 83ns 1/2 cycle is 166ns full cycle which is approx 6.024MHz 
   //
   always begin
      #83 PCLK = !PCLK;
   end


uart uart_1
  (
   .PCLK    (PCLK),     // HCLK
   .PRESETn (PRESETn),  // HRESETn

   .PSEL    (PSEL),     // HSEL
   .PENABLE (PENABLE),  //
   .PWRITE  (PWRITE),   // HWRITE
   .PADDR   (PADDR),    // HADDR (but 4:0) in original I/F
   .PWDATA  (PWDATA),   // HWDATA (but 31:0) in original I/F

   .PRDATA  (PRDATA),   // HRDATA (but 31:0) in original I/F

   .UARTCLK (UARTCLK),
   .nUARTRST (nUARTRST),

   .UARTTXD (UARTTXD),
   .UARTRXD (1'b1)
   
   );
   
endmodule // tb_1
