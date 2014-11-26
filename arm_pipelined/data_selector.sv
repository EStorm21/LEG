module data_selector (input  logic        Size, //byte or word 
                      input  logic [1:0]  Offset, //LSBs of address
                      input  logic [31:0] DataIn, //Data word from memory
              		  output logic [31:0] DataOut);

  logic [7:0] DataByte;
  mux4 #(8) byteSelect(DataIn[7:0], DataIn[15:8], DataIn[23:16], DataIn[31:24], Offset, DataByte);
  mux2 #(32) sizeSelect(DataIn, {24'b0, DataByte}, Size, DataOut);
endmodule