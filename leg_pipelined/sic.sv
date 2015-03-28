//Secondary interrupt controller
module sic(input  logic        HCLK, 
           input  logic        HRESETn, 
           input  logic        HSEL, 
           input  logic [2:0] HADDR, 
           input  logic        HWRITE, 
           input  logic [31:0] HWDATA, 
           input  logic [31:0] rawSICVec,
           output logic [31:0] HRDATA,
           output logic        interrupt);

	logic [31:0] regs[5:0]; // register interface
	logic [31:0] irqClr, fiqClr, swiClr; // clears
	logic [31:0] gatedSICVec;
              

     //clear signals generated if write is to clear register
     //they mask out bits in the enable signal
     assign sicClr = (HWRITE & HSEL & HADDR == 4'b0011);
     assign swiClr = (HWRITE & HSEL & HADDR == 4'b0101);

     assign sicEn = ~sicClr & ((HWRITE & HSEL & HADDR == 4'b0010) ? HWDATA : regs[2]);
     assign swiEn = ~swiClr & ((HWRITE & HSEL & HADDR == 4'b0100) ? HWDATA : regs[4]);

     assign gatedSICVec = sicEn & rawSICVec;

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
	    end else begin
	      regs[0] <= gatedSICVec;
	      regs[1] <= rawSICVec; 
	      if (HWRITE & HSEL & HADDR == 4'b0010) regs[2] <= sicEn;
	      // regs[3] <= write only
	      if (HWRITE & HSEL & HADDR == 4'b0100) regs[4] <= swiEn;
	    end

	    assign HRDATA = regs[HADDR];
	    assign interrupt = |gatedSICVec;

endmodule