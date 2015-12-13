/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * transmitter.v
 */
`define IDLE    3'b000
`define DISABLE 3'b001
`define BREAK   3'b010
`define START   3'b011
`define DATA    3'b100
`define PARITY  3'b101
`define STOP1   3'b110
`define STOP2   3'b111

//
// Notes :
// We are assuming microporcessor interface bits will be stable during a transmission
// cycle.  The microprocessor must disable the transmit (or UART), make changes, and
// then re-enable, before sending any additional data
//

// WARNINGS:
// will need to verfiy that count16 works propery and that we have indeed waited for
// exactly 16 baudClk cycles before sending next bit.
//
// will need to verify that we have got the parity computation correct at the very end,
// in state `DATA where we compute the transmit_bit_next...
//
// from wikipedia
// https://en.wikipedia.org/wiki/Parity_bit
//
// in the case of even parity, for a given set of bits, the occurrences of bits
// whose value is 1 is counted. If that count is odd, the parity bit value is set
// to 1, making the total count of occurrences of 1's in the whole set(including
// the parity bit) an even number. If the count of 1's in a given set of bits is
// already even, the parity bit's value remains 0.
//
// example 8'b0000_0010  with even parity, we should transmit 1 for parity
// example 8'b0100_0010  with even parity, we should transmit 0 for parity
//

module transmitter (
		    // clock and reset
		    input logic CLK,
		    input logic RSTn,

		    //--------------------------------------------------------------------
		    // microprocessor i/f
		    //
		    // to UARTFR (0x018)
		    output logic      tx_fifo_busy,
		    
		    // from UARTLCR_H location 0x02C (or 0x0B if counting 4 byte words)
		    // bits 7,6:5,3,2,1,0
		    input logic       stick_parity_sel,// [7]
		    input logic [1:0] word_len,        // [6:5] 11=8,10=7,01=6,00=5
		    input logic       two_stop_bits,   // [3] 1=2 bits, 0=1 bit
		    input logic       even_parity_sel, // [2] 1=even parity, 0=odd parity
		    input logic       parity_en,       // [1] 1=gen parity, 0=no parity
		    input logic       send_break,      // [0] 1=output low level continuously

		    // from UARTCR location 0x030 (or 0x0C if counting 4 byte words)
		    // bits 8, 0
		    input logic       tx_en,           // [8] 1=tx is enabled
		    input logic       UART_en,         // [0] 1=UART is enabled
		    //--------------------------------------------------------------------

		    // fifo i/f
		    input logic [7:0] fifo_data,
		    input logic       fifo_data_valid, // 1=there is data in the fifo
		    output logic      fifo_data_taken,

		    // baud clock
		    input logic       baudClk,

		    // output
		    output logic      UARTTXD
		    );

   logic 			      tx_fifo_busy_next;
   
   logic 			      fifo_data_taken_next;


				      
   logic [2:0] state;
   logic [2:0] state_next;

   logic [3:0] count16;
   logic [3:0] count16_next;

   logic [7:0] internal_data;
   logic [7:0] internal_data_next;

   logic       internal_parity;
   logic       internal_parity_next;
       
   logic       transmit_bit;
   logic       transmit_bit_next;

   logic [2:0] count8;
   logic [2:0] count8_next;

   logic [2:0] data_bits_to_send; // a function of word_len

   assign UARTTXD = transmit_bit;


// note that data_bits_to_send is a combinatorial function of word_len
// if there is a synthesis timing path issue with this we can always
// flop it.... word_len should be stable and not changing while transmitting
// data.
always_comb begin
   case(word_len)
     2'b00 : data_bits_to_send = 3'b100; // 5 bits (0 to 4)
     2'b01 : data_bits_to_send = 3'b101; // 6 bits (0 to 5)
     2'b10 : data_bits_to_send = 3'b110; // 7 bits (0 to 6)
     2'b11 : data_bits_to_send = 3'b111; // 8 bits (0 to 7)
   endcase
end
       
