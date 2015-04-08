module countEn #(parameter n)
	(input logic clk, reset, en,
	 output logic[$clog2(n) -1:0] q);
	always_ff @(posedge clk)
    if(reset) begin
        q <= 0;
    end else begin
        if (en) begin
            q <= q + 1;
        end else begin
            q <= q;
        end
    end
endmodule