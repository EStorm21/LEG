// arm_pipelined.v
// David_Harris@hmc.edu 4 January 2014
// Pipelined implementation of a subset of ARMv7

// Last updated 23 Sept 2014 2am

// 16 32-bit registers
// Data-processing instructions
//   ADD, SUB, AND, ORR
//   OP <Cond> <S> <Rd>, <Rn>, #immediate
//   OP <Cond> <S> <Rd>, <Rn>, <Rm>
//    Rd <- <Rn> OP <Rm>	    if (S) Update Status Flags
//    Rd <- <Rn> OP immediate	if (S) Update Status Flags
//   Instr[31:28] = Cond
//   Instr[27:26] = Op = 00
//   Instr[25:20] = Funct
//                  [25]:    1 for immediate, 0 for register
//                  [24:21]: 0100 (ADD) / 0010 (SUB) /
//                           0000 (AND) / 1100 (ORR)
//                  [20]:    S (1 = update CPSR status Flags)
//   Instr[19:16] = Rn
//   Instr[15:12] = Rd
//   Instr[11:8]  = 0000
//   Instr[7:0]   = immed_8  (for #immediate type) / 
//                  0000<Rm> (for register type)
//   
// Load/Store instructions
//   LDR, STR
//   OP <Rd>, <Rn>, #offset
//    LDR: Rd <- Mem[<Rn>+offset]
//    STR: Mem[<Rn>+offset] <- Rd
//   Instr[31:28] = Cond
//   Instr[27:26] = Op = 01 
//   Instr[25:20] = Funct
//                  [25]:    0 (A)
//                  [24:21]: 1100 (P/U/B/W)
//                  [20]:    L (1 for LDR, 0 for STR)
//   Instr[19:16] = Rn
//   Instr[15:12] = Rd
//   Instr[11:0]  = imm (zero extended)
//
// Branch instruction (PC <= PC + offset, PC holds 8 bytes past Branch Instr)
//   B
//   OP <target>
//    PC <- PC + 8 + imm << 2
//   Instr[31:28] = Cond
//   Instr[27:25] = Op = 10
//   Instr[25:24] = Funct
//                  [25]: 1 (Branch)
//                  [24]: 0 (link)
//   Instr[23:0]  = offset (sign extend, shift left 2)
//   Note: no Branch delay slot on ARM
//
// Other:
//   R15 reads as PC+8
//   Conditional Encoding
//    Cond  Meaning                       Flag
//    0000  Equal                         Z = 1
//    0001  Not Equal                     Z = 0
//    0010  Carry Set                     C = 1
//    0011  Carry Clear                   C = 0
//    0100  Minus                         N = 1
//    0101  Plus                          N = 0
//    0110  Overflow                      V = 1
//    0111  No Overflow                   V = 0
//    1000  Unsigned Higher               C = 1 & Z = 0
//    1001  Unsigned Lower/Same           C = 0 | Z = 1
//    1010  Signed greater/equal          N = V
//    1011  Signed less                   N != V
//    1100  Signed greater                N = V & Z = 0
//    1101  Signed less/equal             N != V | Z = 1
//    1110  Always                        any


