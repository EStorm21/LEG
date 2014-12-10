module data_replicator (input  logic        ByteorWord, //byte or word 
						input  logic		Halfword,	// if halfword
                        input  logic [31:0] DataIn, //Data word from memory
              		    output logic [31:0] DataOut);

  mux3 #(32) sizeSelect(DataIn, {4{DataIn[7:0]}}, {2{DataIn[15:0]}}, {Halfword, ByteorWord}, DataOut); // 00 is word, 01 is byte, 10 is halfword.
endmodule