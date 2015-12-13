/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * apb_interface.v
 */ 
module apb_interface
      (
       //
       // AMBA APB signals
       // see AMBA 3 APB Protocol.
       // currently using v1.0B dated 17-Aug-2004 as a reference for these signals
       //
       input logic         PCLK,     // HCLK
       input logic         PRESETn,  // HRESETn

       input logic         PSEL,     // HSEL
       input logic         PENABLE,  //
       input logic         PWRITE,   // HWRITE
       input logic [11:0]  PADDR,    // HADDR (but 4:0) in original I/F
       input logic [15:0]  PWDATA,   // HWDATA (but 31:0) in original I/F

       output logic [15:0] PRDATA,   // HRDATA (but 31:0) in original I/F


       //
       // to/from core
       //
       
       // 0x000 RW UARTDR
       output logic [7:0]  transmit_data,
       output logic        transmit_data_valid,

       // 0x000 RX UARTDR
       input logic [7:0]   receive_data,
       output logic        receive_data_read,
       // 0x004 RW UARTRSR/UARTECR
       input logic         overrun_err, // from fifo!!!
       input logic         rx_break_err,
       input logic         parity_err,
       input logic         framing_err,

       
       // 0x018 RO UARTFR
       input logic         tx_fifo_full,
       input logic         tx_fifo_empty,
       input logic         tx_fifo_busy,  // WARNING... this signal is off of UARTCLK

       input logic         rx_fifo_full,
       input logic         rx_fifo_empty,

       // 0x024 RW UARTIBRD
       output logic [15:0] baud_divint,
       // 0x028 RW UARTFBRD
       output logic [5:0]  baud_divfrac,
       // 0x02C RW UARTLCR_H
       output logic        stick_parity_sel,
       output logic [1:0]  word_len,
       output logic        fifo_en,
       output logic        two_stop_bits,
       output logic        even_parity_sel,
       output logic        parity_en,
       output logic        send_break,
       // 0x030 RW UARTCR
       output logic        receive_en,
       output logic        transmit_en,
       output logic        loopback_en,
       output logic        UART_en,
       /// 0x34 RW UARTIFLS
       output logic [2:0]  rx_fifo_level_for_alarm,
       output logic [2:0]  tx_fifo_level_for_alarm
       
       );

   logic [15:0] 	   PRDATA_next;

   logic [7:0] 		   transmit_data_next;
   logic 		   transmit_data_valid_next;

   logic 		   receive_data_read_next;

   logic [15:0] 	   baud_divint_next;

   logic [5:0] 		   baud_divfrac_next;

   logic 		   stick_parity_sel_next;
   logic [1:0] 		   word_len_next;
   logic 		   fifo_en_next;
   logic 		   two_stop_bits_next;
   logic 		   even_parity_sel_next;
   logic 		   parity_en_next;
   logic 		   send_break_next;

   logic 		   receive_en_next;
   logic 		   transmit_en_next;
   logic 		   loopback_en_next;
   logic 		   UART_en_next;

   logic [2:0] 		   rx_fifo_level_for_alarm_next;
   logic [2:0] 		   tx_fifo_level_for_alarm_next;
   
   


   logic 		   int_break_err;
   logic 		   int_break_err_next;
   logic 		   int_parity_err;
   logic 		   int_parity_err_next;
   logic 		   int_framing_err;
   logic 		   int_framing_err_next;


   //
   // Let's do the logic for the writes
   //
   
   logic 		   write_active;

   assign write_active = (PSEL == 1'b1) && (PENABLE == 1'b1) && (PWRITE == 1'b1);

   //
   // For register UARTDR at 0x000
   always_comb begin
      transmit_data_next = transmit_data;
      transmit_data_valid_next = 1'b0;
      if ((PADDR == 12'h000) && (write_active == 1'b1)) begin
	 transmit_data_next = PWDATA[15:0];
	 transmit_data_valid_next = 1'b1;
      end
   end

   //
   // For register UARTRSR/UARTECR at 0x004
   // A write to this register clears the following error flags:
   // break_err,
   // parity_err,
   // framing_err
   //
   // Note that overrun_err is an input and thus cannot be cleared until overrun goes away
   //
   // Note that a read of UARTDR will load the incoming flags
   // NOTE NOTE NOTE that is a read of UARTDR at 0x000, and NOT a read of this
   // register...!!! funny behavior but ok.
   // Note : int_ prefix means 'internal'
   always_comb begin
      int_break_err_next   = int_break_err;
      int_parity_err_next  = int_parity_err;
      int_framing_err_next = int_framing_err;

      //
      // write to register 0x004
      //
      if ((PADDR == 12'h004) && (write_active == 1'b1)) begin
	 int_break_err_next   = 1'b0;
	 int_parity_err_next  = 1'b0;
	 int_framing_err_next = 1'b0;
      end

      //
      // was there a read from register 0x000 at this time?
      //
      if ((PADDR == 12'h000) && (PSEL == 1'b1) && (PENABLE == 1'b1) && (PWRITE == 1'b0)) begin
	 int_break_err_next   = rx_break_err;
	 int_parity_err_next  = parity_err;
	 int_framing_err_next = framing_err;
      end
   end
   
   //
   // For register UARTIBRD at 0x024
   always_comb begin
      baud_divint_next = baud_divint;
      if ((PADDR == 12'h024) && (write_active == 1'b1)) begin
	 baud_divint_next[15:0] = PWDATA[15:0];
      end
   end

   // For register UARTFBRD at 0x028
   always_comb begin
      baud_divfrac_next = baud_divfrac;
      if ((PADDR == 12'h028) && (write_active == 1'b1)) begin
	 baud_divfrac_next[5:0] = PWDATA[5:0];
      end
   end

   // For register UARTLCR_H at 0x02C
   always_comb begin
      stick_parity_sel_next = stick_parity_sel;
      word_len_next = word_len;
      fifo_en_next = fifo_en;
      two_stop_bits_next = two_stop_bits;
      even_parity_sel_next = even_parity_sel;
      parity_en_next = parity_en;
      send_break_next = send_break;
      
      if ((PADDR == 12'h02C) && (write_active == 1'b1)) begin
	 stick_parity_sel_next = PWDATA[7];
	 word_len_next         = PWDATA[6:5];
	 fifo_en_next          = PWDATA[4];
	 two_stop_bits_next    = PWDATA[3];
	 even_parity_sel_next  = PWDATA[2];
	 parity_en_next        = PWDATA[1];
	 send_break_next       = PWDATA[0];
      end
   end // always_comb begin

   // For register UARTCR at 0x030
   // WARNING!!! we need to complete this register at some point...
   // missing bits 15,14,13,12,11,10,2,1
   always_comb begin
      receive_en_next  = receive_en;
      transmit_en_next = transmit_en;
      loopback_en_next = loopback_en;
      UART_en_next     = UART_en;

      if ((PADDR == 12'h030) && (write_active == 1'b1)) begin
	 receive_en_next  = PWDATA[9];
	 transmit_en_next = PWDATA[8];
	 loopback_en_next = PWDATA[7];
	 UART_en_next     = PWDATA[0];
      end
   end // always_comb begin

   // For register UARTIFLS at 0x034
   always_comb begin
      rx_fifo_level_for_alarm_next = rx_fifo_level_for_alarm;
      tx_fifo_level_for_alarm_next = tx_fifo_level_for_alarm;

      if ((PADDR == 12'h034) && (write_active == 1'b1)) begin
	 rx_fifo_level_for_alarm_next = PWDATA[5:3];
	 tx_fifo_level_for_alarm_next = PWDATA[2:0];
      end
	  
   end
   
   

   always_ff @(posedge PCLK) begin
      if (PRESETn == 1'b0) begin
	 transmit_data       <= 8'h00;
	 transmit_data_valid <= 1'b0;

	 int_break_err   <= 1'b0;
	 int_parity_err  <= 1'b0;
	 int_framing_err <= 1'b0;
	 
	 baud_divint  <= 16'h0000;
	 baud_divfrac <= 6'b00_0000;

	 stick_parity_sel <= 1'b0;
	 word_len         <= 2'b11; // 8 bits by default
	 fifo_en          <= 1'b0;  // disabled by default
	 two_stop_bits    <= 1'b0;
	 even_parity_sel  <= 1'b0;  // odd selected by default
	 parity_en        <= 1'b1;
	 send_break       <= 1'b0;

	 receive_en  <= 1'b1; // enabled by default
	 transmit_en <= 1'b1; // enabled by default
	 loopback_en <= 1'b0;
	 UART_en     <= 1'b0;
	 	 
	 rx_fifo_level_for_alarm <= 3'b010;
	 tx_fifo_level_for_alarm <= 3'b010;
      end
      else begin
	 transmit_data       <= transmit_data_next;
	 transmit_data_valid <= transmit_data_valid_next;
	 
	 int_break_err   <= int_break_err_next;
	 int_parity_err  <= int_parity_err_next;
	 int_framing_err <= int_framing_err_next;

	 baud_divint  <= baud_divint_next;
	 baud_divfrac <= baud_divfrac_next;

	 stick_parity_sel <= stick_parity_sel_next;
	 word_len         <= word_len_next;
	 fifo_en          <= fifo_en_next;
	 two_stop_bits    <= two_stop_bits_next;
	 even_parity_sel  <= even_parity_sel_next; 
	 parity_en        <= parity_en_next;
	 send_break       <= send_break_next;

	 receive_en  <= receive_en_next;
	 transmit_en <= transmit_en_next;
	 loopback_en <= loopback_en_next;
	 UART_en     <= UART_en_next;

	 rx_fifo_level_for_alarm <= rx_fifo_level_for_alarm;
	 tx_fifo_level_for_alarm <= tx_fifo_level_for_alarm;
      end
   end // always_ff @ (posedge PCLK)

   //
   // Now lets perform the read...
   //
   always_comb begin
      PRDATA_next = PRDATA;
      receive_data_read_next = 1'b0;
      
      //
      // are we selected, enabled, and is it NOT a write?
      //
      if ((PSEL == 1'b1) && (PENABLE == 1'b1) && (PWRITE == 1'b0)) begin
	 case (PADDR)
	   12'h000 : begin
	      PRDATA_next = {4'h0,
			     overrun_err,
			     rx_break_err,
			     parity_err,
			     framing_err,
			     receive_data[7:0]
			     };
	      receive_data_read_next = 1'b1;
	   end
	   12'h004 : PRDATA_next = {12'h000,
				    overrun_err,
				    int_break_err,
				    int_parity_err,
				    int_framing_err
				    };
	   12'h024 : PRDATA_next = {         baud_divint[15:0]};
	   12'h028 : PRDATA_next = {12'h000, baud_divfrac[5:0]};
	   12'h02C : PRDATA_next = {8'h00,
				    stick_parity_sel,
				    word_len[1:0],
				    fifo_en,
				    two_stop_bits,
				    even_parity_sel,
				    parity_en,
				    send_break
				    };
	   12'h030 : PRDATA_next = {6'b00_0000, // these bits need to be added!!! WARNING!
                                    receive_en,
				    transmit_en,
				    loopback_en,
				    4'b0000,
				    2'b00, // these bits need to be added!!! WARNING!
				    UART_en
				    };

	   12'h034 : PRDATA_next = {10'b00_0000_0000,
				    rx_fifo_level_for_alarm[2:0],
				    tx_fifo_level_for_alarm[2:0]
                                    };
	   
	   
	   12'hFE0 : PRDATA_next = 16'h0011;
	   12'hFE4 : PRDATA_next = 16'h0010;
	   12'hFE8 : PRDATA_next = 16'h0014;
	   12'hFEC : PRDATA_next = 16'h0000;
	   12'hFF0 : PRDATA_next = 16'h000D;
	   12'hFF4 : PRDATA_next = 16'h00F0;
	   12'hFF8 : PRDATA_next = 16'h0005;
	   12'hFFC : PRDATA_next = 16'h0081;
	   default : PRDATA_next = 16'h0000;
	 endcase
      end
   end

   always_ff @(posedge PCLK) begin
      if (PRESETn == 1'b0) begin
	 PRDATA <= 16'h0000;
	 receive_data_read <= 1'b0;
      end
      else begin
	 PRDATA <= PRDATA_next;
	 receive_data_read <= receive_data_read_next;
      end
   end
   
endmodule