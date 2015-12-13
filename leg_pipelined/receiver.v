/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * receiver.v
 */

//
// Encodings for 'state'
//
`define IDLE    3'b000
`define DISABLE 3'b001
`define BREAK   3'b010
`define START   3'b011
`define DATA    3'b100
`define PARITY  3'b101
`define STOP1   3'b110


//
// Encodings for 'be_state'
//
`define BE_IDLE   2'b00
`define BE_COUNT8 2'b01
`define BE_MAYBE  2'b10
`define BE_BREAK  2'b11


//
// WARNINGS:
// the way we have made the state machine, after receiving the word including
// stop bit, we will go from STOP1 to IDLE, while still in the middle of a cycle
// of 16 incoming data bits.  Specifically, we will go from STOP1 to IDLE when
// count16 is 4'b1000.  To be absolutley correct, we should wait until the end
// of the entire stop bit.  In practicallity, unless there is a glitch on
// UARTRXD, we will be waiting in IDLE while the rest of the previous word's
// stop bit is received.
//
// NO ERROR IS SENT when we detect a false start bit.  The document does
// not seem to have any flag to raise when a false start is detected.
//
// NEED TO VERIFY that waiting till count16 is 4'b1000 is indeed the correct
// count to wait to, to ensure we are 'voting' in the middle, as per the
// definition of 'middle' sampling point in section 2.4.3, "Data transmission or reception"
//
// NEED TO VERIFY that in state DATA, waiting till count16 is 4'b1111 does
// indeed correspond to waiting exactly 16 baudClks from sample point to sample point
//

//
// NOTES:
//
// Here are the definitions of the possible errors
//
// From 3.3.1 UARTDR table 3-2
// rx_break_err - when input is held low for longer than a full word reception
// parity_err - if the incoming parity does not match the computed parity  AND
//              also only if parity_en is asserted
// framing_err - if we do not receive a valid stop bit (i.e. got a 0 instead of 1 when
//               its time to check for the stop bit
//


module receiver (
		 // clock and reset
		 input logic CLK,
		 input logic RSTn,

		 //--------------------------------------------------------------------
		 // microprocessor i/f
		 // from UARTLCR_H location 0x02C (or 0x0B if counting 4 byte words)
		 // bits 7,6:5,2,1
		 input logic       stick_parity_sel,// [7]
		 input logic [1:0] word_len,        // [6:5] 11=8,10=7,01=6,00=5
		 input logic       even_parity_sel, // [2] 1=even parity, 0=odd parity
		 input logic       parity_en,       // [1] 1=check parity, 0=dont check
		 
		 // from UARTCR location 0x030 (or 0x0C if counting 4 byte words)
		 // bits 9, 0
		 input logic       rx_en,           // [9] 1=rx is enabled
		 input logic       UART_en,         // [0] 1=UART is enabled
		 //--------------------------------------------------------------------
		 
		 // fifo i/f
		 output logic       rx_break_err,
		 output logic       parity_err,
		 output logic       framing_err,
		 output logic [7:0] rx_fifo_data,
		 output logic       rx_fifo_data_valid,
		 

		 // baud clock
		 input logic        baudClk,
		 
		 // input data
		 input logic        UARTRXD
		 );


   logic       rx_break_err_next;
   logic       parity_err_next;
   logic       framing_err_next;
   logic [7:0] rx_fifo_data_next;
   logic       rx_fifo_data_valid_next;
				      
   logic [2:0] state;
   logic [2:0] state_next;

   logic [3:0] count16;
   logic [3:0] count16_next;

   logic [7:0] internal_data;
   logic [7:0] internal_data_next;

   logic       internal_parity;
   logic       internal_parity_next;
       
   logic [2:0] count8;
   logic [2:0] count8_next;

   logic       received_parity;
   logic       received_parity_next;

   logic [2:0] data_bits_to_receive; // a function of word_len

   logic       expected_parity;
   

   //
   // variables for Break Error
   //
   logic [1:0] be_state;
   logic [1:0] be_state_next;

   logic [3:0] be_count16;
   logic [3:0] be_count16_next;

   logic [3:0] be_zero_count;
   logic [3:0] be_zero_count_next;

   //
   // variables for voting
   //
   logic       rxd_d1;
   logic       rxd_d1_next;
   logic       rxd_d2;
   logic       rxd_d2_next;

   logic       vote;
   

// note that data_bits_to_receive is a combinatorial function of word_len
// if there is a synthesis timing path issue with this we can always
// flop it.... word_len should be stable and not changing while transmitting
// data.
always_comb begin
   case(word_len)
     2'b00 : data_bits_to_receive = 3'b100; // 5 bits (0 to 4)
     2'b01 : data_bits_to_receive = 3'b101; // 6 bits (0 to 5)
     2'b10 : data_bits_to_receive = 3'b110; // 7 bits (0 to 6)
     2'b11 : data_bits_to_receive = 3'b111; // 8 bits (0 to 7)
   endcase
end

always_ff @(posedge CLK) begin
   if (RSTn == 1'b0) begin
      state           <= `IDLE;
      count16         <= 4'b0000;
      internal_data   <= 8'h00;
      internal_parity <= 1'b0;
      count8          <= 3'b000;
      received_parity <= 1'b0;

      parity_err         <= 1'b0;
      framing_err        <= 1'b0;
      rx_fifo_data       <= 8'h00;
      rx_fifo_data_valid <= 1'b0;
   end
   else begin
      state           <= state_next;
      count16         <= count16_next;
      internal_data   <= internal_data_next;
      internal_parity <= internal_parity_next;
      count8          <= count8_next;
      received_parity <= received_parity_next;

      parity_err         <= parity_err_next;
      framing_err        <= framing_err_next;
      rx_fifo_data       <= rx_fifo_data_next;
      rx_fifo_data_valid <= rx_fifo_data_valid_next;
   end
