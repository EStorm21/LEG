module tlb_controller #(parameter size = 16, parameter tagbits = 16) (
	input logic enable, we, valid, Miss,
	input logic [tagbits-1:0] VirtTag,
	output logic [$clog2(size)-1:0] CAdr,
	output logic CRead, RRead, PAReady
);

assign CRead = enable & ~we;
assign RRead = enable & ~we;
assign CAdr = VirtTag[$clog2(size)-1:0];
assign PAReady = valid & enable & ~Miss;

endmodule