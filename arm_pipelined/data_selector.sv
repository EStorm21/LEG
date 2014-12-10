module data_selector (input  logic       ByteOrWord, //byte or word 
					           input  logic  	     Halfword,
					           input  logic  	     HalfwordOffset,
                     input  logic [1:0]  ByteOffset, //LSBs of address
                     input  logic [31:0] DataIn, //Data word from memory
              		   output logic [31:0] DataOut);

/***** Brief Description *******
 *
 * 32-BIT DATAPATH WRITEBACK STAGE
 * The data_selector is used for LDR, LDRB and LDRH to select the data (including offset)
 * Gets data from memory (ReadDataM) --> (ReadDataRawW) and chooses output accordingly (ReadDataW).
 *
 ******************************/
  logic [7:0] DataByte;
  logic [15:0] DataHalfword;
  mux4 #(8) byteSelect(DataIn[7:0], DataIn[15:8], DataIn[23:16], DataIn[31:24], ByteOffset, DataByte);          // Choose between 4 bytes
  mux2 #(16) halfwordSelect(DataIn[15:0], DataIn[31:16], HalfwordOffset, DataHalfword);                         // Choose between 2 half-words
  mux3 #(32) sizeSelect(DataIn, {24'b0, DataByte}, {16'b0, DataHalfword}, {Halfword, ByteOrWord}, DataOut);     // Select Final data to output
endmodule