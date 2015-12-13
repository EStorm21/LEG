/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * tb_3_test_fx_fifo.v
 */
`timescale 1ns/100ps

module tb_3_test_tx_fifo();
   


   // ------------------------------------------------------------------
   // For the UARTCLK, which is the read domain for the tx_fifo
   //
   logic UARTCLK;
   logic UARTRSTn;

   logic [15:0] baud_divint;
   logic [5:0] 	baud_divfrac;
   logic 	baudClk;
   integer 	baud_count;
   integer 	clock_count;

   real         freq;
   integer 	baud_rate;
   real 	brd;
   integer 	int_brd;
   integer 	frac_brd;
   integer      period;
   integer 	half_period;

   integer 	sampled_baud_rate;
   real 	err;
 	

   initial begin
      freq = 4000000;
      baud_rate = 115200;
      
      brd = (freq)/(16*baud_rate);
      int_brd = $rtoi(brd);
      frac_brd = $rtoi(((brd - int_brd*1.0) * 64) + 0.5);
      baud_divint = int_brd;
      baud_divfrac = frac_brd;
      
      period = (1.0/freq) * 1000000000;
      half_period = period / 2;
   end


   initial begin
      UARTCLK = 0;
      UARTRSTn = 0;
      #1550;
      UARTRSTn = 1;
      @(posedge UARTCLK);
   end

   always begin
      #half_period UARTCLK = !UARTCLK;
   end


	baud_rate_generator B0 (
		.CLK (UARTCLK),
		.RSTn (UARTRSTn),
		.baud_divint (baud_divint),
		.baud_divfrac (baud_divfrac),
		.baudClk (baudClk)
	);


   // ------------------------------------------------------------------
   // For the PCLK, which is the write side of the tx_fifo
   //
   logic   PCLK;
   logic   PCLK_RSTn;
   real    pclk_freq;
   integer pclk_period;
   integer pclk_half_period;

   initial begin
      pclk_freq = 7000000;
      pclk_period = (1.0/pclk_freq) * 1000000000;
      pclk_half_period = pclk_period / 2;

      PCLK = 1'b0;
      PCLK_RSTn = 1'b0;

      #1234;
      PCLK_RSTn = 1'b1;
   end

   always begin
      #(pclk_half_period) PCLK = !PCLK;
   end


   logic fifo_en;
   logic fifo_full;
   logic fifo_emtpy;
   logic overrun_err;
   logic [2:0] fifo_level_for_alarm;
   logic       fifo_alarm;
   logic [7:0] wdata;
   logic       wdata_valid;
   logic [7:0] rdata;
   logic       rdata_valid;
   logic       rdata_taken;
   

   tx_fifo tx_fifo_0
     (
      .wCLK (PCLK),
      .wRSTn (PCLK_RSTn),

      .rCLK (UARTCLK),
      .rRSTn (UARTRSTn),

      .fifo_en (fifo_en),
      .fifo_full (fifo_full),
      .fifo_empty (fifo_empty),

      .overrun_err (overrun_err),
      .fifo_level_for_alarm (fifo_level_for_alarm),
      .fifo_alarm (fifo_alarm),

      .wdata (wdata),
      .wdata_valid (wdata_valid),

      .rdata (rdata),
      .rdata_valid (rdata_valid),
      .rdata_taken (rdata_taken)
      
      );

   initial begin
      wdata = 8'h00;
      wdata_valid = 1'b0;
      fifo_en = 1'b1;
      fifo_level_for_alarm = 3'b000;
      @(posedge PCLK_RSTn);
      @(posedge PCLK);
      @(posedge PCLK);
      @(posedge PCLK);
      @(posedge PCLK);


      wdata = 8'hAA;
      wdata_valid = 1'b1;
      @(posedge PCLK);
      wdata_valid = 1'b0;
      @(posedge PCLK);
      @(posedge PCLK);
      wdata = 8'hBB;
      wdata_valid = 1'b1;
      @(posedge PCLK);
      wdata_valid = 1'b0;
      @(posedge PCLK);
      @(posedge PCLK);
      wdata = 8'hCC;
      wdata_valid = 1'b1;
      @(posedge PCLK);
      wdata_valid = 1'b0;
      @(posedge PCLK);
      @(posedge PCLK);
      @(posedge PCLK);
      @(posedge PCLK);
      @(posedge PCLK);
      
   end // initial begin

   initial begin
      rdata_taken = 1'b0;
      @(posedge UARTRSTn);

      @(posedge UARTCLK);
      @(posedge UARTCLK);
      @(posedge UARTCLK);
      @(posedge UARTCLK);

      while (1) begin
	 while (rdata_valid == 0) @(posedge UARTCLK);

	 $write("read data is %h\n", rdata);
	 rdata_taken = 1'b1;
	 @(posedge UARTCLK);
	 rdata_taken = 1'b0;
	 @(posedge UARTCLK);
	 @(posedge UARTCLK);
	 @(posedge UARTCLK);
      end

      
   end
   
   
endmodule 
