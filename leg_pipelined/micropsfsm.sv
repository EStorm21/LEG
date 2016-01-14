module micropsfsm(input  logic        clk, reset,
               input  logic [31:0] defaultInstrD,
               output logic        InstrMuxD, uOpStallD, LDMSTMforward, Reg_usr_D, MicroOpCPSRrestoreD,
               output logic 	   prevRSRstate, KeepVD, KeepCD, noRotate, ldrstrRtype, 
               output logic [1:0]  multControlD, 
               output logic [3:0]  regFileRz,
			   output logic [31:0] uOpInstrD,
			   input  logic		   StalluOp, ExceptionSavePC, interrupting);

 /***** Brief Description *******
 * First Created by Ivan Wong for Clay Wolkin 2014-2015
 *
 * MicroOpFSM breaks down complex instructions into simple instructions
 * while stalling the pipeline. Uses Mealy FSM for max efficiency.
 ******************************/


// define states READY and RSR 
typedef enum {ready, rsr, multiply, mlal1, mlal2, ldmstm, bl, ldmstmWriteback, ls_word, str, blx, strHalf, ls_halfword, ls_word_byte, ls_word_byte_wb, swp_str, swp_mov} statetype; // theres a bug if we get rid of strHalf... need to figoure out why
statetype state, nextState;

string debugText;

// -----------------------------------------------------------------------------
// --------------------------- ADDED FOR LDM/STM -------------------------------
// -----------------------------------------------------------------------------
// Conditional Unit
logic WriteBack, ZeroRegsLeft;
assign WriteBack = defaultInstrD[21]; 
// Count ones for LDM/STM
logic [4:0] numones;
logic [3:0] Rd; // Rd is a CURRENT value 
logic [6:0] start_imm; // start_imm LE 16 << 2 == 1000000 
logic [15:0] RegistersListNow, RegistersListNext;

/* Gives you the next register to Load/Store during LDM or STM, even handles first cycle
 */
microps_reg_selector regSelect(RegistersListNow, RegistersListNext, Rd);
countones cntones(defaultInstrD[15:0], numones);

/* Updates the Current Registers List that we need to select from. 
 * In the first cycle this list is from the instruction
 */
always_ff @ (posedge clk)
  begin
  	if (reset)
  		RegistersListNow <= 16'b0;
  	else if (StalluOp)
  		RegistersListNow <= RegistersListNow;
  	else if (state == ready)
  		RegistersListNow <= defaultInstrD[15:0];
  	else
  		RegistersListNow <= RegistersListNext;
  end

always_comb 
  begin
	ZeroRegsLeft = RegistersListNext == 0;
	// Note: page A5-48 in ARMv5 ARM is INCORRECT. Pages A5-50 to A5-53 are correct.
	// start_imm is added or subtracted from Rn based on defaultInstrD[23] to generate ONE BEFORE the first address.
	// SD 12/9/2015: Don't need to shift here. Do it by adding 00 in uopinstrD
	casex(defaultInstrD[24:23])
	  2'b00:   start_imm = ((numones)<<2); // DA: Rn is highest address, writeback subtracts numones<<2
	  2'b01:   start_imm = 4;                // IA: Rn is lowest address, writeback adds numones<<2
	  2'b10:   start_imm = ((numones+1)<<2);   // DB: Rn is one past highest address, writeback subtracts numones<<2
	  2'b11:   start_imm = 0;                // IB: Rn is one before lowest address, writeback adds numones<<2
	  default: start_imm = 0;
	endcase
  end

// -----------------------------------------------------------------------------
// --------------------------- END LDM/STM -------------------------------------
// -----------------------------------------------------------------------------

// Stores shift amount for shift and add multiplication
logic [4:0] MULShift;


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
 (1) InstrMuxD, (2) doNotUpdateFlagD, (3) uOpStallD, (4) regFileRz, (5) prevRSRstate, (6) nextState, (7) KeepVD
 (8) uOpInstrD, (9) LDMSTMforward, (10) noRotate,

 ** noRotate might now be deprecated after modifications to datapath and controller
*/

