module synchronizer(input logic    clk, reset, IRQ, FIQ,
					output logic   IRQsync, FIQsync);
	logic IRQ_intermediate, FIQ_intermediate;

	flopr #(1) irq_sync(clk, reset, IRQ, IRQ_intermediate);
	flopr #(1) irq_sync2(clk, reset, IRQ_intermediate, IRQsync);

	flopr #(1) fiq_sync(clk, reset, FIQ, FIQ_intermediate);
    flopr #(1) fiq_sync2(clk, reset, FIQ_intermediate, FIQsync);

endmodule