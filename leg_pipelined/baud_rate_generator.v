/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * baud_rate_generator.v
 */
module baud_rate_generator (
	input logic CLK,
	input logic RSTn,
	input logic [15:0] baud_divint,
	input logic [5:0] baud_divfrac,
	output logic baudClk
);

   logic [15:0]      int_count;
   logic [6:0] 	     frac_count;
   logic [15:0]      target_int_count;
	
	logic [15:0] int_count_next;
	logic [15:0] target_int_count_next;
	logic [6:0] frac_count_next;
	logic baudClk_next;
	
   always_ff @(posedge CLK) begin
      if (RSTn == 1'b0) begin
	     int_count        <= 16'h0001;   // counting starts at one
	     target_int_count <= 16'h0001;
	     frac_count       <= 7'b000_0000;
	     baudClk          <= 1'b0;
      end
      else begin
	     int_count        <= int_count_next;
	     target_int_count <= target_int_count_next;
	     frac_count       <= frac_count_next;
	     baudClk          <= baudClk_next;
      end
   end
   
   always_comb begin
      int_count_next = int_count + 1'b1;
      baudClk_next = 1'b0;
      frac_count_next = frac_count;

      target_int_count_next = target_int_count;
      
      
      if (int_count >= target_int_count) begin
	    int_count_next = 16'h0001;
	    baudClk_next = 1'b1;
	    frac_count_next = frac_count + baud_divfrac;  // add the error
	    target_int_count_next = baud_divint;

	    // did we exceed error?
	    if (frac_count[6] == 1'b1) begin
	      frac_count_next[6] = 1'b0;
	      target_int_count_next = baud_divint + 1'b1;
	    end // of if frac_count overflowed
      end // of if we have exceeded target integer count
   end


endmodule
			