always_comb
	case(state)
		/*
		 * READY STATE 
		 */
		ready: begin
			// MUL shift is the same for any case in ready state
			MULShift = 5'b00001;

			// Exception handling: mov r14, pc. By the time this comes back to wb we will be in
			// the exception mode and thus will use the correct registers
			if (ExceptionSavePC) begin
				InstrMuxD = 1;
				uOpStallD = 0; 
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				prevRSRstate = 0;  
				KeepVD = 0;  
				KeepCD = 0;    
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 0;  
				regFileRz = 0; 
				nextState = ready;
				uOpInstrD = 32'b1110_000_1101_0_0000_1110_00000000_1111; // mov r14, pc
			end

			else if (interrupting) begin 
				debugText = "stay in ready";
				nextState = ready;
				InstrMuxD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				KeepVD = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of RA2D and RA1D
				uOpInstrD = {32'b0};
				LDMSTMforward = 0;
				noRotate = 0;
				ldrstrRtype = 0;
				Reg_usr_D = 0;
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;     
			end

			//start RSR type instructions
			else if (defaultInstrD[27:25] == 3'b0 & defaultInstrD[7] == 0 & defaultInstrD[4] == 1 
				// don't treat opcode 10xx with s==0 as RSR. instead misc. instructions. c.f. note2, A3-3
			  & ~(defaultInstrD[24:23] == 2'b10 & ~defaultInstrD[20])) begin 
			  	debugText = "rsr type data processing instr";
				InstrMuxD = 1;
				uOpStallD = 1;
				regFileRz = {1'b1, // Control inital mux for RA1D
							3'b100}; // 5th bit of WA3, RA2D and RA1D
				prevRSRstate = 0;
				nextState = rsr;
				KeepVD = 0;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD[31:25], // Condition bits and RSR-type
							4'b1101, 1'b0, // MOV instruction, Do not update flags [24:20]
							4'b0000, 4'b1111, // If we have SBZ then [19:16]  shb 0000, we should use Rz [15:12]
							defaultInstrD[11:0]}; // This needs to be MOV R1 R2 << R3. 
			end
			// Start SWP{B}
			// Step 1: ldr{b} Rz, [Rn]
			else if (defaultInstrD[27:23] == 5'b00010 & defaultInstrD[21:20] == 2'b00 & defaultInstrD[7:4] == 4'b1001) begin
				InstrMuxD = 1;
				uOpStallD = 1;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b100}; // 5th bit of WA3, RA2D and RA1D
				prevRSRstate = 0;
				nextState = swp_str;
				KeepVD = 0;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD[31:28], 5'b01011, // ldr{b} immediate offset
							defaultInstrD[22], 2'b01, 	// load word or byte; offset mode
							defaultInstrD[19:16],  // Load from Rn
							4'b1111,  // Store into Rz
							12'b0};	
			end
			// Start multiply
            // SD 5/6/2015 Why have this case? Just put it in controller
			else if((defaultInstrD[7:4] == 4'b1001) & (defaultInstrD[27:21] == 7'h0)) begin 
				debugText = "multiply";
				InstrMuxD = 1;
				uOpStallD = 0;
				KeepVD = 1;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				nextState = ready;
				multControlD = 2'b00; //unsigned low
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;   
				noRotate = 0;  
				ldrstrRtype = 0;  
				uOpInstrD = defaultInstrD; 
			end
			// Start multiply accumulate
			else if((defaultInstrD[7:4] == 4'b1001) & (defaultInstrD[27:21] == 7'h01)) begin 
				debugText = "multiply accumulate";
				InstrMuxD = 1;
				uOpStallD = 1;
				KeepVD = 1;
				prevRSRstate = 0;
				multControlD = 2'b00; //unsigned low
				regFileRz = {1'b1, // Control inital mux for RA1D
							3'b100}; // 5th bit of WA3, RA2D and RA1D
				nextState = multiply;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				uOpInstrD = {defaultInstrD[31:24], 1'b0, defaultInstrD[22], 1'b0, //convert to MUL, preserve sign SD 5/6/2015 already 0 b/c cond
							1'b0, 4'b1111, // [19:16] Rd
							4'b0000, //SBZ
							defaultInstrD[11:0]}; 
			end
			// Start multiply long
			else if((defaultInstrD[7:4] == 4'b1001) & (defaultInstrD[27:23] == 5'h01) & ~defaultInstrD[21]) begin 
				debugText = "multiply long";
				InstrMuxD = 1;
				uOpStallD = 1;
				KeepVD = 1;
				prevRSRstate = 0;
				multControlD = {defaultInstrD[22], 1'b0}; //unsigned/signed low. [22]==1 if Signed
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				nextState = multiply;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				uOpInstrD = {defaultInstrD[31:21], 1'b0, defaultInstrD[15:12], 4'b0, defaultInstrD[11:0]}; 
			end
			// Start multiply long accumulate
			// 1. load multLo into Rz 2. Add RdLo and Rz 3. load multHi into Rz 4. Add RdHi and Rz
			else if((defaultInstrD[7:4] == 4'b1001) & (defaultInstrD[27:23] == 5'h01) & defaultInstrD[21]) begin 
				debugText = "multiply long accum";
				InstrMuxD = 1;
				uOpStallD = 1;
				KeepVD = 1;
				prevRSRstate = 0;
				multControlD = {defaultInstrD[22], 1'b0}; //unsigned/signed low. [22]==1 if Signed
				regFileRz = {1'b1, // Control inital mux for RA1D
							3'b100}; // 5th bit of WA3, RA2D and RA1D
				nextState = multiply;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				uOpInstrD = {defaultInstrD[31:21], 1'b0, 4'b1111, 4'b0, defaultInstrD[11:0]}; 
			end
			else if(defaultInstrD[27:24]== 4'b1011) begin // bl
				debugText = "bl";
				InstrMuxD = 1;
				uOpStallD = 1;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				prevRSRstate = 0;
				LDMSTMforward = 0;
				nextState = bl;
				KeepVD = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD[31:28], // Condition bits
							3'b001, 4'b0010, 1'b0, // SUB instruction, Do not update flags 
							4'b1111, 4'b1110, // R15, link register destination
							4'b0000, 8'b00000100}; // We need PC - 4

			end
			else if(defaultInstrD[27:4]== {8'b00010010, 12'hfff, 4'b0011}) begin // blx
				debugText = "blx";
				InstrMuxD = 1;
				uOpStallD = 1;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				prevRSRstate = 0;
				LDMSTMforward = 0;
				nextState = blx;
				KeepVD = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD[31:28], // Condition bits
							3'b001, 4'b0010, 1'b0, // SUB instruction, Do not update flags 
							4'b1111, 4'b1110, // R15, link register destination
							4'b0000, 8'b00000100}; // We need PC - 4
			end

			// LOAD MULTIPLE & STORE MULTIPLE
			// First instruction is save start_address to Rz. This Rz value is updated to get next addresses
			else if(defaultInstrD[27:25] == 3'b100) begin 
				debugText = "ldm / stm step 1";
				InstrMuxD = 1;
				uOpStallD = 1;
				LDMSTMforward = 0;
				regFileRz = {1'b0,  // Control inital mux for RA1D
							 3'b100}; // 5th bit of WA3, RA2D and RA1D
				nextState = ldmstm; 
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				prevRSRstate = 0;  
				KeepVD = 0;  
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				// First instruction should be a ADD or SUB start_imm
				uOpInstrD = {defaultInstrD[31:28], // Cond
							 3'b001, 			   // ADD/SUB  I-type
							 1'b0, 				   // part of opcode
							 1'b0, 1'b1, // ADD if this bit is 1. (U bit in ldm/stm)
							 2'b00,					// don't set flags 
							 defaultInstrD[19:16],	// Read from Rn
							 4'b1111,				// Put result in Rz
							 5'b00000, start_imm	// 5+7 bits of start_imm, calculated from above
							 };
			end 
			// LOAD/STORE HALF-WORDS
			else if (defaultInstrD[27:25] == 3'b000 & defaultInstrD[7] & defaultInstrD[4]) begin // LDRH and STRH only
				debugText = "ldrh/strh";
				// COMMENT: ldrh/strh immediate pre indexed (yes both load and store!)
				if (defaultInstrD[24] & defaultInstrD[22:21] == 2'b11) begin
					nextState = ls_halfword;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;  
					KeepCD = 0;  
					noRotate = 0;  
					multControlD = 2'b00;  
					// We need to calculate Rn + Rm in the first cycle, then second cycle save it! 
					uOpInstrD = {defaultInstrD[31:28], 3'b001, // I-Type Data processing instr
						1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
						defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + imm 
						4'b0, defaultInstrD[11:8], defaultInstrD[3:0] // Immediate
						};
				// COMMENT: ldrh/strh register pre indexed (yes, both load and store!) 
				end else if (defaultInstrD[24] & defaultInstrD[22:21] == 2'b01 & defaultInstrD[11:8] == 4'b0000) begin 
					nextState = ls_halfword;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D 
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;  
					KeepCD = 0;  
					noRotate = 0;  
					multControlD = 2'b00;  
					// We need to calculate Rn + Rm in the first cycle, then second cycle save it! 
					uOpInstrD = {defaultInstrD[31:28], 3'b000, // R-Type Data processing instr
						1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
						defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + Rm 
						8'b0, defaultInstrD[3:0] // add Rm
						};

				// COMMENT: ldrh/strh immediate post indexed (yes, both load and store)	
				end else if (~defaultInstrD[24] & defaultInstrD[22:21] == 2'b10) begin
					nextState = ls_halfword;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;  
					KeepCD = 0;  
					noRotate = 0;  
					multControlD = 2'b00;  
					// (1) <addr> = Rn, (2) Rn = Rn + imm
					uOpInstrD = {defaultInstrD[31:25], 1'b1, // change to basic ldrh/strh i type
						defaultInstrD[23:12],
						4'b0, defaultInstrD[7:4], 4'b0 // make offset 0
						};
				
				// COMMENT: ldrh/strh register post-indexed (yest both load store)
				end else if (~defaultInstrD[24] & defaultInstrD[22:21] == 2'b00 & defaultInstrD[11:8] == 4'b0000) begin
					nextState = ls_halfword;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;  
					KeepCD = 0;  
					noRotate = 0;   
					multControlD = 2'b00;  
					// (1) <addr> = Rn, (2) Rn = Rn + imm
					uOpInstrD = {defaultInstrD[31:23], 2'b10, // change to basic ldrh/strh i type
						defaultInstrD[20:12],
						4'b0, defaultInstrD[7:4], 4'b0 // make offset 0
						};



				// To change in the future (defaultInstrD[24] & (defaultInstrD[22:21] == 2'b01) & defaultInstrD[7] & defaultInstrD[4])
				// SD 10/13/2015: Based on cases above, this covers strh r type offset. 
				end else if (~defaultInstrD[20] & ~defaultInstrD[22] & defaultInstrD[6:5] == 2'b01) begin // store, r type, pre indexed (!)
					nextState = strHalf;
					InstrMuxD = 1;
					ldrstrRtype = 1;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b100}; // 5th bit of WA3, RA2D and RA1D
					prevRSRstate = 0;
					noRotate = 0;
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					KeepVD = 0;   
					KeepCD = 0;    
					multControlD = 2'b00;  
					// We need to calculate the Rn + Rm in the first cycle, then second cycle load value from regfile to store to mem
					uOpInstrD = {defaultInstrD[31:28], // Condition bits
								3'b000,				   // R-type data processing instr
								1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, // ADD OR SUBTRACT
								1'b0, defaultInstrD[19:16], // S = 0, Rn is same
								4'b1111, 8'b0, defaultInstrD[3:0] // Add and store into Rz,
								}; 
				end else begin // OFFSET (no writeback)
					nextState = ready;
					InstrMuxD = 0;
					uOpStallD = 0;
					prevRSRstate = 0;
					KeepVD = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of RA2D and RA1D
					uOpInstrD = {defaultInstrD};
					LDMSTMforward = 0;
					noRotate = 0;
					ldrstrRtype = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					KeepCD = 0;  
					multControlD = 2'b00;  
				end 
			end
			// ALL LOAD and STORE WORDS / BYTES --- ldr, str, ldrb, strb
			else if (defaultInstrD[27:26] == 2'b01) begin // ldrb or strb   & defaultInstrD[22]
				debugText = "ldr/str/ldrb/strb";
				// Scaled Register offests ldr/str/ldrb/strb
				// SD 5/1/2015 Why? Don't need to use Rz for data processing immediate shift. Why not all at once
				if (defaultInstrD[25:24] == 2'b11 & ~defaultInstrD[21] & ~defaultInstrD[4]) begin
					nextState = ls_word_byte;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					noRotate = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b100}; // 5th bit of WA3, RA2D and RA1D

					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;   
					KeepCD = 0;  
					multControlD = 2'b00;  
					// (1) Rz = Rm shifted by shift_imm (R-type instr), (2) Rn = Rn +/- Rz
					uOpInstrD = {defaultInstrD[31:28], 3'b000, // R-Type Data processing instr
						1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
						defaultInstrD[19:16], 4'b1111, // Rz = Rn + Rm 
						defaultInstrD[11:0] // add Rm
						};

				// Immediate pre indexed ldrb/strb
				// Can't do pre-indexed all at once since can only write to 1 reg per cycle
				end else if (defaultInstrD[25:24] == 2'b01 & defaultInstrD[21]) begin
					debugText = "ldr/str/ldrb/strb pre-indexed immediate";
					nextState = ls_word_byte;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					noRotate = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D 
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;   
					KeepCD = 0;  
					multControlD = 2'b00;  
					// (1) Rn = Rn + Imm
					uOpInstrD = {defaultInstrD[31:28], 3'b001, // I-Type Data processing instr
						1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
						defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + imm 
						defaultInstrD[11:0] // Immediate
						};
				// (Scaled) register pre indexed ldrb/strb
				// Can't do pre-indexed all at once since can only write to 1 reg per cycle
				end else if (defaultInstrD[25:24] == 2'b11 & defaultInstrD[21] & ~defaultInstrD[4]) begin
					debugText = "ldr/str/ldrb/strb pre-indexed (scaled) register";
					nextState = ls_word_byte;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0; 
					KeepCD = 0;  
					noRotate = 0;  
					multControlD = 2'b00;  
					// (1) Rn = Rn + scaled(Rm)
					uOpInstrD = {defaultInstrD[31:28], 3'b000, // R-Type Data processing instr
						1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
						defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + scaled(Rm) 
						defaultInstrD[11:0] // add scaled(Rm)
						};
				// post indexed ldrb/strb where Rd == Rm. Else Rd gets changed, then update Rn with new Rd. Sad.
				// see note below
				// post indexed and Register / scaled register type and Rd == Rm
				end else if (~defaultInstrD[24] & ~defaultInstrD[21] & defaultInstrD[25] & (defaultInstrD[15:12] == defaultInstrD[3:0])) begin
					nextState = ls_word_byte;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					noRotate = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b100}; // 5th bit of WA3, RA2D and RA1D
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;  
					KeepCD = 0;   
					multControlD = 2'b00;  
					// Rz = Rn + <shift operand>
					uOpInstrD = {defaultInstrD[31:28], 3'b000, // R-Type Data processing instr
						1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
						defaultInstrD[19:16], 4'b1111, // Rz = Rn + <shift operand> 
						defaultInstrD[11:0] // add <shift operand>
						};
				// post indexed ldrb/strb where Rd != Rm
				// 	SD 5/6/2015 Maybe should not check [21]. Still valid post-indexed, just privilege change
				end else if (~defaultInstrD[24] & ~defaultInstrD[21]) begin
					debugText = "ldr/str/ldrb/strb post indexed";
					nextState = ls_word_byte;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;  
					KeepCD = 0;  
					noRotate = 0;  
					multControlD = 2'b00;  
					// Load immedate byte/word
					uOpInstrD = {defaultInstrD[31:28], 4'b0101, // ldrb/strb immediate offset
							defaultInstrD[23:22], 1'b0, 	// 
							defaultInstrD[20], defaultInstrD[19:16],  // Load from saved register
							defaultInstrD[15:12], 		   // Store into Rd
							12'b0};	
				end else begin // NOT POST-INCREMENT OR !
					debugText = "ldr/str/ldrb/strb else case";
					nextState = ready;
					InstrMuxD = 0;
					uOpStallD = 0;
					prevRSRstate = 0;
					noRotate = 1;
					KeepVD = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of RA2D and RA1D
					uOpInstrD = {defaultInstrD};
					LDMSTMforward = 0;
					noRotate = 0;
					ldrstrRtype = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					KeepCD = 0;   
					multControlD = 2'b00;  
				end 
			end
			/* --- Stay in the READY state ----
			 */
			else begin 
				debugText = "stay in ready";
				nextState = ready;
				InstrMuxD = 0;
				uOpStallD = 0;
				prevRSRstate = 0;
				KeepVD = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of RA2D and RA1D
				uOpInstrD = {defaultInstrD};
				LDMSTMforward = 0;
				noRotate = 0;
				ldrstrRtype = 0;
				Reg_usr_D = 0;
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;     
			end
		end

		swp_str: begin	
			// swp{b} step 2: store Rm to [Rn]		
			InstrMuxD = 1;
			uOpStallD = 1;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b000}; // 5th bit of WA3, RA2D and RA1D
			prevRSRstate = 0;
			nextState = swp_mov;
			KeepVD = 0;
			LDMSTMforward = 0;
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			KeepCD = 0;  
			noRotate = 0;  
			ldrstrRtype = 0;  
			multControlD = 2'b00;  
			uOpInstrD = {defaultInstrD[31:28], 5'b01011, // str{b} immediate offset
						defaultInstrD[22], 2'b00, 	// store word or byte; offset mode
						defaultInstrD[19:16],  // Store to Rn
						defaultInstrD[3:0],  // Store data is Rm
						12'b0};	
		end

		swp_mov: begin
			// swp{b} step 3: mov Rd, Rz		
			InstrMuxD = 1;
			uOpStallD = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b010}; // 5th bit of WA3, RA2D and RA1D
			prevRSRstate = 0;
			nextState = ready;
			KeepVD = 0;
			LDMSTMforward = 0;
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			KeepCD = 0;  
			noRotate = 0;  
			ldrstrRtype = 0;  
			multControlD = 2'b00;  
			uOpInstrD = {defaultInstrD[31:28], 3'b000, // Condition bits and RSR-type
						4'b1101, 1'b0, // MOV instruction, Do not update flags [24:20]
						4'b0000, defaultInstrD[15:12], // Store to Rd
						8'b0, 4'b1111}; // from Rz
		end

		ls_word_byte: begin
			// scaled register
			if(defaultInstrD[25:24] == 2'b11 & ~defaultInstrD[21] & ~defaultInstrD[4]) begin
				debugText = "ldr/str/ldrb/strb cycle 2 scaled register";
				nextState = ready;
				InstrMuxD = 1;
				ldrstrRtype = 0;
				uOpStallD = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b001}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				prevRSRstate = 0;  
				KeepVD = 0;   
				KeepCD = 0;  
				noRotate = 0;   
				multControlD = 2'b00;  
				// Load immedate byte/word
				uOpInstrD = {defaultInstrD[31:28], 4'b0101, // ldrb/strb immediate offset
							defaultInstrD[23:20], 4'b1111, // Load Rz
							defaultInstrD[15:12], 		   // Store into Rd
							12'b0};						   // no offset
			// pre-indexed
			end else if (defaultInstrD[24] & defaultInstrD[21]) begin
				debugText = "ldr/str/ldrb/strb cycle 2 pre index";
				nextState = ready;
				InstrMuxD = 1;
				ldrstrRtype = 0;
				uOpStallD = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				prevRSRstate = 0;  
				KeepVD = 0;   
				KeepCD = 0;  
				noRotate = 0;  
				multControlD = 2'b00;  
				// Load immediate byte/word
				uOpInstrD = {defaultInstrD[31:28], 4'b0101, // ldrb/strb immediate offset
							defaultInstrD[23:22], 1'b0, 	// 
							defaultInstrD[20], defaultInstrD[19:16],  // Load from saved register
							defaultInstrD[15:12], 		   // Store into Rd
							12'b0};	
			// immediate post indexed
			end else if (defaultInstrD[25:24] == 2'b00 & ~defaultInstrD[21]) begin
				debugText = "ldr/str/ldrb/strb cycle 2 immediate post index";
				nextState = ready;
				InstrMuxD = 1;
				ldrstrRtype = 0;
				noRotate = 1;
				uOpStallD = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				prevRSRstate = 0;  
				KeepVD = 0;   
				KeepCD = 0;  
				multControlD = 2'b00;  
				// (1) Rn = Rn + Imm
				uOpInstrD = {defaultInstrD[31:28], 3'b001, // I-Type Data processing instr
						1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
						defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + imm 
						defaultInstrD[11:0] // Immediate
						};
			// (scaled) register post indexed, Rd == Rm
			// see note below
			end else if (defaultInstrD[25:24] == 2'b10 & (defaultInstrD[15:12] == defaultInstrD[3:0])) begin
					debugText = "ldr/str/ldrb/strb post indexed in ls_word_byte";
					nextState = ls_word_byte_wb;
					InstrMuxD = 1;
					ldrstrRtype = 0;
					uOpStallD = 1;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of WA3, RA2D and RA1D  
					LDMSTMforward = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					prevRSRstate = 0;  
					KeepVD = 0;  
					KeepCD = 0;   
					noRotate = 0;  
					multControlD = 2'b00;  
					// Load immedate byte/word
					uOpInstrD = {defaultInstrD[31:28], 4'b0101, // ldrb/strb immediate offset
							defaultInstrD[23:22], 1'b0, 	// 
							defaultInstrD[20], defaultInstrD[19:16],  // Load from saved register
							defaultInstrD[15:12], 		   // Store into Rd
							12'b0};	
			// (scaled) register post indexed, Rd != Rm
			// SD 5/6/2015 maybe can combine with above
			end else if (defaultInstrD[25:24] == 2'b10 & ~defaultInstrD[21] & ~defaultInstrD[4]) begin
				debugText = "ldr/str/ldrb/strb cycle 2 (scaled) register post index";
				nextState = ready;
				InstrMuxD = 1;
				ldrstrRtype = 0;
				uOpStallD = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				prevRSRstate = 0;  
				KeepVD = 0;  
				KeepCD = 0;   
				noRotate = 0;  
				multControlD = 2'b00;  
				// (1) Rn = Rn + Rm
				uOpInstrD = {defaultInstrD[31:28], 3'b000, // R-Type Data processing instr
						1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
						defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + Rm 
						defaultInstrD[11:0] // add Rm
						};
			end else begin // NOT POST-INCREMENT OR !
					debugText = "ldr/str/ldrb/strb cycle 2 else case";
					nextState = ready;
					InstrMuxD = 0;
					uOpStallD = 0;
					noRotate = 1;
					prevRSRstate = 0;
					KeepVD = 0;
					regFileRz = {1'b0, // Control inital mux for RA1D
								3'b000}; // 5th bit of RA2D and RA1D
					uOpInstrD = {defaultInstrD};
					LDMSTMforward = 0;
					noRotate = 0;
					ldrstrRtype = 0;
					Reg_usr_D = 0; 
					MicroOpCPSRrestoreD = 0;
					KeepCD = 0;  
					multControlD = 2'b00;  
			end 
		end

		ls_word_byte_wb: begin
			// only one case gets us here
			debugText = "ldr/str/ldrb/strb post-indexed actual writeback";
			nextState = ready;
			InstrMuxD = 1;
			ldrstrRtype = 0;
			uOpStallD = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b010}; // 5th bit of WA3, RA2D and RA1D 
			LDMSTMforward = 0;
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			prevRSRstate = 0;  
			KeepVD = 0;  
			KeepCD = 0;  
			noRotate = 0;   
			multControlD = 2'b00;  
			// Load immedate byte/word
			uOpInstrD = {defaultInstrD[31:28], 3'b000, // Condition bits and RSR-type
						4'b1101, 1'b0, // MOV instruction, Do not update flags [24:20]
						4'b0000, defaultInstrD[19:16], // If we have SBZ then [19:16]  shb 0000, we should use Rz [15:12]
						8'b0, 4'b1111}; // from Rz
		end

		strHalf: begin
			if (defaultInstrD[27:25] == 3'b000 & ~defaultInstrD[20] & ~defaultInstrD[22] & defaultInstrD[7] 
							& defaultInstrD[4] & ~(defaultInstrD[6:5] == 2'b00)) begin 
				InstrMuxD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b001}; // 5th bit of WA3, RA2D and RA1D
				noRotate = 0;
				ldrstrRtype = 0;
				nextState = ready; 
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepVD = 0;  
				KeepCD = 0;   
				multControlD = 2'b00;  
				// after calculating Rn + shift(Rm), lets store Rd to that address
				uOpInstrD = {defaultInstrD[31:28], 3'b000, // Cond, I-type ls_halfword store
							defaultInstrD[24:23], 1'b1, 
							defaultInstrD[21:20], 4'b1111, //
							defaultInstrD[15:12], 4'b0, 
							defaultInstrD[7:4], 4'b0 	// Rd, with 0 offset (i type)
							};
			end 
		end

		ls_halfword: begin
			// immediate pre-indexed
			if (defaultInstrD[24] & defaultInstrD[21] & defaultInstrD[7:4] == 4'b1011) begin 
				InstrMuxD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				noRotate = 0;
				ldrstrRtype = 0;
				nextState = ready;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepVD = 0;  
				KeepCD = 0;  
				multControlD = 2'b00;  
				// Store Rn <= Rz
				uOpInstrD = {defaultInstrD[31:23], 
							2'b10, // Only make one change: to normal immediate offset mode
							defaultInstrD[20:12], 
							4'b0, // make immediate 0
							defaultInstrD[7:4],
							4'b0
							};
			// Post-indexed immediate
			end else if (~defaultInstrD[24] & defaultInstrD[22:21] == 2'b10 & defaultInstrD[7:4] == 4'b1011) begin
				InstrMuxD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				noRotate = 0;
				ldrstrRtype = 0;
				nextState = ready;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepVD = 0;  
				KeepCD = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD[31:28], 3'b001, // I-Type Data processing instr
							1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
							defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + imm 
							4'b0, defaultInstrD[11:8], defaultInstrD[3:0] // Immediate
							};
			// Post-indexed register
			end else if (~defaultInstrD[24] & defaultInstrD[22:21] == 2'b00 & defaultInstrD[11:4] == 8'h0B) begin
				InstrMuxD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				noRotate = 0;
				ldrstrRtype = 0;
				nextState = ready;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepVD = 0;  
				KeepCD = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD[31:28], 3'b000, // R-Type Data processing instr
							1'b0, defaultInstrD[23], ~defaultInstrD[23], 1'b0, 1'b0, // ADD/SUB, do not set flags
							defaultInstrD[19:16], defaultInstrD[19:16], // Rn = Rn + Rm
							8'b0, defaultInstrD[3:0] // Rm
							};
			end
		end

		/*
		 * LDM and STM
		 */
		ldmstm:begin
			// ldr/str user mode if bit 22 and either stm or ldm ~r15
			if(defaultInstrD[22] & (~defaultInstrD[15] | ~defaultInstrD[20])) 
				Reg_usr_D = 1;
			else
				Reg_usr_D = 0;

			// if loading R15, with bit 22, need to restore CPSR
			if(defaultInstrD[22] & Rd == 4'b1111 & defaultInstrD[20])
				MicroOpCPSRrestoreD = 1;
			else
				MicroOpCPSRrestoreD = 0;

			if(ZeroRegsLeft & defaultInstrD[21])
				nextState = ldmstmWriteback;
			else if(ZeroRegsLeft)
				nextState = ready;
			else
				nextState = ldmstm;

			begin			// load next register
				debugText = "ldmstm part2";
				InstrMuxD = 1;
				uOpStallD = ~(ZeroRegsLeft & ~defaultInstrD[21]);
				prevRSRstate = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
								3'b001}; //5th bit of WA3, RA2D and RA1D
				LDMSTMforward = 1;
				KeepVD = 0;  
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				// Preform LDR/STR Rd, [Rz, #4]!
				uOpInstrD = {defaultInstrD[31:28],
							3'b010, 			   // Load SINGLE as I-type
							1'b1,  			   	 	// P-bit (preindex)
							1'b1,			 		// U-bit (ADD)
							1'b0,					// B-bit (choose word addressing, not byte addressing)
							1'b1,					// W-bit (preindex)
							defaultInstrD[20], 		// Differentiate between Load and Store | L = 1 for loads
							4'b1111,				// Address is Rz + 4
							Rd,						// 4 bit calculated register file to which the Load will be written back to
							8'b0, 4'b0100			// add 4.
							};
			end
		end

		ldmstmWriteback: begin
			debugText = "ldmstm Writeback";
			nextState = ready;
			InstrMuxD = 1;
			noRotate = 0;
			uOpStallD = 0;
			prevRSRstate = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
			LDMSTMforward = 0;
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			KeepVD = 0;  
			KeepCD = 0;  
			ldrstrRtype = 0;  
			multControlD = 2'b00; 
			uOpInstrD = {defaultInstrD[31:28], // Cond
							 3'b001, 			   // ADD/SUB  I-type
							 1'b0, 				   // part of opcode
							 defaultInstrD[23], ~defaultInstrD[23], // ADD if this bit is 1. (U bit in ldm/stm)
							 2'b00,					// don't set flags 
							 defaultInstrD[19:16],	// Read from Rn
							 defaultInstrD[19:16],				// Put result in Rn
							 4'b0000, 1'b0, numones, 2'b0	// numones << 2
							 };
			
		end

		bl:begin
			InstrMuxD = 1;
			uOpStallD = 0;
			prevRSRstate = 0;
			KeepVD = 0;
			LDMSTMforward = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b000}; // 5th bit of WA3, RA2D and RA1D
			nextState = ready;
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			KeepCD = 0;   
			noRotate = 0;  
			ldrstrRtype = 0;  
			multControlD = 2'b00;  
			uOpInstrD = {defaultInstrD[31:25], 1'b0, defaultInstrD[23:0]};//branch without link
        end

		blx:begin
			if(defaultInstrD[27:24]== 4'b1011) begin
				InstrMuxD = 1;
				uOpStallD = 0;
				prevRSRstate = 0;
				KeepVD = 0;
				LDMSTMforward = 0;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				nextState = ready;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD[31:6], 1'b0, defaultInstrD[4:0]};//branch without link
			end
	    end

		rsr:begin
			InstrMuxD = 1;
			uOpStallD = 0;
			prevRSRstate = 1;
			KeepVD = 0;
			LDMSTMforward = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b010}; // 5th bit of WA3, RA2D and RA1D
			nextState = ready;
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			KeepCD = 0;  
			noRotate = 0;  
			ldrstrRtype = 0;  
			multControlD = 2'b00;  
			uOpInstrD = {defaultInstrD[31:12], // keep the first 12 bits the same, Rd and Rn are included
						 8'b0, 4'b1111}; // No shifting, use source Rz
		end

		multiply:begin
			if(defaultInstrD[21] & ~defaultInstrD[23] & (defaultInstrD[7:4] == 4'b1001)) begin //accumulate short
				debugText = "accumulate short";
				InstrMuxD = 1;
				uOpStallD = 0;
				prevRSRstate = 1;
				KeepVD = 1;
				KeepCD = 1;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b001}; // 5th bit of WA3, RA2D and RA1D
				nextState = ready;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD[31:28], 7'b0000100, defaultInstrD[20], //condition code, ADD funct, flag update
							 4'b1111, defaultInstrD[19:16], //[19:16] is Rz
							 8'b00000000, defaultInstrD[15:12]};
			end
			else if((defaultInstrD[7:4] == 4'b1001) & (defaultInstrD[27:23] == 5'h01) & ~defaultInstrD[21]) begin //multiply long
				debugText = "multiply long";
				InstrMuxD = 1;
				uOpStallD = 0;
				KeepVD = 1;
				prevRSRstate = 0;
				multControlD = {defaultInstrD[22], 1'b1}; //unsigned/signed high
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of WA3, RA2D and RA1D
				nextState = ready;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				uOpInstrD = {defaultInstrD[31:16], 4'b0, defaultInstrD[11:0]}; 
			end
			else if(((defaultInstrD[7:4] == 4'b1001) & (defaultInstrD[27:23] == 5'h01) & defaultInstrD[21])) begin //accumulate long
				debugText = "accumulate long";
				InstrMuxD = 1;
				uOpStallD = 1;
				prevRSRstate = 1;
				KeepVD = 1;
				KeepCD = 1;
				multControlD = {defaultInstrD[22], 1'b0}; //unsigned/signed high. SD 5/6/2015 not 1, but probably ok for just add
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b001}; // 5th bit of WA3, RA2D and RA1D
				nextState = mlal1;
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				noRotate = 0;  
				ldrstrRtype = 0;  
				uOpInstrD = {defaultInstrD[31:28], 8'b00001000, //send an add instruction
						4'b1111, defaultInstrD[15:12], 8'b00000000, defaultInstrD[15:12]}; 
			end
			else begin
				debugText = "multiply else";
				nextState = ready;
				InstrMuxD = 0;
				prevRSRstate = 0;
				uOpStallD = 0;
				KeepVD = 1;
				regFileRz = {1'b0, // Control inital mux for RA1D
							3'b000}; // 5th bit of RA2D and RA1D
				LDMSTMforward = 0;
				Reg_usr_D = 0; 
				MicroOpCPSRrestoreD = 0;
				KeepCD = 0;  
				noRotate = 0;  
				ldrstrRtype = 0;  
				multControlD = 2'b00;  
				uOpInstrD = {defaultInstrD};
			end
		end

		mlal1:begin 
			debugText = "multiply long accum";
			InstrMuxD = 1;
			uOpStallD = 1;
			KeepVD = 1;
			KeepCD = 0;
			prevRSRstate = 0;
			multControlD = {defaultInstrD[22], 1'b1}; //unsigned/signed high
			regFileRz = {1'b1, // Control inital mux for RA1D
						3'b100}; // 5th bit of WA3, RA2D and RA1D
			nextState = mlal2;
			LDMSTMforward = 0;
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			noRotate = 0;  
			ldrstrRtype = 0;  
			uOpInstrD = {defaultInstrD[31:21], 1'b0, 4'b1111, 4'b0, defaultInstrD[11:0]}; 
		end

		mlal2:begin 
			InstrMuxD = 1;
			uOpStallD = 0;
			prevRSRstate = 1;
			KeepVD = 1;
			multControlD = {defaultInstrD[22], 1'b1}; //unsigned/signed high
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b001}; // 5th bit of WA3, RA2D and RA1D
			nextState = ready;
			LDMSTMforward = 0;
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			KeepCD = 0;   
			noRotate = 0;  
			ldrstrRtype = 0;  
			uOpInstrD = {defaultInstrD[31:28], 7'b0000100, defaultInstrD[20], //send an add instruction
					4'b1111, defaultInstrD[19:16], 8'b00000000, defaultInstrD[19:16]}; 
		end

		default: begin
			nextState = ready;
			InstrMuxD = 0;
			KeepVD = 0;
			LDMSTMforward = 0;
			prevRSRstate = 0;
			uOpStallD = 0;
			regFileRz = {1'b0, // Control inital mux for RA1D
						3'b000}; // 5th bit of RA2D and RA1D
			Reg_usr_D = 0; 
			MicroOpCPSRrestoreD = 0;
			KeepCD = 0;  
			noRotate = 0;  
			ldrstrRtype = 0;  
			multControlD = 2'b00;  
			uOpInstrD = {defaultInstrD};
		end
	endcase
endmodule
