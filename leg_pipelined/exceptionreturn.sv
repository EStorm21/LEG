module exceptionreturn(input  logic [31:0] 	InstrD,
					   input  logic [11:0] 	PreviousStatusD, 
					   input  logic 		ALUOpD,
					   output logic 		restoreCPSR_D
						);

logic undef_return, swi_return, prefetchAbort_return, dataAbort_return, irq_return, fiq_return;

// undef_return is MOVS PC,R14
assign undef_return = (ALUOpD & (InstrD[24:21] == 4'b1101) & InstrD[20] & (InstrD[15:12] == 4'b1111) & (InstrD[3:0] == 4'b1110) & PreviousStatusD[4:0] == 5'b11011);
// swi_return is MOVS, PC, R14
assign swi_return = undef_return;


/*
always_comb 
	begin
	if (PreviousStatusD[4:0] == 5'b11011)


	end */


endmodule