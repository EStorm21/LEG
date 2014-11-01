// FSM for microOps

module micropsfsm(input  logic        clk, reset,
               input  logic [31:0] defaultInstrD,
               output logic        InstrMuxD, doNotUpdateFlagD, uOpStallD, prevRSRstate, keepV,
               output logic [3:0]  regFileRz,
			   output logic [31:0] uOpInstrD,
			   input  logic		   StalluOp);

// define states READY and RSR 
// TODO: add more states for each type of instruction
typedef enum {ready, rsr, multiply} statetype;
statetype state, nextState;

// set reset state to READY, else set state to nextState
always_ff @ (posedge clk)
	begin
      if (reset | StalluOp)
	      state <= ready;
	  else
	      state <= nextState;
	end



// Mealy FSM that takes in defaultInstrD as input, changes states that require uOps if 
// needed, and sets appropriate control signals and next instruction

always_comb
	case(state)
		ready: begin
				if (defaultInstrD[27:25] == 3'b0 && defaultInstrD[7] == 0 && defaultInstrD[4] == 1) begin //start rsr
					InstrMuxD = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 1;
					regFileRz = {1'b1, // Control inital mux for RA1D
								3'b100}; // 5th bit of WA3, RA2D and RA1D
					prevRSRstate = 0;
					nextState = rsr;
					keepV = 0;
					uOpInstrD = {defaultInstrD[31:25], // Condition bits and RSR-type
								4'b1101, 1'b0, // MOV instruction, Do not update flags [24:20]
								4'b0000, 4'b1111, // If we have SBZ then [19:16]  shb 0000, we should use Rz [15:12]
								defaultInstrD[11:0]}; // This needs to be MOV R1 R2 << R3. 
				end
				else if(defaultInstrD[21] && (defaultInstrD[7:4] == 4'b1001)) begin //start multiply
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 1;
					keepV = 1;
					prevRSRstate = 0;
					regFileRz = {1'b1, // Control inital mux for RA1D
								3'b100}; // 5th bit of WA3, RA2D and RA1D
					nextState = multiply;
					uOpInstrD = {defaultInstrD[31:21], //convert to MUL
								1'b0, 4'b1111, // [19:16] Rd
								4'b0000, //SBZ
								defaultInstrD[11:0]}; 
				end
				else begin
					nextState = ready;
					InstrMuxD = 0;
					doNotUpdateFlagD = 0;
					uOpStallD = 0;
					prevRSRstate = 0;
					keepV = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of RA2D and RA1D
					uOpInstrD = {defaultInstrD};
				end
			end
		rsr:begin
				if(defaultInstrD[27:25] == 3'b0 && defaultInstrD[7] == 0 && defaultInstrD[4] == 1) begin 
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 0;
					prevRSRstate = 1;
					keepV = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b010}; // 5th bit of WA3, RA2D and RA1D
					nextState = ready;
					uOpInstrD = {defaultInstrD[31:12], // keep the first 12 bits the same, Rd and Rn are included
								 8'b0, 4'b1111}; // No shifting, use source Rz
				end
			end

		multiply:begin
					if(defaultInstrD[21] & (defaultInstrD[7:4] == 4'b1001)) begin
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 0;
						prevRSRstate = 1;
						keepV = 0;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b001}; // 5th bit of WA3, RA2D and RA1D
						nextState = ready;
						uOpInstrD = {defaultInstrD[31:28], 7'b0000100, defaultInstrD[21], //condition code, ADD funct, flag update
									 4'b1111, defaultInstrD[19:16], //[19:16] is Rz
									 8'b00000000, defaultInstrD[15:12]};
					end
					else begin
						nextState = ready;
						InstrMuxD = 0;
						doNotUpdateFlagD = 0;
						prevRSRstate = 0;
						uOpStallD = 0;
						keepV = 0;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b000}; // 5th bit of RA2D and RA1D
						uOpInstrD = {defaultInstrD};
					end
				end
		default: begin
			nextState = ready;
			InstrMuxD = 0;
			keepV = 0;
			doNotUpdateFlagD = 0;
			prevRSRstate = 0;
			uOpStallD = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b000}; // 5th bit of RA2D and RA1D
			uOpInstrD = {defaultInstrD};
		end
	endcase
endmodule