module testbench();

  logic        clk;
  logic        reset;

  logic [31:0] WriteData, DataAdr;
  logic        MemWrite;

  real D;
  time simTime;
  real DMIPS;
  
  // profiling variables
  real totalCycles = 0;
  int stalledCycles = 0;
  int totalInstr = 0;
  logic [31:0] OldInstrE;
  real CPI;
  logic stall;
  logic wasStalled;
  logic flush;
  logic wasFlushed;
  logic wasFlushedE;
  logic wasFlushedD;
  logic flushD;
  logic flushE;
  int numStalls = 0;
  int branches = 0;
  int numFlush = 0;
  int wastedCycles = 0;

  // instantiate device to be tested (profiler also instantiates dut)
  top dut(clk, reset, WriteData, DataAdr, MemWrite); 
  
  // initialize test
  initial
    begin
      reset <= 1; # 220; reset <= 0;
    end

  // generate clock to sequence tests
  always
    begin
      clk <= 1; # 5; clk <= 0; # 5;
    end

  // check results
 /* always @(negedge clk)
    begin
      if(MemWrite) begin
        if(DataAdr === 100 & WriteData === 7) begin
          $display("Simulation succeeded");
          $stop;
        end else if (DataAdr !== 96) begin
          $display("Simulation failed");
          $stop;
        end
      end
    end*/
  
	// check results at the end of each clock cycle
    always @(negedge clk)
		begin
			// gather statistics from each cycle
      stall = dut.arm.h.StallE | dut.arm.h.StalluOp | dut.arm.h.StallF; // | dut.arm.h.StallD | dut.arm.h.StallF | dut.arm.h.StallM | dut.arm.h.StallW;
      flush = dut.arm.h.FlushD | dut.arm.h.FlushE;
      flushD = dut.arm.h.FlushD; 
      flushE = dut.arm.h.FlushE;



			// get the total number of cycles
      totalCycles = totalCycles + 1;
			
      // // check for cycles stalled
      // if(stall) begin
      //   stalledCycles = stalledCycles + 1;
      //   wastedCycles = wastedCycles + 1;
      // end
      // else begin
      //   wasStalled = 1'b0;
      // end

      // // count the number of stalls
      // if(stall && ~wasStalled) begin
      //   numStalls = numStalls + 1;
      //   wasStalled = 1'b1;
      // end

      // // if D or E is flushed, we waste a cycle
      // if(flushD && ~dut.arm.h.StallD) begin
      //   wastedCycles = wastedCycles + 1;
      // end
      // else begin
      //   wasFlushedD = 1'b0;
      // end
      
      // if(flushE && ~dut.arm.h.StallE) begin
      //   wastedCycles = wastedCycles + 1;
      // end
      // else begin
      //   wasFlushedE = 1'b0;
      // end
      
      // // count the number of flushes
      // if(flushE && ~wasFlushedE) begin
      //   numFlush = numFlush + 1;
      //   wasFlushedE = 1'b1;
      // end
      // if(flushD && ~wasFlushedD) begin
      //   numFlush = numFlush + 1;
      //   wasFlushedD = 1'b1;
      // end

      if(dut.arm.InstrE == 0 || dut.arm.h.StallE) begin
        wastedCycles = wastedCycles + 1;
      end
      
      // Check to see if the instruction has changed
			if((OldInstrE !== dut.arm.InstrE) && (dut.arm.InstrE !== 32'b0)) begin
        totalInstr = totalInstr + 1;
        // if(dut.arm.c.BranchE) begin
        //   branches = branches + 1;
        // end
      end
      // else if(dut.arm.h.ForwardAE | dut.arm.h.ForwardBE) begin
      //   totalInstr = totalInstr + 1;
      // end
      OldInstrE = dut.arm.InstrE;


			// check if dhrystone is done running
			if(dut.arm.dp.rf.r15 == 32'hb6eac824 | dut.arm.InstrE == 32'heafffffe) begin
				$display("Finished");
				D = 100.0;
				simTime = $time;
				// DMIPS = D/simTime*(10**12)/(10**5)/1757; //(Program Iterations)/(simulation time (ps))*(ps to s conv.)/(Clock Freq)/(Normalizing factor (DMIPS on a VAX 11/780))
				DMIPS = D*(10**7)/simTime/1757; //(Program Iterations)*(picoS to S conv. / Clock Freq)/(simulation time (picoS))/(Normalizing factor (DMIPS on a VAX 11/780))
				$display("D= %f, time= %f", D, simTime);
				$display("DMIPS: %f", DMIPS);
				
				// additional profiler data
        $display("----- Overall Stats -----");
        CPI = totalCycles/totalInstr;
        $display("CPI (approx.): %f", CPI);
				$display("Total Cycles: %f", totalCycles);
        $display("Cycles Wasted: %d", wastedCycles);
        $display("Instructions Executed: %d", totalInstr);
        $display("Mystery Cycles: %d", totalInstr + wastedCycles - totalCycles);
        $display("----- Branch Stats ----- ");
        $display("Num Branches: %d", branches);
        $display("Num Flushes:", numFlush);
        $display("Num Stalls: %d", numStalls);
        $display("Cycles Stalled: %d", stalledCycles);
				$stop();
			end
		end
endmodule