//UART
module uart(input  logic        UARTCLK, HCLK,
	        input  logic        HRESETn, 
            input  logic        HSEL, 
            input  logic [4:0] HADDR, 
            input  logic        HWRITE, 
            input  logic [31:0] HWDATA, 
            output logic [31:0] HRDATA );

	logic [31:0] regs[18:0]; // register interface
	logic [31:0] raw_counter_limit, counter, fracCycle, fracCounter, rawInterrupts; // baud rate generation

	logic baudClk;

    // baud rate generation
    // We use a combination of whole UARTCLK cycles 
    // as well as a fractional divider
    assign raw_counter_limit = regs[9];
    assign frac_counter_limit = regs[10];
    assign counter_limit = fracCycle ? raw_counter_limit + 1 : raw_counter_limit;


    always_ff @(posedge UARTCLK or negedge HRESETn)
    	if (~HRESETn) begin
    		counter <= 32'b1;
    		baudClk <= 0;
    	end else if (counter >= counter_limit) begin
    		baudClk <= ~baudClk;
    		counter <= 32'b1;
    	end else begin
    		counter <= counter + 1;
    	end

    // fractional baud rate
    always_ff @(posedge UARTCLK or negedge HRESETn)
    	if (~HRESETn) begin
    		fracCounter <= 6'b111111;
    		fracCycle <= 0;
    	end else if (fracCounter <= frac_counter_limit) begin
    		fracCycle <= 1;
    		fracCounter <= 6'b111111;
    	end else begin
    		fracCycle <= 0;
    		fracCounter <= fracCounter - 1;
    	end

    	// Interrupts
    	assign interruptsClr = (HWRITE & HSEL & HADDR == 5'b10001);
    	assign interruptsEn = ~interruptsClr & ((HWRITE & HSEL & HADDR == 5'b01110) ? HWDATA : regs[14]);


     //write to regs
     always_ff @(posedge HCLK or negedge HRESETn)
     	if (~HRESETn) begin
	      regs[0]  <= 32'b0;  // UARTDR Outuput data (read)/ input data (write)
	      regs[1]  <= 32'b0;  // UARTRSR/UARTECR Receive status register (read)/ error clear register (write)
	      regs[2]  <= 32'b0;  // RESERVED
	      regs[3]  <= 32'b0;  // RESERVED
	      regs[4]  <= 32'b0;  // RESERVED
	      regs[5]  <= 32'b0;  // RESERVED
	      regs[6]  <= 32'b010010000;  // UARTFR Flag register
	      regs[7]  <= 32'b0;  // RESERVED
	      regs[8]  <= 32'b0;  // UARTILPR IrDA low-power counter register
	      regs[9]  <= 32'b0;  // UARTIBRD Integer baud rate divisor register
	      regs[10] <= 32'b0;  // UARTFBRD Fractional baud rate divisor register
	      regs[11] <= 32'b0;  // UARTLCR_H Line control register, HIGH byte
	      regs[12] <= 32'h0300;  // UARTCR   Control register
	      regs[13] <= 32'h12;  // UARTIFLS Interrupt FIFOlevel select register
	      regs[14] <= 32'b0;  // UARTIMSC Interrupt mask set/clear
	      regs[15] <= 32'b0;  // UARTRIS  Raw interrupt status
	      regs[16] <= 32'b0;  // UARTMIS  Masked interrupt status
	      regs[17] <= 32'b0;  // UARTICR  Interrupt clear register
	      regs[18] <= 32'b0;  // UARTDMACR DMA control register

	    end else begin
	      //regs[0] <= //irqEn & rawIRQVec;
	      //regs[1] <= //rawIRQVec; 
	      ////regs[2] <= RESERVED;
	      ////regs[3] <= RESERVED;
	      ////regs[4] <= RESERVED;
	      ////regs[5] <= RESERVED;
	      //regs[6] <= //fiqEn & rawFIQVec;
	      ////regs[7] <= RESERVED;
	      //regs[8] <= //UNIMPLEMENTED
	      if (HWRITE & HSEL & HADDR == 5'b01001) regs[9] <= HWDATA;
	      if (HWRITE & HSEL & HADDR == 5'b01010) regs[10] <= HWDATA;
	      // regs[11] <= // rawFIQVec;
	      // regs[12] <= // rawFIQVec;
	      // regs[13] <= // rawFIQVec;
	      regs[14] <= interruptsEn;
	      regs[15] <= rawInterrupts;
	      // regs[16] <= // rawFIQVec;
	      // regs[17] <= // rawFIQVec;
	      // regs[18] <= // rawFIQVec;

	    end

	    assign HRDATA = regs[HADDR];

endmodule