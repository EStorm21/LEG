module memory_mask (input  logic       Size, //byte or word 
                    input  logic [1:0] Offset, //LSBs of address
              		output logic [3:0] ByteMask);

  logic [3:0] ByteOffset;
  mux4 #(4) byteSelect(4'b0001, 4'b0010, 4'b0100, 4'b1000, Offset, ByteOffset);
  mux2 #(4) sizeSelect(4'b1111, ByteOffset, Size, ByteMask);
endmodule