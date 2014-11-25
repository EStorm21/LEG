module data_replicator (input  logic        Size, //byte or word 
                        input  logic [31:0] DataIn, //Data word from memory
              		    output logic [31:0] DataOut);

  mux2 #(32) sizeSelect(DataIn, {4{DataIn[7:0]}}, Size, DataOut);
endmodule