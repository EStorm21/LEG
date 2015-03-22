module cacheIn #(parameter blocksize = 4)
				(input logic BlockWE, MemWriteM,
				 input logic [31:0] HRData,
				 input logic [31:0] WD,
				 input logic [3:2] Counter,
				 input logic [3:2] WordOffset,
				 input logic [3:0] ByteMask,
				 output logic [31:0] CacheWD,
				 output logic [3:0]  ActiveByteMask);
				
	logic UseWD;
	assign UseWD = ~BlockWE | ( BlockWE & MemWriteM & (Counter == WordOffset) );
	mux2 #(32) CacheWDMux(HRData, WD, UseWD, CacheWD);
	mux2 #(4)  MaskMux(4'b1111, ByteMask, UseWD, ActiveByteMask);

endmodule