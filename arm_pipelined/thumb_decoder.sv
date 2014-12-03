module thumb_decoder(input logic [31:0] defaultInstrD,
	                 output logic thumbInstrD);

logic [15:0] tInstr;

assign tInstr = defaultInstrD[15:0];

// ============================================================================
// ======================== Thumb Instr Decode ================================
// ============================================================================
always_comb
	casex(tInstr[15:10])
		// if 2'b010_000, then this is data processing instruction 
		6'b010_000:
			begin
				// Instr Format 5
				if (tInstr[9:6] == 4'b0000) // AND
					thumbInstrD = {12'b1110_00000001, 1'b0, tInstr[2:0], 
			                   		1'b0, tInstr[2:0], 8'h00, `'b0, tInstr[2:0]};
		    end
		// Branch instruction
		6'b111_XXX:
			begin
				if (tInstr[12:11] == 2'b00) // B (unconditional)
					thumbInstrD = {8'b1110_1010, {13{tInstr[10]}}, tInstr[10:0]};
			end
		default:    thumbInstrD = defaultInstrD;
	endcase





