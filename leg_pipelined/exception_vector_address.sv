module exception_vector_address (input logic  [6:0]  VectorAddressW,
								 output logic [31:0] VectorPCnextF);

/*
VectorAddressW[0] = Reset 
VectorAddressW[1] = Undef
VectorAddressW[2] = SWI
VectorAddressW[3] = Prefetch Abort
VectorAddressW[4] = Data Abort
VectorAddressW[5] = IRQ
VectorAddressW[6] = FIQ
*/

	always_comb begin
		if(VectorAddressW[0]) VectorPCnextF = 32'h0; 
		else if (VectorAddressW[1]) VectorPCnextF = 32'h4;
		else if (VectorAddressW[2]) VectorPCnextF = 32'h8;
		else if (VectorAddressW[3]) VectorPCnextF = 32'hc;
		else if (VectorAddressW[4]) VectorPCnextF = 32'h10;
		else if (VectorAddressW[5]) VectorPCnextF = 32'h18;
		else if (VectorAddressW[6]) VectorPCnextF = 32'h1c;
	end

endmodule