module memory_mask (input  logic       ByteOrWord, //byte or word 
					input  logic 	   Halfword,
					input  logic 	   HalfwordOffset,
                    input  logic [1:0] ByteOffset, //LSBs of address
              		output logic [3:0] FinalByteMask);

/***** Brief Description *******
 *
 * CONTROLLER EXECUTE STAGE
 * The data_selector is used for STR, STRB and STRH to select the data (including offset)
 * Gets data from registers and chooses output to write accordingly to memory.
 *
 ******************************/
  logic [3:0] ByteMask, HalfwordMask, ByteorWordMask;
  mux4 #(4) byteSelect(4'b0001, 4'b0010, 4'b0100, 4'b1000, ByteOffset, ByteMask); 		// Get byte mask
  mux2 #(4) BoWSelect(4'b1111, ByteMask, ByteOrWord, ByteorWordMask);					// Choose between byte or word mask
  mux2 #(4) halfSelect(4'b0011, 4'b1100, HalfwordOffset, HalfwordMask);					// Get halfword mask
  mux2 #(4) finalSelect(ByteorWordMask, HalfwordMask, Halfword, FinalByteMask);			// Get Final mask: Either Byte, Word or Halfword.
endmodule	