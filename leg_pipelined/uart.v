/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * uart.v
 */
module uart
  (
   //
   // AMBA APB signals
   // see AMBA 3 APB Protocol.
   // currently using v1.0B dated 17-Aug-2004 as a reference for these signals
   //
   input logic         PCLK,     // HCLK
   input logic         PRESETn,  // HRESETn

   input logic         PSEL,     // HSEL
   input logic         PENABLE,  // HREQUEST (out of specification)
   input logic         PWRITE,   // HWRITE
   input logic [11:0]  PADDR,    // HADDR (but 4:0) in original I/F
   input logic [15:0]  PWDATA,   // HWDATA (but 31:0) in original I/F

   output logic [15:0] PRDATA,   // HRDATA (but 31:0) in original I/F


   //
   // UART clock and reset
   //
   input logic        UARTCLK,
   input logic        nUARTRST,

   //
   // UART data in and out
   //
   output logic       UARTTXD,
   input logic        UARTRXD
   
   );

   //
   // to/from apb_interface
   //

   logic [7:0] 	      transmit_data;
   logic 	      transmit_data_valid;

   logic [7:0] 	      receive_data;
   logic 	      receive_data_read;

   logic 	      overrun_err;
   logic 	      rx_break_err;
   logic 	      parity_err;
   logic 	      framing_err;
   
   logic 	      tx_fifo_full;
   logic 	      tx_fifo_empty;
   logic 	      tx_fifo_busy;

   logic 	      rx_fifo_full;
   logic 	      rx_fifo_empty;
   
   
   logic [15:0]       baud_divint;
   logic [5:0] 	      baud_divfrac;

   logic  	      stick_parity_sel;
   logic [1:0] 	      word_len;
   logic 	      fifo_en;
   logic 	      two_stop_bits;
   logic 	      even_parity_sel;
   logic 	      parity_en;
   logic 	      send_break;
   
   logic 	      receive_en;
   logic 	      transmit_en;
   logic 	      loopback_en;
   logic 	      UART_en;

   logic [2:0] 	      rx_fifo_level_for_alarm;
   logic [2:0] 	      tx_fifo_level_for_alarm;
   
   
   // from baud_rate_generator
   logic 	      baudClk;

   // to/from tx_fifo
   logic [7:0] 	      tx_rdata;
   logic 	      tx_rdata_valid;
   logic 	      tx_rdata_taken;
   logic 	      tx_fifo_alarm;
   

   // to/from rx_fifo
   logic [7:0] 	      rx_fifo_data;
   logic 	      rx_fifo_data_valid;
   logic 	      rx_fifo_alarm;
   
   
   

  apb_interface apb_interface_1
     (
      .PCLK       (PCLK),     // HCLK
      .PRESETn    (PRESETn),  // HRESETn

      .PSEL       (PSEL),     // HSEL
      .PENABLE    (PENABLE),  //
      .PWRITE     (PWRITE),   // HWRITE
      .PADDR      (PADDR),    // HADDR (but 4:0) in original I/F
      .PWDATA     (PWDATA),   // HWDATA (but 31:0) in original I/F

      .PRDATA     (PRDATA),   // HRDATA (but 31:0) in original I/F
       
      // 0x000 RW UARTDR
      .transmit_data       (transmit_data),
      .transmit_data_valid (transmit_data_valid),

      // 0x000 RX UARTDR
      .receive_data        (receive_data),
      .receive_data_read   (receive_data_read),
      
      // 0x004 RW UARTRSR/UARTECR
      .overrun_err           (overrun_err), // from rx_fifo ONLY
      .rx_break_err          (rx_break_err),
      .parity_err            (parity_err),
      .framing_err           (framing_err),

       
      // 0x018 RO UARTFR
      .tx_fifo_full          (tx_fifo_full),
      .tx_fifo_empty         (tx_fifo_empty),
      .tx_fifo_busy          (tx_fifo_busy),  // WARNING... this signal is off of UARTCLK

      .rx_fifo_full          (rx_fifo_full),
      .rx_fifo_empty         (rx_fifo_empty),
      
      // 0x024 RW UARTIBRD
      .baud_divint           (baud_divint),
      // 0x028 RW UARTFBRD
      .baud_divfrac          (baud_divfrac),
      
      // 0x02C RW UARTLCR_H
      .stick_parity_sel      (stick_parity_sel),
      .word_len              (word_len),
      .fifo_en               (fifo_en),
      .two_stop_bits         (two_stop_bits),
      .even_parity_sel       (even_parity_sel),
      .parity_en             (parity_en),
      .send_break            (send_break),
      
      // 0x030 RW UARTCR
      .receive_en            (receive_en),
      .transmit_en           (transmit_en),
      .loopback_en           (loopback_en), // note this is not coded up yet
      .UART_en               (UART_en),
      
      /// 0x34 RW UARTIFLS
      .rx_fifo_level_for_alarm  (rx_fifo_level_for_alarm),
      .tx_fifo_level_for_alarm  (tx_fifo_level_for_alarm)
       
       );


  baud_rate_generator baud_rate_generator_1
     (
      .CLK                   (UARTCLK),
      .RSTn                  (nUARTRST),
      .baud_divint           (baud_divint),
      .baud_divfrac          (baud_divfrac),
      .baudClk               (baudClk)
      );

   tx_fifo tx_fifo_1
     (
      .wCLK                  (PCLK),
      .wRSTn                 (PCLK_RSTn),

      .rCLK                  (UARTCLK),
      .rRSTn                 (nUARTRST),

      .fifo_en               (fifo_en),
      .fifo_full             (tx_fifo_full),
      .fifo_empty            (tx_fifo_empty),

      .overrun_err           (),              // is not connected
      .fifo_level_for_alarm  (tx_fifo_level_for_alarm),
      .fifo_alarm            (tx_fifo_alarm),    // NOTE NOTE NOTE need to connect this to apb_interface

      .wdata                 (transmit_data),
      .wdata_valid           (transmit_data_valid),

      .rdata                 (tx_rdata),
      .rdata_valid           (tx_rdata_valid),
      .rdata_taken           (tx_rdata_taken)
      
      );

   transmitter transmitter_1 
     (
      .CLK             (UARTCLK),
      .RSTn            (nUARTRST),

      .tx_fifo_busy    (tx_fifo_busy),

      .stick_parity_sel(stick_parity_sel),
      .word_len        (word_len),
      .two_stop_bits   (two_stop_bits),
      .even_parity_sel (even_parity_sel),
      .parity_en       (parity_en),
      .send_break      (send_break),

      .tx_en           (transmit_en),
      .UART_en         (UART_en),

      .fifo_data       (tx_rdata),
      .fifo_data_valid (tx_rdata_valid),
      .fifo_data_taken (tx_rdata_taken),

      .baudClk         (baudClk),
      .UARTTXD         (UARTTXD)
   );


  receiver receiver_1
     (
      // clock and reset
      .CLK             (UARTCLK),
      .RSTn            (nUARTRST),

      // microprocessor i/f
      // from UARTLCR_H location 0x02C (or 0x0B if counting 4 byte words)
      // bits 7,6:5,2,1
      .stick_parity_sel(stick_parity_sel),
      .word_len        (word_len),
      .even_parity_sel (even_parity_sel),
      .parity_en       (parity_en),
		       
      .rx_en           (receive_en),  // [9] 1=rx is enabled
      .UART_en         (UART_en),     // [0] 1=UART is enabled

		 
      // fifo i/f
      .rx_break_err       (rx_break_err),
      .parity_err         (parity_err),
      .framing_err        (framing_err),
      .rx_fifo_data       (rx_fifo_data),
      .rx_fifo_data_valid (rx_fifo_data_valid),
      

      // baud clock
      .baudClk            (baudClk),
		 
      // input data
      .UARTRXD            (UARTRXD)
      );

   rx_fifo rx_fifo_1
     (
      .wCLK                  (PCLK),
      .wRSTn                 (PCLK_RSTn),

      .rCLK                  (UARTCLK),
      .rRSTn                 (nUARTRST),

      .fifo_en               (fifo_en),
      .fifo_full             (rx_fifo_full),
      .fifo_empty            (rx_fifo_empty),

      .overrun_err           (overrun_err),
      .fifo_level_for_alarm  (rx_fifo_level_for_alarm),
      .fifo_alarm            (rx_fifo_alarm),    // NOTE NOTE NOTE need to connect this to apb_interface

      .wdata                 (rx_fifo_data),
      .wdata_valid           (rx_fifo_data_valid),

      .rdata                 (receive_data),
      .rdata_valid           (),                // is not used
      .rdata_taken           (receive_data_read)
      
      );
   

endmodule