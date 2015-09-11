module priority_encoder #(parameter in_size = 16)(
	input logic[in_size-1:0] in,
	output logic[$clog2(in_size)-1:0] out
);

integer i;
always_comb begin
    out = 0; // default value if 'in' is all 0's
    for (i=0; i<in_size; i=i+1)
        if (in[i]) out = i;
  end

endmodule