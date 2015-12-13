/*
 * Avi Thaker
 * athaker@hmc.edu
 * December 8, 2015
 * rx_fifo.v
 */
//
// need to code logic for
// fifo_alarm
//
// we have separate fifos for tx and rx because they
// have different clock crossing needs for full and empty.
//


module rx_fifo
  (
   //
   input logic        wCLK,
   input logic        wRSTn,

   input logic        rCLK,
   input logic        rRSTn,
   
   //
   // microprocessor interface
   //
   // from UARTLCR_H 
   input logic        fifo_en,   // 1=enable full fifo, 0=only 0th word is used
   output logic       fifo_full, // if fifo_en then when full, else when word in 0th
   output logic       fifo_empty,// if fifo_en then when empty, else when word in 0th empty

   // this output is not used for the tx fifo... I.e. no place to use it in the
   // apb_interface but we have it just in case we ever need it.  The rx_fifo
   // generates overrun_err and it's signal IS used by the apb_interface.
   //
   output logic       overrun_err,
   
   // from UARTIFLS
   input logic [2:0]  fifo_level_for_alarm,
   output logic       fifo_alarm,
   
   //
   // write side of fifo
   //
   input logic [7:0] wdata,
   input logic       wdata_valid,
   
   //
   /// read side of fifo
   //
   output logic [7:0] rdata,
   output logic       rdata_valid,
   input  logic       rdata_taken
   
    
   );


   //
   // stuff that is clocked on wCLK domain
   //

   logic 	      fifo_full_next;
   logic 	      fifo_empty_next;
   logic 	      overrun_err_next;
   logic 	      fifo_alarm_next;
 	      

   
   logic [7:0] 	 data_0;
   logic [7:0] 	 data_0_next;
   logic [7:0] 	 data_1;
   logic [7:0] 	 data_1_next;
   logic [7:0] 	 data_2;
   logic [7:0] 	 data_2_next;
   logic [7:0] 	 data_3;
   logic [7:0] 	 data_3_next;
   logic [7:0] 	 data_4;
   logic [7:0] 	 data_4_next;
   logic [7:0] 	 data_5;
   logic [7:0] 	 data_5_next;
   logic [7:0] 	 data_6;
   logic [7:0] 	 data_6_next;
   logic [7:0] 	 data_7;
   logic [7:0] 	 data_7_next;
   logic [7:0] 	 data_8;
   logic [7:0] 	 data_8_next;
   logic [7:0] 	 data_9;
   logic [7:0] 	 data_9_next;
   logic [7:0] 	 data_10;
   logic [7:0] 	 data_10_next;
   logic [7:0] 	 data_11;
   logic [7:0] 	 data_11_next;
   logic [7:0] 	 data_12;
   logic [7:0] 	 data_12_next;
   logic [7:0] 	 data_13;
   logic [7:0] 	 data_13_next;
   logic [7:0] 	 data_14;
   logic [7:0] 	 data_14_next;
   logic [7:0] 	 data_15;
   logic [7:0] 	 data_15_next;

   logic [3:0] 	 wp;
   logic [3:0] 	 wp_next;

   logic [3:0] 	 rp_d1;
   logic [3:0] 	 rp_d2;
   logic [3:0] 	 rp_on_wclk;
   logic [3:0] 	 rp_on_wclk_next;

   logic 	 rdt_d1;
   logic 	 rdt_d2;
   logic 	 rdt_on_wclk;       // this is rdata_taken, valid on wCLK domain
   logic 	 rdt_on_wclk_next;

   logic [3:0] 	 delta;
   

   //
   // stuff that is clocked on rCLK domain
   //

   logic 	 rdata_valid_next;
	 

   logic [3:0] 	 rp;
   logic [3:0] 	 rp_next;

   logic [3:0] 	 wp_d1;
   logic [3:0] 	 wp_d2;
   logic [3:0] 	 wp_on_rclk;
   logic [3:0] 	 wp_on_rclk_next;

   logic 	 wdv_d1;
   logic 	 wdv_d2;
   logic 	 wdv_on_rclk;       // this is wdata_valid, valid on rCLK domain
   logic 	 wdv_on_rclk_next;


   //
   //------------------------------------------------------------------------------------
   // wCLK domain logic first...
   //
   always_comb begin
      data_0_next = data_0;
      data_1_next = data_1;
      data_2_next = data_2;
      data_3_next = data_3;
      data_4_next = data_4;
      data_5_next = data_5;
      data_6_next = data_6;
      data_7_next = data_7;
      data_8_next = data_8;
      data_9_next = data_9;
      data_10_next = data_10;
      data_11_next = data_11;
      data_12_next = data_12;
      data_13_next = data_13;
      data_14_next = data_14;
      data_15_next = data_15;

      //
      // if the fifo is not full, and we get a wdata_valid, then write
      // to the fifo where wp is pointing to...
      //
      if ((fifo_full == 1'b0) && (wdata_valid == 1'b1)) begin
	 case(wp)
	   4'b0000 : data_0_next = wdata;
	   4'b0001 : data_1_next = wdata;
	   4'b0010 : data_2_next = wdata;
	   4'b0011 : data_3_next = wdata;
	   4'b0100 : data_4_next = wdata;
	   4'b0101 : data_5_next = wdata;
	   4'b0110 : data_6_next = wdata;
	   4'b0111 : data_7_next = wdata;
	   4'b1000 : data_8_next = wdata;
	   4'b1001 : data_9_next = wdata;
	   4'b1010 : data_10_next = wdata;
	   4'b1011 : data_11_next = wdata;
	   4'b1100 : data_12_next = wdata;
	   4'b1101 : data_13_next = wdata;
	   4'b1110 : data_14_next = wdata;
	   4'b1111 : data_15_next = wdata;
	 endcase // case (wp)
      end

   end // always_comb
 	

   always_ff @(posedge wCLK) begin
      if (wRSTn == 1'b0) begin
	 data_0 <= 0;
	 data_1 <= 0;
	 data_2 <= 0;
	 data_3 <= 0;
	 data_4 <= 0;
	 data_5 <= 0;
	 data_6 <= 0;
	 data_7 <= 0;
	 data_8 <= 0;
	 data_9 <= 0;
	 data_10 <= 0;
	 data_11 <= 0;
	 data_12 <= 0;
	 data_13 <= 0;
	 data_14 <= 0;
	 data_15 <= 0;
      end
      else begin
	 data_0 <= data_0_next;
	 data_1 <= data_1_next;
	 data_2 <= data_2_next;
	 data_3 <= data_3_next;
	 data_4 <= data_4_next;
	 data_5 <= data_5_next;
	 data_6 <= data_6_next;
	 data_7 <= data_7_next;
	 data_8 <= data_8_next;
	 data_9 <= data_9_next;
	 data_10 <= data_10_next;
	 data_11 <= data_11_next;
	 data_12 <= data_12_next;
	 data_13 <= data_13_next;
	 data_14 <= data_14_next;
	 data_15 <= data_15_next;
      end
   end // always_ff @ (posedge CLK)


   //
   // cross data from rCLK to wCLK
   //

   always_comb begin
      //
      // look for a rising edge on rdata_taken.  we do this by looking at
      // that signal, delayed twice on the wclk.  If on the wclk, the newest
      // signal is a 1 and the one clock delayed version of that is 0, then
      // we had a valid rdata_taken.
      //
      if ((rdt_d1 == 1'b1) && (rdt_d2 == 1'b0)) rdt_on_wclk_next = 1'b1;
      else                                      rdt_on_wclk_next = 1'b0;

      //
      // Only update the read pointer if the read pointer on the wclk has
      // been stable for at least two wCLK clocks.
      //
      if (rp_d1 == rp_d2) rp_on_wclk_next = rp_d2;
      else                rp_on_wclk_next = rp_on_wclk;
      
   end
   
   always_ff @(posedge wCLK) begin
      if (wRSTn == 1'b0) begin
	 rp_d1      <= 4'b0000;
	 rp_d2      <= 4'b0000;
	 rp_on_wclk <= 4'b0000;
	 
	 rdt_d1      <= 1'b0;
	 rdt_d2      <= 1'b0;
	 rdt_on_wclk <= 1'b0;
      end
      else begin
	 rp_d1      <= rp;
	 rp_d2      <= rp_d1;
	 rp_on_wclk <= rp_on_wclk_next;

	 rdt_d1      <= rdata_taken;
	 rdt_d2      <= rdt_d1;
	 rdt_on_wclk <= rdt_on_wclk_next;
      end
   end // always_ff @ (posedge wCLK)

   //
   // and now create logic for the following signals
   //
   // wp
   // overrun_err
   //

   always_comb begin
      wp_next = wp;
      overrun_err_next = overrun_err;

      //
      // Is the fifo enabled?  Logic for when it is enabled is different
      // than if it is disabled..
      //       
      if (fifo_en == 1'b1) begin
	 //
	 // as long as the fifo is not full, when a write is attempted,
	 // increment the write_pointer
	 //
	 if ((rp_on_wclk != (wp + 1'b1)) && (wdata_valid == 1'b1))
	   wp_next = wp + 1'b1;


	 //
	 // overrun_err is set when fifo is full and a write is attempted
	 //
	 if ((rp_on_wclk == (wp + 1'b1)) && (wdata_valid == 1'b1)) begin
	    overrun_err_next = 1'b1;
	 end
	 else begin
	    //
	    // it's cleared when fifo is no longer full and then only when a write
	    // is attempted
	    //
	    if ((rp_on_wclk != ((wp + 1'b1)) && (wdata_valid == 1'b1))) begin
	       overrun_err_next = 1'b0;
	    end
	 end

      end // if (fifo_en == 1'b1)
      //
      // Is the fifo disabled?
      //
      else begin
	 wp_next = 4'b0000;


	 // set when fifo is full and a write
	 // reset when there is a read
	 if ((fifo_full == 1'b1 && (wdata_valid == 1'b1)))
	   overrun_err_next = 1'b1;
	 else if (rdt_on_wclk == 1'b1)
	   overrun_err_next = 1'b0;
      end // of else of if fifo_en is 1
   end

   always_ff @(posedge wCLK) begin
      if (wRSTn == 1'b0) begin
	 wp          <= 4'b0000;
	 overrun_err <= 1'b0;
      end
      else begin
	 wp <= wp_next;
	 overrun_err <= overrun_err_next;
      end
   end

   //
   // end of wCLK domain logic
   //------------------------------------------------------------------------------------
   //


   //
   //------------------------------------------------------------------------------------
   // rCLK domain logic
   //

   //
   // cross data from wCLK to rCLK
   //

   always_comb begin
      //
      // look for a rising edge on wdata_valid.  we do this by looking at
      // that signal, delayed twice on the rclk.  If on the rclk, the newest
      // signal is a 1 and the one clock delayed version of that is 0, then
      // we had a valid wdata_valid.
      //
      if ((wdv_d1 == 1'b1) && (wdv_d2 == 1'b0)) wdv_on_rclk_next = 1'b1;
      else                                      wdv_on_rclk_next = 1'b0;

      //
      // Only update the write pointer if the write pointer on the rclk has
      // been stable for at least two rCLK clocks.
      //
      if (wp_d1 == wp_d2) wp_on_rclk_next = wp_d2;
      else                wp_on_rclk_next = wp_on_rclk;
      
   end
   
   always_ff @(posedge rCLK) begin
      if (rRSTn == 1'b0) begin
	 wp_d1      <= 4'b0000;
	 wp_d2      <= 4'b0000;
	 wp_on_rclk <= 4'b0000;
	 
	 wdv_d1      <= 1'b0;
	 wdv_d2      <= 1'b0;
	 wdv_on_rclk <= 1'b0;
      end
      else begin
	 wp_d1      <= wp;
	 wp_d2      <= wp_d1;
	 wp_on_rclk <= wp_on_rclk_next;

	 wdv_d1      <= wdata_valid;
	 wdv_d2      <= wdv_d1;
	 wdv_on_rclk <= wdv_on_rclk_next;
      end
   end // always_ff @ (posedge rCLK)

   //
   // The read pointer aways indexs the data... NOTE NOTE NOTE:
   // read_data is combinatorial!!!  It is not flopped!!!
   //
   always_comb begin
      case(rp)
	4'b0000 : rdata = data_0;
	4'b0001 : rdata = data_1;
	4'b0010 : rdata = data_2;
	4'b0011 : rdata = data_3;
	4'b0100 : rdata = data_4;
	4'b0101 : rdata = data_5;
	4'b0110 : rdata = data_6;
	4'b0111 : rdata = data_7;
	4'b1000 : rdata = data_8;
	4'b1001 : rdata = data_9;
	4'b1010 : rdata = data_10;
	4'b1011 : rdata = data_11;
	4'b1100 : rdata = data_12;
	4'b1101 : rdata = data_13;
	4'b1110 : rdata = data_14;
	4'b1111 : rdata = data_15;
      endcase
   end

   //
   // and now create logic for the following signals
   //
   // rp
   // rdata_valid

   always_comb begin
      rp_next = rp;
      rdata_valid_next = rdata_valid;
      
      //
      // Is the fifo enabled?  Logic for when it is enabled is different
      // than if it is disabled..
      //       
      if (fifo_en == 1'b1) begin
	 //
	 // if the fifo is not empty OR
	 //    the fifo is emtpy and something is written to the fifo
	 // then set the read_data_valid indicating that there is data in the fifo
	 //
	 if (rp != wp_on_rclk) begin
	    rdata_valid_next = 1'b1;
	 end
	 //
	 // if the fifo is emtpy OR
	 //    the fifo has just one item and data is read from the fifo
	 // then clear the read_data_valid indicating that there is nothing in the fifo
	 //
	 else if (rp == wp_on_rclk) begin
	    rdata_valid_next = 1'b0;
	 end

	 //
	 // as long as the fifo is not empty, and when a read is done
	 // increment the read_pointer
	 //
	 if ((rp != wp_on_rclk) && (rdata_taken == 1'b1))
	   rp_next = rp + 1'b1;
      end // if (fifo_en == 1'b1)
      
      //
      // Is the fifo disabled?
      //
      else begin

	 //
	 // NOTE NOTE NOTE:
	 // need to code up rdata_valid_next when fifo_en is 0
	 //
	 
	 rp_next  = 4'b0000;
      end // of else of if fifo_en is 1
   end
   
   always_ff @(posedge rCLK) begin
      if (rRSTn == 1'b0) begin
	 rp <= 4'b0000;
	 rdata_valid <= 1'b0;
      end
      else begin
	 rp <= rp_next;
	 rdata_valid <= rdata_valid_next;
      end
   end

   //
   // and now create logic for the following signals
   //
   // fifo_full
   // fifo_empty
   //

   always_comb begin
      fifo_full_next = fifo_full;
      fifo_empty_next = fifo_empty;

      //
      // Is the fifo enabled?  Logic for when it is enabled is different
      // than if it is disabled..
      //       
      if (fifo_en == 1'b1) begin
	 //
	 // fifo is full if the wp is just one location behind the rp
	 //
	 if (rp == (wp_on_rclk + 1'b1)) fifo_full_next = 1'b1;
	 else                           fifo_full_next = 1'b0;

	 //
	 // fifo is empty when rp and wp are the same
	 //
	 if (rp == wp_on_rclk) fifo_empty_next = 1'b1;
	 else                  fifo_empty_next = 1'b0;

      end // if (fifo_en == 1'b1)
      //
      // Is the fifo disabled?
      //
      else begin

	 // set on write, reset on read
	 if (wdv_on_rclk == 1'b1)
	   fifo_full_next = 1'b1;
	 else if ((fifo_full == 1'b1) && (rdata_taken == 1'b1))
	   fifo_full_next = 1'b0;

	 // set on read, reset on write
	 if (rdata_taken == 1'b1)
	   fifo_empty_next = 1'b1;
	 else if ((fifo_empty == 1'b1) && (wdv_on_rclk == 1'b1))
	   fifo_empty_next = 1'b0;

      end // of else of if fifo_en is 1
   end

   always_ff @(posedge wCLK) begin
      if (wRSTn == 1'b0) begin
	 fifo_full   <= 1'b0;
	 fifo_empty  <= 1'b1;
      end
      else begin
	 fifo_full   <= fifo_full_next;
	 fifo_empty  <= fifo_empty_next;
      end
   end

   //
   // Now logic to create the fifo_alarm...
   // From table 3-13 for register UARTIFLS
   // 000 : if rx fifo becomes >= 1/8 full ie when delta <= 0010
   // 001 : if rx fifo becomes >= 1/4 full ie when delta <= 0100
   // 010 : if rx fifo becomes >= 1/2 full ie when delta <= 1000 
   // 011 : if rx fifo becomes >= 3/4 full ie when delta <= 1100
   // 100 : if rx fifo becomes >= 7/8 full ie when delta <= 1110
   // 100:111 : reserved and no alarm will be set
   //

   always_comb begin
      delta = wp_on_rclk - rp;
      
      fifo_alarm_next = 1'b0;

      case (fifo_level_for_alarm)
	3'b000: if (delta >= 4'b0010) fifo_alarm_next = 1'b1;
	3'b001: if (delta >= 4'b0100) fifo_alarm_next = 1'b1;
	3'b010: if (delta >= 4'b1000) fifo_alarm_next = 1'b1;
	3'b011: if (delta >= 4'b1100) fifo_alarm_next = 1'b1;
	3'b100: if (delta >= 4'b1110) fifo_alarm_next = 1'b1;
      endcase
   end

   always_ff @(posedge rCLK) begin
      if (rRSTn == 1'b0) begin
	 fifo_alarm <= 1'b0;
      end
      else begin
	 fifo_alarm <= fifo_alarm_next;
      end
   end


   //
   //------------------------------------------------------------------------------------
   // end of rCLK domain logic
   //


endmodule
