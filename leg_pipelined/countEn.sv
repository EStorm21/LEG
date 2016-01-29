// Create an n bit counter with reset and enable
module countEn #(parameter n)
	(input  logic         clk, reset, en,
	 output logic [n-1:0] q);

	logic [n-1:0] d;
	assign d = q + 1;
    flopenr #(n) cnt(clk, reset, en, d, q);
endmodule