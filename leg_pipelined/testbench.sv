// leg_pipelined.v
// David_Harris@hmc.edu 4 January 2014
// Pipelined implementation of a subset of LEGv7

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
//   Note: no Branch delay slot on LEG
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



  // This line is used to turn on or off profiling
  `define PROFILE
  
  // profiling variables
  real totalCycles = 0;
  int totalInstr = 0;
  logic [31:0] OldInstrE;
  real CPI;
  real NouOpCPI;
  logic OldIStall = 0;
  logic OldDStall = 0;
  logic OldldrStallD = 0;
  logic OldPCSrcW = 0;
  int branches = 0;
  int branchesTaken = 0;
  int wastedCycles = 0;
  int uOpCycles = 0;
  int numIStall = 0;
  int numDStall = 0;
  int DStallCycles = 0;
  int DStallCounter = 0;
  int numldrStallD = 0;
  int numPCSrcW = 0;
  int flushECycles = 0;
  int flushDCycles = 0;
  int numPCWrPendingF = 0;
  
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
    
    `ifdef PROFILE
  
    always @(posedge dut.leg.h.PCWrPendingF)
    begin
      numPCWrPendingF = numPCWrPendingF + 1;
    end

	// check results at the end of each clock cycle
    always @(negedge clk)
		begin
			// get the total number of cycles
      totalCycles = totalCycles + 1;

      // count PCSrcW rising edges
      if(dut.leg.h.PCSrcW && ~OldPCSrcW) begin
        numPCSrcW = numPCSrcW + 1;
      end
      OldPCSrcW = dut.leg.h.PCSrcW;

			// count ldrStallD rising edges
      if(dut.leg.h.ldrStallD && ~OldldrStallD) begin
        numldrStallD = numldrStallD + 1;
      end
      OldldrStallD = dut.leg.h.ldrStallD;

      // count cycles spend on flushes
      if(dut.leg.h.FlushE) begin
        flushECycles = flushECycles + 1;
      end
      
      // count cycles spend on flushes
      if(dut.leg.h.FlushD) begin
        flushDCycles = flushDCycles + 1;
      end


      // count instr cache misses
      if(dut.IStall && ~OldIStall) begin
        numIStall = numIStall + 1;
      end
      OldIStall = dut.IStall;

      // count data cache misses
      if(dut.DStall && ~OldDStall) begin
        numDStall = numDStall + 1;
      end
      OldDStall = dut.DStall;

      // check for long DStall signals (more than 4 cycles)
      if(dut.DStall) begin
        DStallCycles = DStallCycles + 1;
        DStallCounter = DStallCounter + 1;

        // if(DStallCounter > 4) begin
        //   $display("***** Long DStall ***** at cycle %d", totalCycles);
        // end
      end
      else begin
        DStallCounter = 0;
      end

      // wasted cycles are when Execute is stalled or no instruction is present
      if(dut.leg.InstrE == 0 || dut.leg.h.StallE) begin
        wastedCycles = wastedCycles + 1;
      end

      // count the number of micro ops
      if(dut.leg.h.StallD && ~dut.leg.h.StalluOp) begin
        uOpCycles = uOpCycles + 1;
      end

      // check to see if the instruction has changed
			if((OldInstrE !== dut.leg.InstrE) && (dut.leg.InstrE !== 32'b0)) begin
        totalInstr = totalInstr + 1;
        
        // collect branch stats
        if(dut.leg.c.BranchE) begin
          branches = branches + 1;
        end
        if(dut.leg.c.BranchTakenE) begin
          branchesTaken = branchesTaken + 1;
        end
      end
      OldInstrE = dut.leg.InstrE;

			// check if dhrystone is done running
			if(dut.leg.dp.rf.r15 == 32'hb6eac824) begin
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
        $display("CPI: %f", CPI);
        NouOpCPI = totalCycles/(totalInstr - uOpCycles);
        $display("CPI (without uOps): %f", NouOpCPI);
        $display("Total Cycles: %f", totalCycles);
        $display("Cycles Wasted: %d", wastedCycles);
        $display("Instructions Executed: %d", totalInstr);
        $display("uOp Cycles: %d", uOpCycles);
        $display("----- Branch Stats ----- ");
        $display("Num Branches: %d", branches);
        $display("Branches Taken: %d", branchesTaken);
        $display("----- Memory Stats ----- ");
        $display("Instr Cache Misses: %d", numIStall);
        $display("Data Cache Misses: %d", numDStall);
        $display("Data Stall Cycles: %d", DStallCycles);
        $display("----- Additional Stats ----- ");
        $display("Number ldrStallD: %d", numldrStallD);
        $display("Number PCSrcW: %d", numPCSrcW);
        $display("Number PCWrPendingF: %d", numPCWrPendingF);
        $display("Cycles FlushD: %d", flushDCycles);
        $display("Cycles FlushE: %d", flushECycles);

        $display("");
				$stop();
			end
		end
    `endif
endmodule