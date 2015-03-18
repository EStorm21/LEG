module micropsfsm(input  logic        clk, reset,
               input  logic [31:0] defaultInstrD,
               output logic        InstrMuxD, doNotUpdateFlagD, uOpStallD, LDMSTMforward, Reg_usr_D, MicroOpCPSRrestoreD,
               output logic [1:0]  STR_cycle,
               output logic 	   prevRSRstate, keepV, SignExtend, noRotate, ldrstrRtype,
               output logic [3:0]  regFileRz,
			   output logic [31:0] uOpInstrD,
			   input  logic		   StalluOp, ExceptionSavePC);

// define states READY and RSR 
typedef enum {ready, rsr, multiply, ldm, stm, bl, ldmstmWriteback, ldr, str, str2, blx, strHalf, exception} statetype;
statetype state, nextState;

// --------------------------- ADDED FOR LDM/STM -------------------------------
// Conditional Unit
logic readyState, Ubit_ADD, LastCycle, WriteBack, ZeroRegsLeft;
assign readyState = (state == ready);
assign WriteBack = defaultInstrD[21]; 
// Count ones for LDM/STM
logic [4:0] numones, defaultNumones;
logic [3:0] Rd;
logic [11:0] start_imm;
logic [15:0] RegistersListNow, RegistersListNext;

/* Gives you the next register to Load/Store during LDM or STM, even handles first cycle
 */
microps_reg_selector regSelect(defaultInstrD, readyState, RegistersListNow, RegistersListNext, Rd);

/* Updates the Current Registers List that we need to select from. 
 */
always_ff @ (posedge clk)
  begin
  	if (reset)
  		RegistersListNow <= 16'b0;
  	else if (StalluOp)
  		RegistersListNow <= RegistersListNow;
  	else
  		RegistersListNow <= RegistersListNext;
  end

always_comb 
  begin
  	if((state == ready) | (state == ldmstmWriteback))   
  		numones = $countones(defaultInstrD[15:0]);
  	else 
  		numones = $countones(RegistersListNow);
  	defaultNumones = $countones(defaultInstrD[15:0]);
	LastCycle = (numones == 1);			// Determines when there's one register left (and no writeback)
	ZeroRegsLeft = (numones == 0);		// Determines if there's nothing left (for corner case only loading 1 register)
	casex(defaultInstrD[24:23])
	  2'b00: begin 
	  		 start_imm = ((numones-1)<<2); // <start_add> = Rn + 4 - (#set bits * 4)
	  	     Ubit_ADD = 0; 				   // Used in single LDR/STR bit[23] to choose SUBTRACT
	  	  	 end
	  2'b01: begin 
	  		 start_imm = 0;
	  		 Ubit_ADD = 1;
	  		 end
	  2'b10: begin
	  		 start_imm = ((numones)<<2);   // <start_add> = Rn     - (#set bits * 4) 
	  		 Ubit_ADD = 0;				   // SUBTRACT NEEDED
	  		 end
	  2'b11: begin
	  		 start_imm = 4;
	  		 Ubit_ADD = 1;
	  		 end
	  default: begin start_imm = 0; Ubit_ADD = 1; end
	endcase
  end

// Determine First "register to load"  - DONE
// Choose start immediate to get <start_address> = Rn + stuff - DONE
// On first cycle, load single LDR instruction with offset 
// Keep ldr/str executing until done (stay in state)


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
 (1) InstrMuxD, (2) doNotUpdateFlagD, (3) uOpStallD, (4) regFileRz, (5) prevRSRstate, (6) nextState, (7) keepV
 (8) uOpInstrD, (9) LDMSTMforward, (10) noRotate,

 ** noRotate might now be deprecated after modifications to datapath and controller
*/

