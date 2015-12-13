/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * tb2_test_baud.v
 */
`timescale 1ns/100ps

module tb_2_test_baud();
   
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

      UARTCLK = 0;
      UARTRSTn = 0;

      freq = 4000000;
      
      baud_rate = 110;
      
      brd = (freq)/(16*baud_rate);
      int_brd = $rtoi(brd);
      frac_brd = $rtoi(((brd - int_brd*1.0) * 64) + 0.5);
      
   
      $write("freq=%f,brd=%f,baud_rate=%d\n",freq,brd,baud_rate);
      $write("int_brd = %d, frac_brd = %d\n",int_brd,frac_brd);


      period = (1.0/freq) * 1000000000;
      $write("period is %d\n", period);

      half_period = period / 2;

      baud_divint = int_brd;
      
      baud_divfrac = frac_brd;
      

   end


   initial begin
      
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

   always @(negedge UARTCLK) begin
      if (UARTRSTn == 1'b0) begin
	 baud_count = 0;
      end
      else begin
	 if (baudClk == 1'b1)
	   baud_count = baud_count + 1;
      end
   end

   always @(posedge UARTCLK) begin
      if (UARTRSTn == 1'b0) begin
	 clock_count = 0;
      end
      else begin
	 clock_count = clock_count + 1;

	 if ((clock_count == freq)) begin
	    $write ("clock_count is %d and baud_count is %d\n",clock_count, baud_count);
	    $write ("and baud_count/16 is %d\n", (baud_count / 16));

	    sampled_baud_rate = baud_count / 16;
	    
	    err = ((sampled_baud_rate*1.0 - baud_rate*1.0) / (baud_rate * 1.0)) * 100;

	    $write("sampled baud rate is %d, wanted baud rate is %d and err is %f percent\n",
		   sampled_baud_rate, baud_rate, err);
	    
	    $stop;
	    
	 end
      end
   end

   
endmodule 