end   

always_comb begin
   state_next           = state;
   count16_next         = count16;
   internal_data_next   = internal_data;
   internal_parity_next = internal_parity;
   count8_next          = count8;
   received_parity_next = received_parity;

   //
   // note that parity_err, framing_err, rx_fifo_dtaa are ONLY valid
   // when rx_fifo_data_valid bit is 1.  When that bit is 0, those
   // signals should not be used by any module connected to these outputs
   //
   parity_err_next         = parity_err;
   framing_err_next        = framing_err;
   rx_fifo_data_next       = rx_fifo_data;
   rx_fifo_data_valid_next = 1'b0;

   case(state)
     `IDLE : begin
	if ((rx_en == 1'b0) || (UART_en == 1'b0)) begin
	   state_next = `DISABLE;
	end

	//
	// Per bit 10 of UARTDR, "When a break occurs only one 0 character
	//                        is loaded into the FIFO.  The next character
	//                        is only enabled after the receive data input goes to a 1"
	// Thus we need to sit in the BREAK state, once detected, and sit there
	// until input goes back to 1.
	//
	else if (rx_break_err == 1'b1) begin
	   state_next = `BREAK;
	end

	//
	// did we get what could be the start of the 'start' bit?
	//
	else if ((UARTRXD == 1'b0) && (baudClk == 1'b1)) begin
	   state_next = `START;
	   count16_next = 4'b0001;
	end
     end // case `IDLE

     `DISABLE : begin
	if ((rx_en == 1'b1) && (UART_en == 1'b1)) begin
	   state_next = `IDLE;
	end
     end // case `DISABLE

     `BREAK : begin
	if ((UARTRXD == 1'b1) && (baudClk == 1'b1)) begin
	   state_next = `IDLE;
	end
     end // case `BREAK

     //
     // In this state, we need to wait until count16 is 4'b1000
     // We then ensure that the bit is still 0.  We use the 'vote' bit
     // instead of UARTRXD.  If it is still 0 then we have indeed gotten
     // what we consider a valid start bit.
     //
     `START : begin
	if (baudClk == 1'b1) begin
	   count16_next = count16 + 1'b1;
	   if (count16 == 4'b1000) begin
	      if (vote == 1'b0) begin
		 //
		 // we did indeed get a valid start bit!
		 //
		 state_next = `DATA;
		 count16_next = 4'b0000;
		 internal_data_next = 8'h00;
		 internal_parity_next = 1'b0;
		 count8_next = 3'b000;
	      end // of if vote is 0
	      else begin
		 //
		 // if vote is NOT 0, that means we have gotten a false start bit
		 // and thus we go back to IDLE
		 //
		 state_next = `IDLE;
	      end // of if vote is not 0
	   end // of if count16 is 4'b1000
	end
     end // case START

     `DATA : begin
	if (baudClk == 1'b1) begin
	   count16_next = count16 + 1'b1;
	   //
	   // the next sample point is when we have waited for 16 baudClks
	   //
	   if (count16 == 4'b1111) begin
	      internal_data_next = internal_data >> 1'b1;
	      internal_data_next[7] = vote;

	      internal_parity_next = internal_parity ^ vote;

	      count8_next = count8 + 1'b1;

	      //
	      // have we received all of the data that we should have
	      // received?  If so, we now need to see if we should
	      // look for the parity bit next, or look for the stop bit
	      //
	      if (count8 == data_bits_to_receive) begin
		 count16_next = 4'b0000; // redundant but just in case
		 //
		 // we are done the data!  Receive the parity?
		 //
		 if (parity_en == 1'b1)  begin
		    state_next = `PARITY;
		 end
		 else begin
		    state_next = `STOP1;
		 end
	      end // of if count8 is data_bits_to_receive
	   end // of if count16 is 4'b1111
	end // of if baudClk is 1
     end // case `DATA

     `PARITY : begin
	if (baudClk == 1'b1) begin
	   count16_next = count16 + 1'b1;
	   if (count16 == 4'b1111) begin
	      state_next = `STOP1;
	      count16_next = 4'b0000; // redundant
	      received_parity_next = vote;
	   end // of if count16 is 4'b1111
	end // of if baudClk is 1
     end // case `PARITY

     `STOP1 : begin
	if (baudClk == 1'b1) begin
	   count16_next = count16 + 1'b1;
	   if (count16 == 4'b1111) begin
	      state_next = `IDLE;

	      //
	      // Now, we have received start, data, possibly parity, and stop
	      // We need to do the following checks:
	      // is stop bit not 1?  then set framing_err
	      // is parity_err enabled?  then did we get correct parity?
	      // We then need to store the data from internal_data to rx_fifo_data
	      // and of course we need to raise rx_fifo_data_valid for ONE clock.
	      //

	      // the following code also works : framing_err_next = ~vote;
	      // however, the following is more readable
	      //
	      if (vote == 1'b0) framing_err_next = 1'b1;
	      else              framing_err_next = 1'b0;

	      //
	      // should we check parity?
	      //
	      if (parity_en == 1'b1) begin
		 if (expected_parity == received_parity) parity_err_next = 1'b0;
		 else                                    parity_err_next = 1'b1;
	      end // if we are checking for parity

	      //
	      // data
	      //
	      case (word_len)
		2'b00 : rx_fifo_data_next = {3'b000, internal_data[7:3]};
		2'b01 : rx_fifo_data_next = { 2'b00, internal_data[7:2]};
		2'b10 : rx_fifo_data_next = {  1'b0, internal_data[7:1]};
		2'b11 : rx_fifo_data_next = {        internal_data[7:0]};
	      endcase

	      //
	      // data is valid
	      //
	      rx_fifo_data_valid_next = 1'b1;
	      
	   end // of if count16 is 4'b1111
	end // of if baudClk is 1
     end // case `STOP1
   endcase
end // always_comb begin

   always_comb begin
      if (stick_parity_sel == 1'b1) begin
	 expected_parity = ~even_parity_sel;
      end
      else begin
	 expected_parity = internal_parity ^ (~even_parity_sel);
      end
   end


   //
   // We need to detect if a Break Error occured.  A Break Error is defined as
   // "received data input was held LOW for longer than a full-word transmission
   //  time (defined as start, data, parity and stop bits).
   // This definition is from Table 3-2 UARTDR register bit 10.
   //
   // NOTE NOTE NOTE
   // We will fix the data size as 8 bits for the counting to the number of LOW
   // time periods before we delcare a Break Error.  Thus we will look for LOW
   // for the following amounts of time:
   // 1 for start, 8 for data, 1 for parity and 1 for stop for a total of 11.
   // To be truly accurate we should count for 3+function(word_len) where
   // function is the translation from word_len encoding to size.
   //

   
always_ff @(posedge CLK) begin
   if (RSTn == 1'b0) begin
      be_state      <= `BE_IDLE;
      rx_break_err  <= 1'b0;
      be_count16    <= 4'b0000;
      be_zero_count <= 4'b0000;
   end
   else begin
      be_state      <= be_state_next;
      rx_break_err  <= rx_break_err_next;
      be_count16    <= be_count16_next;
      be_zero_count <= be_zero_count_next;
   end
end

always_comb begin
   be_state_next      = be_state;
   rx_break_err_next  = rx_break_err;
   be_count16_next    = be_count16;
   be_zero_count_next = be_zero_count;

   // we should only update stuff when baudClk is active
   if (baudClk == 1'b1) begin
      case (be_state)
	`BE_IDLE : begin
	   rx_break_err_next = 1'b0;   // in BE_IDLE, there is no Break Error yet
	   if (UARTRXD == 1'b0) begin
	      be_state_next = `BE_COUNT8;
	      be_count16_next = 4'b0001;
	   end
	end // `BE_IDLE

	//
	// wait for 8 baudClks and then resample.  If vote is still 0,
	// we are now on path to have a break error.  Of course we need
	// at LEAST 11 zero's in a row.
	//
	`BE_COUNT8 : begin
	   be_count16_next = be_count16 + 1'b1;
	   if (be_count16 == 4'b1000) begin
	      be_count16_next = 4'b0000;
	      if (vote == 1'b0) begin
		 be_state_next = `BE_MAYBE;
		 be_zero_count_next = 4'b0001;
	      end
	      else begin
		 be_state_next = `BE_IDLE;
	      end
	   end
        end // `BE_COUNT8
	
	`BE_MAYBE : begin
	   be_count16_next = be_count16 + 1'b1;
	   if (be_count16 == 4'b1111) begin
	      if (vote == 1'b0) begin
		 be_zero_count_next = be_zero_count + 1'b1;
		 if (be_zero_count == 4'b1011) begin
		    be_state_next = `BE_BREAK;
		    rx_break_err_next = 1'b1;
		 end
	      end
	      else begin
		 be_state_next = `BE_IDLE;
	      end
	   end
	end // `BE_MAYBE
	
	`BE_BREAK : begin
	   be_count16_next = be_count16 + 1'b1;
	   if (be_count16 == 4'b1111) begin
	      if (vote == 1'b1) begin
		 be_state_next = `BE_IDLE;
		 rx_break_err_next = 1'b0;
	      end
	   end
	end // `BE_BREAK
      endcase
   end // baudClk is 1
end // always_comb

   //
   // We need to vote!  It's almost November so we must vote! :-)
   // From section "2.4.3 UART operation" subsection "Data transmission or reception"
   //    "For each sample of data, three readings are taken and the majority value
   //     is kept. In the following paragraphs the middle sampling point is defined,
   //     and one sample is taken either side of it."
   //
   //    "When the receiver is idle (UARTRXD continuously 1, in the marking state)
   //     and a LOW is detected on the data input (a start bit has been received),
   //     the receive counter, with the clock enabled by Baud16, begins running and
   //     data is sampled on the eighth cycle of that counter in normal UART mode,
   //     or the fourth cycle of the counter in SIR mode to allow for the shorter
   //     logic 0 pulses (half way through a bit period)."
   //
   //    "The start bit is valid if UARTRXD is still LOW on the eighth cycle of Baud16,
   //     otherwise a false start bit is detected and it is ignored."
   //
   //    "If the start bit was valid, successive data bits are sampled on every 16th
   //     cycle of Baud16(that is, one bit period later) according to the programmed
   //     length of the data characters. The parity bit is then checked if parity mode
   //     was enabled."
   //
   // This means that we will need sample 8, along with sample 7 and 9.  We will do
   // a majority vote on these three samples.  That majority vote value will be
   // used as the bit to record.
   //
   // We accomplish this by always keeping two bits, delayed by CLK (of course only
   // sampled when baudClk is 1).  We will call these values rxd_d1 and rxd_d2.
   // We then do things on sample 9 instead of on sample 8.
   //
   // NOTE NOTE NOTE : synchronization with _d1 _d2 and the rest of the main circuity
   // surrounding the "state" statemachine should work, as we will only delay on
   // clock edge and then only if baudClk is 1.  IF THIS DOES NOT WORK we will remove
   // the voting circuity and rely only on sample 8.

   always_ff @(posedge CLK) begin
      if (RSTn == 1'b0) begin
	 rxd_d1 <= 1'b0;
	 rxd_d2 <= 1'b0;
      end
      else begin
	 rxd_d1 <= rxd_d1_next;
	 rxd_d2 <= rxd_d2_next;
      end
   end

   always_comb begin
      rxd_d1_next = rxd_d1;
      rxd_d2_next = rxd_d2;

      if (baudClk == 1'b1) begin
	 rxd_d1_next = UARTRXD;
	 rxd_d2_next = rxd_d1;
      end

   end

   assign vote = (rxd_d1 & rxd_d2) | (rxd_d1 & UARTRXD) | (rxd_d2 & UARTRXD);
      
endmodule // receiver
