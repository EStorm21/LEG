// FSM for microOps

module micropsfsm(input  logic        clk, reset,
               input  logic [31:0] defaultInstrD,
               output logic        InstrMuxD, doNotUpdateFlagD, uOpStallD, regFileRz,
			   output logic [31:0] uOpInstrD);

// define states READY and RSR 
// TODO: add more states for each type of instruction
typedef enum {ready, rsr} statetype;
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
				if (defaultInstrD[27:25] == 3'b0 && defaultInstrD[7] == 0 && defaultInstrD[4] == 1) begin
					InstrMuxD = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 1;
					regFileRz = 1;
					nextState = rsr;
					uOpInstrD = {defaultInstrD}; // This needs to be changed
				end
				else begin
					nextState = ready;
					InstrMuxD = 0;
					doNotUpdateFlagD = 0;
					uOpStallD = 0;
					regFileRz = 0;
					uOpInstrD = {defaultInstrD};
				end
			end
		rsr:begin
				if(defaultInstrD[27:25] == 3'b0 && defaultInstrD[7] == 0 && defaultInstrD[4] == 1) begin
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 0;
					regFileRz = 1;
					nextState = ready;
				end
			end
		default: begin
			nextState = ready;
			InstrMuxD = 0;
			doNotUpdateFlagD = 0;
			uOpStallD = 0;
			regFileRz = 0;
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
													
	      