module cacheIn #(parameter blocksize = 4)
				(input logic BlockWE, MemWriteM,
				 input logic [blocksize*32-1:0] MemRD, CacheBlock,
				 input logic [31:0] WD,
				 input logic [3:2] WordOffset,
				 output logic [blocksize*32-1:0] BlockOut);

	always_comb
		// If we are writing an entire Block, pass MemBlock
		if (BlockWE & ~MemWriteM) begin
			BlockOut = MemRD;

		// Otherwise, combine input word with current data
		end else if(BlockWE & MemWriteM) begin
			case (WordOffset)
		        2'b11 : BlockOut = {WD, MemRD[95:0]};
		        2'b10 : BlockOut = {MemRD[127:96], WD, MemRD[63:0]};
		        2'b01 : BlockOut = {MemRD[127:64], WD, MemRD[31:0]}; 
		        2'b00 : BlockOut = {MemRD[127:32], WD};
		        default : BlockOut = {WD, MemRD[95:0]};
		    endcase

		end else begin
		    case (WordOffset)
		        2'b11 : BlockOut = {WD, CacheBlock[95:0]};
		        2'b10 : BlockOut = {CacheBlock[127:96], WD, CacheBlock[63:0]};
		        2'b01 : BlockOut = {CacheBlock[127:64], WD, CacheBlock[31:0]}; 
		        2'b00 : BlockOut = {CacheBlock[127:32], WD};
		        default : BlockOut = {WD, CacheBlock[95:0]};
		    endcase
		end
endmodule