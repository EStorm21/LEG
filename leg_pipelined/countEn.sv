// Create an n bit counter with reset and enable
module countEn #(parameter n)
	(input logic clk, reset, en,
	 output logic[n-1:0] q);
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