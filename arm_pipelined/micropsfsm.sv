// FSM for microOps

module micropsfsm(input  logic        clk, reset,
               input  logic [31:0] defaultInstrD,
               output logic        InstrMuxD, doNotUpdateFlagD, uOpStallD, LDMSTMforward, 
               output logic 	   prevRSRstate, keepV, SignExtend,
               output logic [3:0]  regFileRz,
			   output logic [31:0] uOpInstrD,
			   input  logic		   StalluOp,
			   input  logic [3:0]  Flags);

// define states READY and RSR 
// TODO: add more states for each type of instruction
typedef enum {ready, rsr, multiply, ldm} statetype;
statetype state, nextState;

// --------------------------- ADDED FOR LDM/STM -------------------------------
// Conditional Unit
logic CondExD, readyState;
assign readyState = (state == ready);
microps_conditional uOpCond(Flags, defaultInstrD[31:28], CondExD);
// Count ones for LDM/STM
logic [3:0] numones, Rd;
logic [11:0] start_imm;
logic [15:0] RegistersListNow, RegistersListNext;
microps_reg_selector regSelect(defaultInstrD, readyState, RegistersListNow, RegistersListNext, Rd);

always_ff @ (posedge clk)
  begin
  	if (reset)
  		RegistersListNow <= 16'b0;
  	else if ((defaultInstrD[27:25] == 3'b100 & defaultInstrD[20] == 1'b1) & state == ready)
  		RegistersListNow <= defaultInstrD[15:0];
  	else if (StalluOp)
  		RegistersListNow <= RegistersListNow;
  	else
  		RegistersListNow <= RegistersListNext;
  end

always_comb 
  begin
	numones = $countones(defaultInstrD[15:0]);
	casex(defaultInstrD[24:23])
	  2'b00: start_imm = (-((numones-1)<<2));
	  2'b01: start_imm = 0;
	  2'b10: start_imm = (-((numones)<<2));
	  2'b11: start_imm = 4;
	  default: start_imm = 0;
	endcase
  end
// Determine First "register to load"




// --------------------------------------------------------------------------------


// set reset state to READY, else set state to nextState
always_ff @ (posedge clk)
	begin
      if (reset) begin
	      state <= ready;
	  end else if (StalluOp) begin
	  	  state <= state;
	  end else begin
	      state <= nextState;
	  end
	end



/* Mealy FSM that takes in defaultInstrD as input, changes states that require uOps if 
 needed, and sets appropriate control signals and next instruction

 Signals that you'll need to consider:
 (1) InstrMuxD, (2) doNotUpdateFlagD, (3) uOpStallD, (4) regFileRz, (5) prevRSRState, (6) nextState, (7) keepV
 (8) uOpInstrD, (9) LDMSTMforward
*/

always_comb
	case(state)
		ready: begin
				//start RSR type instructions
				if (defaultInstrD[27:25] == 3'b0 && defaultInstrD[7] == 0 && defaultInstrD[4] == 1) begin 
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
				// Start multiply accumulate
				else if(defaultInstrD[21] && (defaultInstrD[7:4] == 4'b1001)) begin 
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 1;
					keepV = 1;
					prevRSRstate = 0;
					regFileRz = {1'b1, // Control inital mux for RA1D
								3'b100}; // 5th bit of WA3, RA2D and RA1D
					nextState = multiply;
					uOpInstrD = {defaultInstrD[31:24], 1'b0, defaultInstrD[22], 1'b0, //convert to MUL, preserve sign
								1'b0, 4'b1111, // [19:16] Rd
								4'b0000, //SBZ
								defaultInstrD[11:0]}; 
				end
				// LOAD MULTIPLE
				else if(defaultInstrD[27:25] == 3'b100 && defaultInstrD[20] == 1'b1) begin
					InstrMuxD = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 1;
					LDMSTMforward = 0;
					regFileRz = {1'b0,
								 3'b0};
					nextState = ldm; 
					SignExtend = 1;
					// First instruction should be a LDR with offset
					uOpInstrD = {32'b0};
					// First instruction should be a move Rz = Rn or Rz = Rn + 4 or Rz = Rn - # bits set - 4 etc...
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
					LDMSTMforward = 0;
					SignExtend = 0;
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
					if(defaultInstrD[21] & ~defaultInstrD[23] & (defaultInstrD[7:4] == 4'b1001)) begin //accumulate short
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
					else if(defaultInstrD[21] & defaultInstrD[23] & (defaultInstrD[7:4] == 4'b1001)) begin //accumulate long
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 0;
						prevRSRstate = 1;
						keepV = 0;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b000}; // 5th bit of WA3, RA2D and RA1D
						nextState = ready;
						uOpInstrD = {defaultInstrD[31:24], //we need to send the values in RdLo and RdHi to the multiplier
								3'b101, defaultInstrD[20:16], //set the flags if requested
								defaultInstrD[15:12],
								defaultInstrD[15:12], 4'b1001, defaultInstrD[19:16]}; 
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


