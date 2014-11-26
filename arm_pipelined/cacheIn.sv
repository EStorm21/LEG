module cacheIn #(parameter blocksize = 4)
				(input logic BlockWE, MemWriteM,
				 input logic [31:0] HRData,
				 input logic [31:0] WD,
				 input logic [3:2] Counter,
				 input logic [3:2] WordOffset,
				 input logic [3:0] ByteMask,
				 output logic [31:0] CacheWD,
				 output logic [3:0]  ActiveByteMask);

	always_comb
		// (Reading) If we are writing an entire Block, always choose Data from the bus
		if (BlockWE & ~MemWriteM) begin
			CacheWD = HRData;
			ActiveByteMask = 4'b1111;

		// (Writing) Loading memory into the cache and writing a new word, so
		// combine input word with current data.
		end else if(BlockWE & MemWriteM) begin
			if(Counter == WordOffset) begin
				CacheWD = WD;
				ActiveByteMask = ByteMask;
			end else begin
				CacheWD = HRData;
				ActiveByteMask = 4'b1111;
			end
		// We aren't using the memory, just writing one new word into the cache
		end else begin
			CacheWD = WD;
			ActiveByteMask = ByteMask;
		end

endmodule