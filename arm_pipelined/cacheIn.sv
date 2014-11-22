module cacheIn #(parameter blocksize = 4)
				(input logic BlockWE, MemWriteM,
				 input logic [31:0] HRData,
				 input logic [31:0] WD,
				 input logic [3:2] Counter,
				 input logic [3:2] WordOffset,
				 output logic [31:0] CacheWD);

	always_comb
		// If we are writing an entire Block, always choose Data from the bus
		if (BlockWE & ~MemWriteM) begin
			CacheWD = HRData;

		// Writing loading memory into the cache and writing a new word, so
		// combine input word with current data.
		end else if(BlockWE & MemWriteM) begin
			if(Counter == WordOffset) begin
				CacheWD = WD;
			end else begin
				CacheWD = HRData;
			end
		// We aren't using the memory, just writing one new word into the cache
		end else begin
			CacheWD = WD;
		end
endmodule