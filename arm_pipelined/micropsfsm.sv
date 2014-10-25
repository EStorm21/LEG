// FSM for microOps

module micropsfsm(input  logic        clk, reset,
               input  logic [31:0] defaultInstrD,
               output logic        InstrMuxD, doNotUpdateFlagD, uOpStallD, 
               output logic [3:0]  regFileRz,
			   output logic [31:0] uOpInstrD);

// define states READY and RSR 
// TODO: add more states for each type of instruction
typedef enum {ready, rsr, multiply} statetype;
statetype state, nextState;

// set reset state to READY, else set state to nextstate
always_ff @ (posedge clk)
	begin
      if (reset)
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
					nextState = rsr;
					uOpInstrD = {defaultInstrD[31:25], // Condition bits and RSR-type
								4'b1101, 1'b0, // MOV instruction, Do not update flags [24:20]
								4'b0000, 4'b0000, // If we have SBZ then 0000, we should use Rz, [19:16] and [15:12]
								defaultInstrD[11:0]}; // This needs to be MOV R1 R2 << R3. 
				end
				else if(defaultInstrD[27:25] == 3'b0 && defaultInstrD[7] == 1 && defaultInstrD[4] == 1) begin //start multiply
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 1;
					regFileRz = {1'b1, // Control inital mux for RA1D
								3'b100}; // 5th bit of WA3, RA2D and RA1D
					nextState = multiply;
					uOpInstrD = {defaultInstrD[31:21], //convert to MUL
								1'b0, 4'b0000, defaultInstrD[15:0]}; 
				end
				else begin
					nextState = ready;
					InstrMuxD = 0;
					doNotUpdateFlagD = 0;
					uOpStallD = 0;
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
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b010}; // 5th bit of WA3, RA2D and RA1D
					nextState = ready;
					uOpInstrD = {defaultInstrD[31:12], // keep the first 12 bits the same, Rd and Rn are included
								 8'b0, 4'b0000}; // Using all zeros
				end
			end
		multiply:begin
					if(defaultInstrD[21] & defaultInstrD[7] & defaultInstrD[4]) begin
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 0;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b001}; // 5th bit of WA3, RA2D and RA1D
						nextState = ready;
						uOpInstrD = {4'b1110, 8'b00011010, // AL condition code, MOV funct note: that MOV works better than ADD for this
									 4'b0000, 4'b0000, 8'b00000000, defaultInstrD[15:12]};
					end
				end
		default: begin
			nextState = ready;
			InstrMuxD = 0;
			doNotUpdateFlagD = 0;
			uOpStallD = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b000}; // 5th bit of RA2D and RA1D
			uOpInstrD = {defaultInstrD};
		end
	endcase
endmodule



/*always_comb
      case(state)
	      READY:  begin
		          case(defaultInstrD)
				      // if instrD is RSR-type, change to RSR state
		              32'bXXXX_000X_XXXX_XXXX_XXXX_XXXX_0XX1_XXXX: begin
					                                        nextState = RSR;
					                                        InstrMuxD = 1;
															doNotUpdateFlagD = 1;
															uOpStallD = 1;
															regFileRz = 1;
															uOpInstrD = 32'b;
															end
					  // else: stay in READY state if input instrD is ~RSR | any other instruction
					  default:                              begin
					                             `           nextState = READY;
															InstrMuxD = 0;
															doNotUpdateFlagD = 0;
															uOpStallD = 0;
															regFileRz = 0;
															end
				  endcase
		  RSR:    begin
		          case(defaultInstrD)
				      // if instrD is still RSR-type, return to READY state
				      32'bXXXX_000X_XXXX_XXXX_XXXX_XXXX_0XX1_XXXX: begin
					                                        nextState = READY;
					                                        InstrMuxD = 1;
															doNotUpdateFlagD = 0;
															uOpStallD = 0;
															regFileRz = 1;
															end
					  // else: return to READY state with default ouputs
					  default:                              begin
					                                        nextState = READY;
															InstrMuxD = 0;
															doNotUpdateFlagD = 0;
															uOpStallD = 0;
															regFileRz = 0;
															end 
				endcase
	      default: nextState = READY;
	  endcase 
		*/													
													
	      