/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * testbench_1.v
 */
`timescale 1ns/100ps

module testbench_1();
   
   logic UARTCLK;
   logic UARTRSTn;


   logic [15:0] baud_divint;
   logic [5:0] 	baud_divfrac;
   logic 	baudClk;

   logic [15:0] rx_baud_divint;
   logic [5:0] 	rx_baud_divfrac;
   logic 	rx_baudClk;


   logic 	tx_fifo_busy;
   logic [7:0] 	fifo_data;
   logic        fifo_data_valid;
   logic        fifo_data_taken;
   logic        UARTTXD;


   logic 	RX_CLK;
   logic 	RX_RSTn;

   logic 	rx_break_err;
   logic 	rx_parity_err;
   logic 	rx_framing_err;
   logic [7:0] 	rx_fifo_data;
   logic 	rx_fifo_data_valid;
   

   initial begin
      baud_divint = 16'b0000_0000_0000_0010; // Integer part
      baud_divfrac = 6'b00_1011; // Fractional part
      fifo_data = 8'h00;
      fifo_data_valid = 1'b0;
      

      UARTCLK = 0;
      UARTRSTn = 0;
      #1550;

      UARTRSTn = 1;

      @(posedge UARTCLK);
      @(posedge UARTCLK);
      @(negedge UARTCLK);

      //
      // transmit word 8'hAA;
      //
      fifo_data = 8'hAA;
      fifo_data_valid = 1'b1;

      while (fifo_data_taken != 1)
	@(posedge UARTCLK);

      fifo_data_valid = 1'b0;

      while (tx_fifo_busy == 1)
	@(posedge UARTCLK);

      @(posedge UARTCLK);
      @(posedge UARTCLK);
      @(posedge UARTCLK);

      //
      // transmit word 8'h55;
      //
      fifo_data = 8'h55;
      fifo_data_valid = 1'b1;

      while (fifo_data_taken != 1)
	@(posedge UARTCLK);

      fifo_data_valid = 1'b0;

      while (tx_fifo_busy == 1)
	@(posedge UARTCLK);

      @(posedge UARTCLK);
      @(posedge UARTCLK);
      @(posedge UARTCLK);


      //
      // transmit word 8'h80;
      //
      fifo_data = 8'h80;
      fifo_data_valid = 1'b1;

      while (fifo_data_taken != 1)
	@(posedge UARTCLK);

      fifo_data_valid = 1'b0;

      while (tx_fifo_busy == 1)
	@(posedge UARTCLK);

      @(posedge UARTCLK);
      @(posedge UARTCLK);
      @(posedge UARTCLK);

      //
      // transmit word 8'h02;
      //
      fifo_data = 8'h02;
      fifo_data_valid = 1'b1;

      while (fifo_data_taken != 1)
	@(posedge UARTCLK);

      fifo_data_valid = 1'b0;

      while (tx_fifo_busy == 1)
	@(posedge UARTCLK);

      @(posedge UARTCLK);
      @(posedge UARTCLK);
      @(posedge UARTCLK);

      fifo_data = 8'h00;

      $stop;
      
   end

   //
   // 4MHz is 250ns period.  1/2 period is thus 125us.
   //
   always begin
      #125 UARTCLK = !UARTCLK;
   end



	baud_rate_generator B0 (
		.CLK (UARTCLK),
		.RSTn (UARTRSTn),
		.baud_divint (baud_divint),
		.baud_divfrac (baud_divfrac),
		.baudClk (baudClk)
	);


   transmitter transmitter_1 (
			      .CLK (UARTCLK),
			      .RSTn (UARTRSTn),

			      .tx_fifo_busy    (tx_fifo_busy),

			      .stick_parity_sel(1'b0),
			      .word_len        (2'b11),
			      .two_stop_bits   (1'b0),
			      .even_parity_sel (1'b1),
			      .parity_en       (1'b1),
			      .send_break      (1'b0),

			      .tx_en           (1'b1),
			      .UART_en         (1'b1),

			      .fifo_data       (fifo_data),
			      .fifo_data_valid (fifo_data_valid),
			      .fifo_data_taken (fifo_data_taken),

			      .baudClk         (baudClk),
			      .UARTTXD         (UARTTXD)
   );

   initial begin
      RX_CLK = 0;
      RX_RSTn = 0;

      //
      // for 167ns or 6.024MHz and a buad rate of 115,200
      // 6.024/(16*115200) = 3.2683. Thus int is 3 and
      // frac is TRUNC(.2683 *64 +.5) = 17 decimal = 11 hex
      rx_baud_divint = 16'b0000_0000_0000_0011; // Integer part
      rx_baud_divfrac = 6'b01_0001; // Fractional part

      #1505;

      RX_RSTn = 1;

      @(posedge RX_CLK);
      @(posedge RX_CLK);
      @(posedge RX_CLK);
      
   end
   
   //
   // 83ns 1/2 cycle is 166ns full cycle which is approx 6.024MHz 
   //
   always begin
      #83 RX_CLK = !RX_CLK;
   end



   baud_rate_generator B1 (
			   .CLK (RX_CLK),
			   .RSTn (RX_RSTn),
			   .baud_divint (rx_baud_divint),
			   .baud_divfrac (rx_baud_divfrac),
			   .baudClk (rx_baudClk)
			   );

   receiver receiver_1
           (
	    // clock and reset
	    .CLK  (RX_CLK),
	    .RSTn (RX_RSTn),

	    // microprocessor i/f
	    // from UARTLCR_H location 0x02C (or 0x0B if counting 4 byte words)
	    // bits 7,6:5,2,1
	    .stick_parity_sel (1'b0),// [7]
	    .word_len         (2'b11), // [6:5] 11=8,10=7,01=6,00=5
	    .even_parity_sel  (1'b1),  // [2] 1=even parity, 0=odd parity
	    .parity_en        (1'b1),  // [1] 1=check parity, 0=dont check
		       
	    .rx_en            (1'b1),  // [9] 1=rx is enabled
	    .UART_en          (1'b1),  // [0] 1=UART is enabled

		 
	    // fifo i/f
	    .rx_break_err (rx_break_err),
	    .parity_err(rx_parity_err),
	    .framing_err(rx_framing_err),
	    .rx_fifo_data(rx_fifo_data),
	    .rx_fifo_data_valid(rx_fifo_data_valid),
		 

	    // baud clock
	    .baudClk (rx_baudClk),
		 
	    // input data
	    .UARTRXD (UARTTXD)
	    );

   
endmodule // testbench_1