always_ff @(posedge CLK) begin
   if (RSTn == 1'b0) begin
      state           <= `IDLE;
      count16         <= 4'b0000;
      internal_data   <= 8'h00;
      internal_parity <= 1'b0;
      transmit_bit    <= 1'b1;
      count8          <= 3'b000;

      tx_fifo_busy    <= 1'b0;
      fifo_data_taken <= 1'b0;
   end
   else begin
      state           <= state_next;
      count16         <= count16_next;
      internal_data   <= internal_data_next;
      internal_parity <= internal_parity_next;
      transmit_bit    <= transmit_bit_next;
      count8          <= count8_next;

      tx_fifo_busy    <= tx_fifo_busy_next;
      fifo_data_taken <= fifo_data_taken_next;
   end
end   

always_comb begin
   state_next           = state;
   count16_next         = count16;
   internal_data_next   = internal_data;
   internal_parity_next = internal_parity;
   transmit_bit_next    = transmit_bit;
   count8_next          = count8;
   tx_fifo_busy_next    = tx_fifo_busy;

   fifo_data_taken_next = 1'b0;   // reverts to zero by default

   case(state)
     `IDLE : begin
	tx_fifo_busy_next = 1'b0;
	
	if ((tx_en == 1'b0) || (UART_en == 1'b0)) begin
	   state_next = `DISABLE;
	   transmit_bit_next = 1'b1;
	end
	else if (send_break == 1'b1) begin
	   state_next = `BREAK;
	   transmit_bit_next = 1'b0;
	end
	//
	// do we have data to send?
	// We also need to wait till we have a baudClk valid
	//
	else if ((fifo_data_valid == 1'b1) && (baudClk == 1'b1)) begin
	   state_next = `START;
	   count16_next = 4'b0000;
	   internal_data_next = fifo_data; // grab the data to send
	   internal_parity_next = 1'b0;    // reset the cumulative internal parity
	   transmit_bit_next = 1'b0;       // transmit out 0 for start

	   tx_fifo_busy_next = 1'b1;       // tell microprocessor i/f we are busy
	   
	   fifo_data_taken_next = 1'b1;    // tell the fifo we have taken data
	end
     end // case `IDLE

     `DISABLE : begin
	if ((tx_en == 1'b1) && (UART_en == 1'b1)) begin
	   state_next = `IDLE;
	end
     end // case `DISABLE

     `BREAK : begin
	if (send_break == 1'b0) begin
	   state_next = `IDLE;
	   transmit_bit_next = 1'b1;  // when we leave BREAK we need to set back to 1 or IDLE value
	end
     end // case `BREAK

     `START : begin

	// we only attempt to change stuff if baudClk is active
	if (baudClk == 1'b1) begin
	  count16_next = count16 + 1'b1;
	   // have we waited for 16 baudClk's?
	   if (count16 == 4'b1111) begin
	      state_next = `DATA;
	      count16_next = 4'b0000;   // this statement is redundant but just in case :-)
	      transmit_bit_next = internal_data[0];
	      internal_parity_next = internal_parity ^ internal_data[0];
	      internal_data_next = internal_data >> 1'b1;
	      
	      count8_next = 3'b000;
	   end
	end // if (baudClk is 1)
     end // case `START

     `DATA : begin
	// we only attempt to change stuff if baudClk is active
	if (baudClk == 1'b1) begin
	  count16_next = count16 + 1'b1;
	   // have we waited for 16 baudClk's?
	   if (count16 == 4'b1111) begin
	      //
	      // have we transmitted all the bits required?
	      //
	      if (count8 == data_bits_to_send) begin
		 count16_next = 4'b0000;   // redundant but just in case
		 //
		 // we are done the data!  Send the partiy?
		 //
		 if (parity_en == 1'b1) begin
		    state_next = `PARITY;

		    // NOTE NOTE NOTE:
		    // we could have computed the parity incorrectly... verify with examples!!!
		    //
		    // the computed parity truth table is from table 3-11 of the datasheet
		    if (stick_parity_sel == 1'b1) transmit_bit_next = ~even_parity_sel;
		    else                          transmit_bit_next = internal_parity ^ (~even_parity_sel);
		 end
		 else begin
		    state_next = `STOP1;
		    transmit_bit_next = 1'b1; // this is the stop bit
		 end
	      end
	      //
	      // no? then send the next bit
	      //
	      else begin
		 count16_next = 4'b0000;   // this statement is redundant but just in case :-)
		 transmit_bit_next = internal_data[0];
		 internal_parity_next = internal_parity ^ internal_data[0];
		 internal_data_next = internal_data >> 1'b1;
	      
		 count8_next = count8 + 1'b1;
	      end
	      
	   end
	end // if (baudClk is 1)
     end // case `DATA

     `PARITY : begin
	// we only attempt to change stuff if baudClk is active
	if (baudClk == 1'b1) begin
	  count16_next = count16 + 1'b1;
	   // have we waited for 16 baudClk's?
	   if (count16 == 4'b1111) begin
	      state_next = `STOP1;
	      count16_next = 4'b0000;   // this statement is redundant but just in case :-)
	      transmit_bit_next = 1'b1; // this is the stop bit
	   end
	end // if (baudClk is 1)
     end // case `PARITY

     `STOP1 : begin
	// we only attempt to change stuff if baudClk is active
	if (baudClk == 1'b1) begin
	  count16_next = count16 + 1'b1;
	   // have we waited for 16 baudClk's?
	   if (count16 == 4'b1111) begin
	      if (two_stop_bits == 1'b1) begin
		 state_next = `STOP2;
		 count16_next = 4'b0000;   // this statement is redundant but just in case :-)
		 transmit_bit_next = 1'b1; // this is the 2nd stop bit
	      end
	      else begin
		 state_next = `IDLE;
		 transmit_bit_next = 1'b1; // this is the idle bit
	      end
	   end
	end // if (baudClk is 1)
     end // case `STOP1

     `STOP2 : begin
	// we only attempt to change stuff if baudClk is active
	if (baudClk == 1'b1) begin
	  count16_next = count16 + 1'b1;
	   // have we waited for 16 baudClk's?
	   if (count16 == 4'b1111) begin
	      state_next = `IDLE;
	      transmit_bit_next = 1'b1; // this is the idle bit
	   end
	end // if (baudClk is 1)
     end // case STOP2
     
   endcase
end				     


endmodule // transmitter
