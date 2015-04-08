//Primary interrupt controller
module pic(input  logic        HCLK, 
           input  logic        HRESETn, 
           input  logic        HSEL, 
           input  logic [4:0] HADDR, 
           input  logic        HWRITE, 
           input  logic [31:0] HWDATA, 
           input  logic [31:0] rawIRQVec, rawFIQVec, 
           output logic [31:0] HRDATA, 
           output logic        fiq, irq);

	logic [31:0] regs[9:0]; // register interface
	logic [31:0] irqClr, fiqClr, swiClr; // clears
              

     //clear signals generated if write is to clear register
     //they mask out bits in the enable signal
     assign irqClr = (HWRITE & HSEL & HADDR == 4'b0011);
     assign swiClr = (HWRITE & HSEL & HADDR == 4'b0101);
     assign fiqClr = (HWRITE & HSEL & HADDR == 4'b1011);

     assign irqEn = ~irqClr & ((HWRITE & HSEL & HADDR == 4'b0010) ? HWDATA : regs[2]);
     assign swiEn = ~swiClr & ((HWRITE & HSEL & HADDR == 4'b0100) ? HWDATA : regs[4]);
     assign fiqEn = ~fiqClr & ((HWRITE & HSEL & HADDR == 4'b1000) ? HWDATA : regs[8]);
    

     //write to regs
     // gated signals are raw signals anded with enable
     always_ff @(posedge HCLK or negedge HRESETn)
     	if (~HRESETn) begin
	      regs[0] <= 32'b0;  // PIC_IRQ_STATUS 
	      regs[1] <= 32'b0;  // PIC_IRQ_RAWSTAT 
	      regs[2] <= 32'b0;  // PIC_IRQ_ENABLESET 
	      regs[3] <= 32'b0;  // PIC_IRQ_ENABLECLR 
	      regs[4] <= 32'b0;  // PIC_INT_SOFTSET 
	      regs[5] <= 32'b0;  // PIC_INT_SOFTCLR 
	      regs[6] <= 32'b0;  // PIC_FIQ_STATUS 
	      regs[7] <= 32'b0;  // PIC_FIQ_RAWSTAT
	      regs[8] <= 32'b0;  // PIC_FIQ_ENABLESET
	      regs[9] <= 32'b0;  // PIC_FIQ_ENABLECLR
	    end else begin
	      regs[0] <= irqEn & rawIRQVec;
	      regs[1] <= rawIRQVec; 
	      if (HWRITE & HSEL & HADDR == 4'b0010) regs[2] <= irqEn;
	      // regs[3] <= write only
	      if (HWRITE & HSEL & HADDR == 4'b0100) regs[4] <= swiEn;
	      // regs[5] <= write only
	      regs[6] <= fiqEn & rawFIQVec;
	      regs[7] <= rawFIQVec;
	      if (HWRITE & HSEL & HADDR == 4'b1000) regs[8] <= fiqEn;
	      //regs[9] <=  write only
	    end

	    assign HRDATA = regs[HADDR];
	    assign fiq    = fiqEn & rawFIQVec;
	    assign irq    = irqEn & rawIRQVec;

endmodule