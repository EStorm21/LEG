module exception_vector_address (input  logic [6:0] VectorAddressW,
                                 output logic [2:0] VectorPCnextF);

/*
VectorAddressW[0] = Reset 
VectorAddressW[1] = Undef
VectorAddressW[2] = SWI
VectorAddressW[3] = Prefetch Abort
VectorAddressW[4] = Data Abort
VectorAddressW[5] = IRQ
VectorAddressW[6] = FIQ
*/

// PC vectors can be reconstituted from these constants as {27'b0, VectorPCnextF, 2'b0}
// This saves 29 wiring tracks
always_comb begin
  if      (VectorAddressW[0]) VectorPCnextF = 3'b000; // address = 0
  else if (VectorAddressW[1]) VectorPCnextF = 3'b001; // 0x04
  else if (VectorAddressW[2]) VectorPCnextF = 3'b010; // 0x08
  else if (VectorAddressW[3]) VectorPCnextF = 3'b011; // 0x0c
  else if (VectorAddressW[4]) VectorPCnextF = 3'b100; // 0x10
  else if (VectorAddressW[5]) VectorPCnextF = 3'b110; // 0x18
  else if (VectorAddressW[6]) VectorPCnextF = 3'b111; // 0x1c
  else                        VectorPCnextF = 3'b000; // Never
end

endmodule