always_comb
	case(state)
		/*
		 * READY STATE 
		 */
		ready: begin
				// Exception handling (sufficiently handles SWI so far... still in progress)
				if (ExceptionSavePC) begin
					InstrMuxD = 1;
					uOpStallD = 0; 
					nextState = ready;
					uOpInstrD = 32'b1110_000_1101_0_0000_1110_00000000_1111; // mov r14, pc
				end
				//start RSR type instructions
				else if (defaultInstrD[27:25] == 3'b0 & defaultInstrD[7] == 0 & defaultInstrD[4] == 1 
				  & ~(defaultInstrD[27:6] == {8'b0001_0010, 12'hFFF, 2'b00}) & defaultInstrD[4]) begin 
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
				else if(defaultInstrD[27:24]== 4'b1011) begin // bl
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					prevRSRstate = 0;
					LDMSTMforward = 0;
					nextState = bl;
					keepV = 0;
					uOpInstrD = {defaultInstrD[31:28], // Condition bits
								3'b001, 4'b0010, 1'b0, // SUB instruction, Do not update flags 
								4'b1111, 4'b1110, // R15, link register destination
								4'b0000, 8'b00000100}; // We need PC - 4
				end

				else if(defaultInstrD[27:4]== {8'b00010010, 12'hfff, 4'b0011}) begin // blx
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					prevRSRstate = 0;
					LDMSTMforward = 0;
					nextState = blx;
					keepV = 0;
					uOpInstrD = {defaultInstrD[31:28], // Condition bits
								3'b001, 4'b0010, 1'b0, // SUB instruction, Do not update flags 
								4'b1111, 4'b1110, // R15, link register destination
								4'b0000, 8'b00000100}; // We need PC - 4
				end

				// ---------- LOAD/STORE Pre/Post Increment Mode ------------
				else if (defaultInstrD[27:26] == 2'b01) begin // ldr/store post-increment mode
					/*
					 * I TYPE OF LOADS AND STORES, WORKS FOR BOTH
					 */
					if(defaultInstrD[25:24] == 2'b00 & ~defaultInstrD[21]) begin // ldr/str i type, post index
						nextState = ldr; // ** Note: handles both load & store
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 1;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b000}; // 5th bit of WA3, RA2D and RA1D
						prevRSRstate = 0;
						noRotate = 1; // Tells the rotator not to touch the bottom 12 bits because it needs to be carried through
						uOpInstrD = {defaultInstrD[31:28], 	// Condition bits
									5'b01011, defaultInstrD[22:20], // Use simplest load/store, keep same control bits
									defaultInstrD[19:12], 	// Same Rd and Rn
									12'b0  				 	// Offset = 0
									};
					end else if (defaultInstrD[25:24] == 2'b01 & defaultInstrD[21]) begin // load, uses the ! operator for preindex i type
						nextState = ldr; // ** Note: handles both load & store
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 1;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b000}; // 5th bit of WA3, RA2D and RA1D
						prevRSRstate = 0;
						noRotate = 1;  	     // Tells the rotator not to touch the bottom 12 bits because it needs to be carried through
						uOpInstrD = {defaultInstrD[31:28], 	// Condition bits
									4'b0101, defaultInstrD[23:20], // Use simplest load/store, keep same control bits
									defaultInstrD[19:12], 	// Same Rd and Rn
									defaultInstrD[11:0]	 	// Offset = <12bitImm>
									};

					end else if (defaultInstrD[25:24] == 2'b10 & defaultInstrD[21:20] == 2'b01 ) begin // load, register shifted type, post index 
						nextState = ldr;
						ldrstrRtype = 0;
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 1;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b000}; // 5th bit of WA3, RA2D and RA1D
						prevRSRstate = 0;
						noRotate = 1; // Tells the rotator not to touch the bottom 12 bits because it needs to be carried through
						// We only need to load Rn as address. Post index comes later
						uOpInstrD = {defaultInstrD[31:28], 	// Condition bits
									5'b01011, defaultInstrD[22:20], // Use simplest load/store, keep same control bits
									defaultInstrD[19:12], 	// Same Rd and Rn
									12'b0  				 	// Offset = 0
									};
					end else if (defaultInstrD[25:24] == 2'b11 & defaultInstrD[21:20] == 2'b11) begin // load, register shifted type, ! operator pre indexing
						nextState = ldr;
						ldrstrRtype = 1;
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 1;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b000}; // 5th bit of WA3, RA2D and RA1D
						prevRSRstate = 0;
						noRotate = 1;  	     // Tells the rotator not to touch the bottom 12 bits because it needs to be carried through
						// We need to load full Rd = Rn + shift(Rm)
						uOpInstrD = {defaultInstrD[31:28], 	// Condition bits
									4'b0111, defaultInstrD[23:20], // Use simplest R type load/store, keep same control bits
									defaultInstrD[19:12], 	// Same Rd and Rn
									defaultInstrD[11:0]	 	// shift(Rm)
									};

					end else if (defaultInstrD[25:24] == 2'b11 & defaultInstrD[21:20] == 2'b00) begin // Store, r type, no pre or post indexing
						nextState = str;
						STR_cycle = 2'b01; // for debugging
						InstrMuxD = 1;
						ldrstrRtype = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 1;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b100}; // 5th bit of WA3, RA2D and RA1D
						prevRSRstate = 0;
						noRotate = 0;
						// We need to calculate the Rn + Rm in the first cycle, then second cycle load value from regfile to store to mem
						uOpInstrD = {defaultInstrD[31:28], // Condition bits
									3'b000,				   // R-type data processing instr
									1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, // ADD OR SUBTRACT
									1'b0, defaultInstrD[19:16], // S = 0, Rn is same
									4'b1111, defaultInstrD[11:0] // Add and store into Rz, leave bottom 12 bits same
									}; 
					end else if (defaultInstrD[25:24] == 2'b10 & defaultInstrD[21:20] == 2'b00) begin // Store, r type, post indexed
						nextState = str;
						STR_cycle = 2'b10; // for debugging
						ldrstrRtype = 0;
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 1;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b000}; // 5th bit of WA3, RA2D and RA1D
						noRotate = 1;
						prevRSRstate = 0;
						// Use a simple i type load store since we only need to first load Rn 
						uOpInstrD = {defaultInstrD[31:28], 	// Condition bits
									5'b01011, defaultInstrD[22:20], // Use simplest i type load/store, keep same control bits
									defaultInstrD[19:12], 	// Same Rd and Rn
									12'b0  				 	// Offset = 0
									};
					end else if (defaultInstrD[25:24] == 2'b11 & defaultInstrD[21:20] == 2'b10) begin // store, r type, pre indexed (!)
						nextState = str;
						STR_cycle = 2'b11; // for debugging
						ldrstrRtype = 1;
						InstrMuxD = 1;
						doNotUpdateFlagD = 1;
						uOpStallD = 1;
						regFileRz = {1'b0, // Control inital mux for RA1D
									3'b000}; // 5th bit of WA3, RA2D and RA1D
						noRotate = 1;
						prevRSRstate = 0;
						// We are going to try and save the new value back into Rn - the condition code should tell us whether to execute.
						uOpInstrD = {defaultInstrD[31:28], // condition bits
									3'b000, 			   // R type data processing instr
									1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, // ADD or SUBTRACT
									1'b0, defaultInstrD[19:16], // S = 0, Rn is same
									defaultInstrD[19:16], defaultInstrD[11:0] // add and store into Rz = Rn + shift(Rm)
									};
					end else begin // NOT POST-INCREMENT OR !
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
						noRotate = 0;
						STR_cycle = 2'b0;
						ldrstrRtype = 0;
					end 
				end
				// LOAD MULTIPLE & STORE MULTIPLE
				// First instruction should be a move Rz = Rn or Rz = Rn + 4 or Rz = Rn - # bits set - 4 etc...
				else if(defaultInstrD[27:25] == 3'b100) begin 
					InstrMuxD = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 1;
					LDMSTMforward = 0;
					regFileRz = {1'b0,  // Control inital mux for RA1D
								 3'b000}; // 5th bit of WA3, RA2D and RA1D
					if(defaultInstrD[20]) 	nextState = ldm; 
					else 					nextState = stm;
					// First instruction should be a LDR with offset
					uOpInstrD = {defaultInstrD[31:28], // Cond
								 3'b010, 			   // Load/Store SINGLE as I-type
								 1'b1,  			   // P-bit (preindex)
								 Ubit_ADD,			 	// U-bit (add or subtract)
								 1'b0,					// B-bit (choose word addressing, not byte addressing)
								 1'b0,					// W-bit (Base register should NOT be updated)
								 defaultInstrD[20], 	// Differentiate between Load and Store | L = 1 for loads
								 defaultInstrD[19:16],	// Still read from the same Rn
								 Rd,					// 4 bit calculated register file to which the Load will be written back to
								 start_imm				// 12 bits of start_imm, calculated from above
								 };
				end 
				// STORE HALF-WORDS
				else if (defaultInstrD[27:25] == 3'b000 & ~defaultInstrD[20] & ~defaultInstrD[22] & defaultInstrD[7] 
							& defaultInstrD[4] & ~(defaultInstrD[6:5] == 2'b00)) begin // store, r type, pre indexed (!)
					nextState = strHalf;
					STR_cycle = 2'b11; // for debugging
					InstrMuxD = 1;
					ldrstrRtype = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b100}; // 5th bit of WA3, RA2D and RA1D
					prevRSRstate = 0;
					noRotate = 0;
					// We need to calculate the Rn + Rm in the first cycle, then second cycle load value from regfile to store to mem
					uOpInstrD = {defaultInstrD[31:28], // Condition bits
								3'b000,				   // R-type data processing instr
								1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, // ADD OR SUBTRACT
								1'b0, defaultInstrD[19:16], // S = 0, Rn is same
								4'b1111, 8'b0, defaultInstrD[3:0] // Add and store into Rz,
								}; 

				end
				/* --- Stay in the READY state ----
				 */
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
					noRotate = 0;
					STR_cycle = 2'b0;
					ldrstrRtype = 0;
					Reg_usr_D = 0;

				end
			end

		strHalf: begin
			if (defaultInstrD[27:25] == 3'b000 & ~defaultInstrD[20] & ~defaultInstrD[22] & defaultInstrD[7] 
							& defaultInstrD[4] & ~(defaultInstrD[6:5] == 2'b00)) begin 
				InstrMuxD = 1;
				doNotUpdateFlagD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b001}; // 5th bit of WA3, RA2D and RA1D
				noRotate = 0;
				ldrstrRtype = 0;
				nextState = ready;
				STR_cycle = 2'b11;
				// after calculating Rn + shift(Rm), lets store Rd to that address
				uOpInstrD = {defaultInstrD[31:28], 3'b000, // Cond, I-type Halfword store
							defaultInstrD[24:23], 1'b1, 
							defaultInstrD[21:20], 4'b1111, //
							defaultInstrD[15:12], 4'b0, 
							defaultInstrD[7:4], 4'b0 	// Rd, with 0 offset (i type)
							};
			end

		end

		str: begin
			if(defaultInstrD[27:26] == 2'b01) begin //
				if(defaultInstrD[25:24] == 2'b11 & defaultInstrD[21:20] == 2'b00) begin // Basic R type, store
					InstrMuxD = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 0;
					prevRSRstate = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b001}; // 5th bit of WA3, RA2D and RA1D
					noRotate = 0;
					ldrstrRtype = 0;
					nextState = ready;
					STR_cycle = 2'b01;
					// after calculating Rn + shift(Rm), lets store Rd to that address
					uOpInstrD = {defaultInstrD[31:28], 4'b0101, // Cond, I-type store
								defaultInstrD[23:20], 4'b1111, // Default-codes, use Rz so data forwarded,
								defaultInstrD[15:12], 12'b0 	// Rd, with 0 offset (i type)
								};
				end else if (defaultInstrD[25:24] == 2'b10 & defaultInstrD[21:20] == 2'b00) begin // store, r type, post-indexed
					nextState = ready;
					InstrMuxD = 1;
					doNotUpdateFlagD = 1;
					STR_cycle = 2'b10;
					ldrstrRtype = 1;
					uOpStallD = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D 
					noRotate = 0;
					// Now lets save new value of Rn = Rn + shift(Rm)
					uOpInstrD = {defaultInstrD[31:28], 3'b000, 	// data processing r type
								1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // add or subtract, S = 0
								defaultInstrD[19:16], defaultInstrD[19:16], //Rn = Rn + shift(Rm)
								defaultInstrD[11:0]				// shift(Rm)
								};
				end else if (defaultInstrD[25:24] == 2'b11 & defaultInstrD[21:20] == 2'b10) begin // 
					nextState = ready;
					InstrMuxD = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 0;
					STR_cycle = 2'b11;
					ldrstrRtype = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D 
					noRotate = 1;
					uOpInstrD = {defaultInstrD[31:28], 4'b0101, // basic i type store
								defaultInstrD[23:20], defaultInstrD[19:16], // default codes, Rn is new Rn (updated last cycle)
								defaultInstrD[15:12], 12'b0 			// default Rd to store in mem address Rn with 0 offset.
								};
				end
			end
		end


		/*
		 * PRE or POST - INDEXED Load 
		 */
		ldr: begin
			if(defaultInstrD[27:26] == 2'b01) begin // ldr post increment i type
				if((defaultInstrD[25:24] == 2'b00 & ~defaultInstrD[21]) | (defaultInstrD[25:24] == 2'b01 & defaultInstrD[21])) 
					begin // specificially i type, post index
					InstrMuxD = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 0;
					prevRSRstate = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					nextState = ready;
					noRotate = 1;
					// Do the same calculation but store it in Rn = Rn + shift(Rm) for LOAD/STR I TYPES
					uOpInstrD = {defaultInstrD[31:28], 3'b001, // dataprocessing i-type
								1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // Add/sub, do not set flags
								defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + 12bit_offset
								defaultInstrD[11:0] 			// 12bit offset
								};
				end else if((defaultInstrD[25:24] == 2'b10 & ~defaultInstrD[21]) | (defaultInstrD[25:24] == 2'b11 & defaultInstrD[21]))
					begin // r type load, post index
					InstrMuxD = 1;
					ldrstrRtype = 1;
					doNotUpdateFlagD = 1;
					uOpStallD = 0;
					prevRSRstate = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					nextState = ready;
					noRotate = 1;
					// Do the same calculation Rn = Rn + shift(Rm) for R types
					uOpInstrD = {defaultInstrD[31:28], 3'b000, // cond, dataprocessing r type
								1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // Add/sub, do not set flags 
								defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + shift(Rm)
								defaultInstrD[11:0] 				// shift(Rm)
								};
				end
			end
		end
		/*
		 * STORE MULTIPLE
		 */
		stm: begin 
			if (ZeroRegsLeft) begin
				nextState = ready;
			  	InstrMuxD = 1;
			  	doNotUpdateFlagD = 1;
			  	uOpStallD = 0;
			  	prevRSRstate = 0;
			  	regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 0;
				uOpInstrD = {defaultInstrD[31:28], 		// Cond: Never execute
							3'b001,  		// Data processing Instr
							4'b0100, 		// Add operation
							1'b0,			// Do not set flags
							20'b0 			// Add R0 = R0 + 0 (never execute)
							};
			end
			/* If it's the last cycle and NO WRITEBACK
			 */
			else if(LastCycle & WriteBack) begin
			  	nextState = ldmstmWriteback;
			  	InstrMuxD = 1;
				doNotUpdateFlagD = 1;
				uOpStallD = 1;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; //5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 1;
				uOpInstrD = {defaultInstrD[31:28],
							3'b010, 			   // Store SINGLE as I-type
							1'b1,  			   	 	// P-bit (preindex)
							1'b1,			 		// U-bit (ADD)
							1'b0,					// B-bit (choose word addressing, not byte addressing)
							1'b1,					// W-bit (Base register should NOT be updated)
							defaultInstrD[20], 		// Differentiate between Load and Store | L = 1 for loads
							4'b1111,				// Still read from the same Rn
							Rd,						// 4 bit calculated register file to which the Load will be written back to
							8'b0, 4'b1111			// 0 shift, ignore last 4 bits since we are pulling "4" anyways.
							};
			end else if (LastCycle) begin	// If just last cycle and no writeback
			  	nextState = ready;
			  	InstrMuxD = 1;
				doNotUpdateFlagD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 1;
				uOpInstrD = {defaultInstrD[31:28],
							3'b010, 			   // Store SINGLE as I-type
							1'b1,  			   	 	// P-bit (preindex)
							1'b1,			 		// U-bit (ADD)
							1'b0,					// B-bit (choose word addressing, not byte addressing)
							1'b0,					// W-bit (Base register should NOT be updated)
							defaultInstrD[20], 		// Differentiate between Load and Store | L = 1 for loads
							4'b1111,	// Still read from the same Rn
							Rd,						// 4 bit calculated register file to which the Load will be written back to
							8'b0, 4'b1111			// 0 shift, ignore last 4 bits since we are pulling "4" anyways.
							};
			end	else begin			// Not last cycle, load next register
				nextState = stm;
				InstrMuxD = 1;
				doNotUpdateFlagD = 1;
				uOpStallD = 1;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 1;
				uOpInstrD = {defaultInstrD[31:28],
							3'b010, 			   // Store SINGLE as I-type
							1'b1,  			   	 	// P-bit (preindex)
							1'b1,			 		// U-bit (ADD)
							1'b0,					// B-bit (choose word addressing, not byte addressing)
							1'b0,					// W-bit (Base register should NOT be updated)
							defaultInstrD[20], 		// Differentiate between Load and Store | L = 1 for loads
							4'b1111,	// Still read from the same Rn
							Rd,						// 4 bit calculated register file to which the Load will be written back to
							8'b0, 4'b1111			// 0 shift, ignore last 4 bits since we are pulling "4" anyways.
							};
				end
			end


		/*
		 * LOAD MULTIPLE
		 */
		ldm:begin
			if(defaultInstrD[22] & ~defaultInstrD[15])
				Reg_usr_D = 1;

			if (ZeroRegsLeft) begin
				nextState = ready;
			  	InstrMuxD = 1;
			  	doNotUpdateFlagD = 1;
			  	uOpStallD = 0;
			  	prevRSRstate = 0;
			  	regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 0;
				uOpInstrD = {defaultInstrD[31:28], 		
							3'b001,  		// Data processing Instr
							4'b0100, 		// Add operation
							1'b0,			// Do not set flags
							20'b0 			// Add R0 = R0 + 0 (never execute)
							};
			end
			/* If it's the last cycle and NO WRITEBACK
			 */
			else if(LastCycle & WriteBack) begin
			  	nextState = ldmstmWriteback;
			  	InstrMuxD = 1;
				doNotUpdateFlagD = 1;
				uOpStallD = 1;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
								3'b001}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 1;
				uOpInstrD = {defaultInstrD[31:28],
							3'b011, 			   // Load SINGLE as R-type
							1'b1,  			   	 	// P-bit (preindex)
							1'b1,			 		// U-bit (ADD)
							1'b0,					// B-bit (choose word addressing, not byte addressing)
							1'b0,					// W-bit (Base register should NOT be updated)
							defaultInstrD[20], 		// Differentiate between Load and Store | L = 1 for loads
							4'b1111,	// Still read from the same Rn
							Rd,						// 4 bit calculated register file to which the Load will be written back to
							8'b0, 4'b1111			// 0 shift, ignore last 4 bits since we are pulling "4" anyways.
							};
			end else if (LastCycle) begin	// If just last cycle and no writeback
			  	nextState = ready;
			  	InstrMuxD = 1;
				doNotUpdateFlagD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
								3'b001}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 1;
				uOpInstrD = {defaultInstrD[31:28],
							3'b011, 			   // Load SINGLE as R-type
							1'b1,  			   	 	// P-bit (preindex)
							1'b1,			 		// U-bit (ADD)
							1'b0,					// B-bit (choose word addressing, not byte addressing)
							1'b0,					// W-bit (Base register should NOT be updated)
							defaultInstrD[20], 		// Differentiate between Load and Store | L = 1 for loads
							4'b1111,	// Still read from the same Rn
							Rd,						// 4 bit calculated register file to which the Load will be written back to
							8'b0, 4'b1111			// 0 shift, ignore last 4 bits since we are pulling "4" anyways.
							};
			end	else begin			// Not last cycle, load next register
				nextState = ldm;
				InstrMuxD = 1;
				doNotUpdateFlagD = 1;
				uOpStallD = 1;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
								3'b001}; //5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 1;
				uOpInstrD = {defaultInstrD[31:28],
							3'b011, 			   // Load SINGLE as R-type
							1'b1,  			   	 	// P-bit (preindex)
							1'b1,			 		// U-bit (ADD)
							1'b0,					// B-bit (choose word addressing, not byte addressing)
							1'b0,					// W-bit (Base register should NOT be updated)
							defaultInstrD[20], 		// Differentiate between Load and Store | L = 1 for loads
							4'b1111,	// Still read from the same Rn
							Rd,						// 4 bit calculated register file to which the Load will be written back to
							8'b0, 4'b1111			// 0 shift, ignore last 4 bits since we are pulling "4" anyways.
							};
				end
			end

		ldmstmWriteback: begin
			if(LastCycle) begin
				nextState = ready;
				InstrMuxD = 1;
				doNotUpdateFlagD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 0;
				uOpInstrD = {defaultInstrD[31:28], 3'b001, 						     // Data Processing I type
							1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // add or subtract, S = 0
							defaultInstrD[19:16], defaultInstrD[19:16], 			 //Rn = Rn + shift(Rm)
							4'b1111, 3'b0, defaultNumones								 // Rotate right by 30 (shift left by 2) 
							};

			end
		end
		bl:begin
				if(defaultInstrD[27:24]== 4'b1011) begin
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 0;
					prevRSRstate = 0;
					keepV = 0;
					LDMSTMforward = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					nextState = ready;
					uOpInstrD = {defaultInstrD[31:25], 1'b0, defaultInstrD[23:0]};//branch without link
				end
		   end

		blx:begin
				if(defaultInstrD[27:24]== 4'b1011) begin
					InstrMuxD = 1;
					doNotUpdateFlagD = 0;
					uOpStallD = 0;
					prevRSRstate = 0;
					keepV = 0;
					LDMSTMforward = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					nextState = ready;
					uOpInstrD = {defaultInstrD[31:6], 1'b0, defaultInstrD[4:0]};//branch without link
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
			LDMSTMforward = 0;
			prevRSRstate = 0;
			uOpStallD = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b000}; // 5th bit of RA2D and RA1D
			uOpInstrD = {defaultInstrD};
		end
	endcase
endmodule


