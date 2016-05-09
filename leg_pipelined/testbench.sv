/*
   LEG Processor for Education
   Copyright (C) 2016  Max Waugaman

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

module testbench();

/***** Brief Description *******
 * testbench instantiates the leg processor and includes profiling 
 * and debugging print statements. Comment out define's to disable
 * the corresponding print statements. 
 ******************************/

  logic        clk;   // Global clock
  logic        reset; // Active high reset

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
  
  // instantiate the processor
  top dut(clk, reset, WriteData, DataAdr, MemWrite); 

  // initialize test
  initial
    begin
      reset <= 1; # 222; reset <= 0;
    end

  // generate clock to sequence tests
  always
    begin
      clk <= 1; # 5; clk <= 0; # 5;
    end

  //----------------------------- BEGIN DEBUG  ------------------------
  // `define SDEBUG
  // `define TLBDBG 0
  // `define ENDBGG 1
  // `define MEMDEBUG  1
  //`define RESETDEBUG 1
  // `define CACHEDBG 1
  // `define CP15DBG 1

  // Debug Reset
  `ifdef RESETDEBUG
  always @(posedge clk)
    if(reset) begin
      $display("HRequestF = %h @ %d", dut.ahb_arb.HRequestF, $time);
      $display("   HReady = %h @ %d", dut.ahb_arb.HReady, $time);
      $display(" HRequest = %h @ %d", dut.ahb_arb.HRequest, $time);
      $display("       re = %h @ %d", dut.ahb.mem.m.re, $time);
      $display("       we = %h @ %d", dut.ahb.mem.m.we, $time);
      $display(" HREQUEST = %h @ %d", dut.ahb.HREQUEST, $time);
    end
  `endif
  
  // MEMORY DEBUGGING

  `ifdef MEMDEBUG

  // Writeback cache states
  typedef enum logic[3:0] {READY, MEMREAD, LASTREAD, WRITEBACK, LASTWRITEBACK,
                           NEXTINSTR, FLUSH, WAIT, DWRITE} statetype;
  statetype state, nextstate;
  
  // logic [31:0] watchdata[$] = {32'hcfffcf10};
  // logic [31:0] watchmem [1] = {32'hcfffcee8};
  logic [31:0] watchdata[$] = {32'h00000001}; 
  logic [31:0] watchmem [1] = {32'hc0584004}; 
  logic [29:0] watchmemword [$size(watchmem)];
  logic [5:0] watchset [$size(watchmem)];
  always_comb
  begin
    for (int i = 0; i < $size(watchmem); i++) begin
      watchmemword[i] = watchmem[i][31:2];
      watchset[i] = watchmem[i][9:4];
    end
  end

  always @(negedge clk) begin

    // dmem
    if(dut.ahb.mem.m.a[31:2] inside {watchmemword} |
       dut.ahb.mem.rd inside {watchdata} |
       dut.ahb.mem.wd inside {watchdata}
       ) begin
      if(dut.ahb.mem.m.we) begin
             $display("Writing %h to addr %h at PCM = %h, HSIZE: %h time %d", dut.ahb.mem.m.wd, 
              dut.ahb.mem.m.a, dut.leg.dp.PCM, dut.ahb.mem.m.HSIZE, $time);
      end else begin
             $display("Reading %h from addr %h at PCM = %h, HSIZE: %h time %d", dut.ahb.mem.m.rd, 
              dut.ahb.mem.m.a, dut.leg.dp.PCM, dut.ahb.mem.m.HSIZE, $time);
      end
    end

    // D$ Set
    if(dut.data_cache.ANew[9:4] inside {watchset}) begin

      // if(dut.data_cache.dcc.CWE) begin
        $display("D$ W1E:%b W2E:%b AN:%h CWD:%h 1RD:%h 2RD:%h W1T:%h W2T:%h W1D:%b W2D:%b set:%h EN:%b at PCM:%h, time:%d S:%s", 
          dut.data_cache.dcc.W1WE, 
          dut.data_cache.dcc.W2WE, 
          dut.data_cache.ANew, 
          dut.data_cache.CacheWD, 
          dut.data_cache.W1RD, 
          dut.data_cache.W2RD, 
          dut.data_cache.W1Tag, 
          dut.data_cache.W2Tag, 
          dut.data_cache.W1D, 
          dut.data_cache.W2D, 
          dut.data_cache.A[9:4],
          // dut.data_cache.ByteMaskM,
          dut.data_cache.dcc.enable,
          dut.leg.dp.PCM, 
          $time,
          dut.data_cache.dcc.state);
    end

    // D$ Set
    if(dut.data_cache.W1RD inside {watchdata} |
       dut.data_cache.W2RD inside {watchdata}
      ) begin

      // if(dut.data_cache.dcc.CWE) begin
        $display("D$r W1E:%b W2E:%b AN:%h CWD:%h 1RD:%h 2RD:%h W1T:%h W2T:%h W1D:%b W2D:%b set:%h EN:%b at PCM:%h, time:%d S:%s", 
          dut.data_cache.dcc.W1WE, 
          dut.data_cache.dcc.W2WE, 
          dut.data_cache.ANew, 
          dut.data_cache.CacheWD, 
          dut.data_cache.W1RD, 
          dut.data_cache.W2RD, 
          dut.data_cache.W1Tag, 
          dut.data_cache.W2Tag, 
          dut.data_cache.W1D, 
          dut.data_cache.W2D, 
          dut.data_cache.A[9:4],
          // dut.data_cache.ByteMaskM,
          dut.data_cache.dcc.enable,
          dut.leg.dp.PCM, 
          $time,
          dut.data_cache.dcc.state);
    end
    // Log writeback events
    // if(dut.data_cache.dcc.state == READY && dut.data_cache.dcc.nextstate == WRITEBACK) begin
      
    // end
    if(dut.mmuInst.translation_walk_hardware.HRData[1:0] == 2'b00 & 
      dut.mmuInst.translation_walk_hardware.state == 4'h1) begin
      $display("Error: Default Case hit in FLD state in twh.sv @ %d", $time);
    end

  end
  `endif
  // END MEMORY DEBUGGING

  // BEGIN CLEAN AND FLUSH DEBUGGING
  `ifdef CACHEDBG 
  always @(negedge clk) begin
    if(dut.data_cache.dcc.Clean) begin
      $display("Cleaning D$ line DataAdrM:%h set:%h PCM:%h AddrOp:%b @ %d ps", dut.DataAdrM, dut.data_cache.A[9:4], dut.leg.dp.PCM, dut.data_cache.AddrOp, $time);
    end
    if(dut.data_cache.dcc.Inv) begin
      $display("Invalidating D$ line DataAdrM:%h PCM:%h AddrOp:%b @ %d ps", dut.DataAdrM, dut.leg.dp.PCM, dut.data_cache.AddrOp, $time);
    end
    if(dut.data_cache.dcc.InvAll) begin
      $display("Invalidating all D$ lines PCM:%h AddrOp:%b @ %d ps", dut.leg.dp.PCM, dut.data_cache.AddrOp, $time);
    end
    if(dut.instr_cache.icc.InvAll) begin
      $display("Invalidating all I$ lines PCM:%h @ %d ps", dut.leg.dp.PCM, $time);
    end
    if(dut.instr_cache.icc.Inv) begin
      $display("Invalidating I$ line --> Invalidating all I$", dut.leg.dp.PCM, $time);
    end
  end
  `endif
  // END CLEAN AND FLUSH DEBUGGING

  // BEGIN ENABLE DISABLE DEBUGGING
  `ifdef ENDBG 
  // Watch for cache and MMU Enable signals
  logic PrevDEn, PrevIEn, PrevMMUEn;
  always_ff @(posedge clk) begin
    if(reset) begin
      PrevDEn <= 0;
      PrevIEn <= 0;
      PrevMMUEn <= 0;
    end else begin
      PrevDEn <= dut.data_cache.dcc.enable;
      PrevIEn <= dut.instr_cache.icc.enable;
      PrevMMUEn <= dut.mmuInst.Enable;
    end
  end
  always @(negedge clk) begin
    if(~(dut.data_cache.dcc.enable == PrevDEn)) begin
      $display("Changed DEN from %b to %b @ %d ps", PrevDEn, dut.data_cache.dcc.enable, $time);
    end
    if(~(dut.instr_cache.icc.enable == PrevIEn)) begin
      $display("Changed IEN from %b to %b @ %d ps", PrevIEn, dut.instr_cache.icc.enable, $time);
    end
    if(~(dut.mmuInst.Enable == PrevMMUEn)) begin
      $display("Changed MMUEn from %b to %b @ %d ps", PrevMMUEn, dut.mmuInst.Enable, $time);
    end

  end
  `endif
  // END ENABLE DISABLE DEBUGGING

  // BEGIN ENABLE TLB DEBUGGING
  `ifdef TLBDBG 
  always @(negedge clk) begin
    if(dut.mmuInst.tlb_inst.we) begin
      $display("Writing to TLB: Trans %h to %h @ %d ps", dut.mmuInst.tlb_inst.VirtTag, dut.mmuInst.PhysTag,  $time);
    end
    // if(dut.mmuInst.translation_walk_hardware.HRData[1:0] == 2'b00 & 
    //   dut.mmuInst.translation_walk_hardware.state == 4'h1)
    //   $display("Error: Default Case hit in FLD state in twh.sv @ %d", $time);
  end
  `endif
  // END ENABLE TLB DEBUGGING

  // BEGIN CP15 DEBUGGING
  `ifdef CP15DBG
  always @(negedge clk) begin
    if(dut.cp15.we == 1'b1) begin
      $display("Writing to CP15: %h to %h op2:%d crm:%d PCM:%h @ %d ps", dut.cp15.wd, dut.cp15.addr, dut.cp15.opcode_2, dut.cp15.CRm, dut.leg.dp.PCM, $time);
    end
    if(dut.cp15.re == 1'b1) begin
      $display("Reading CP15: %h from %h op2:%d crm:%d PCM:%h @ %d ps", dut.cp15.rd, dut.cp15.addr, dut.cp15.opcode_2, dut.cp15.CRm, dut.leg.dp.PCM, $time);
    end   
  end
  `endif
  // END CP15 DEBUGGING

  // BEGIN SPECIFIC DEBUGGING
  `ifdef SDEBUG
  logic [31:0] dbgaddr = 32'hc0585f64;
  assign dbgset = dbgaddr[9:4];
  always @(negedge clk) begin
    if(dut.data_cache.dcmem.way1.set == dbgset) begin
      if(dut.data_cache.dcmem.way1.Clean) begin
      $display("Cleaning D$ Set%h DataAdrM:%h A:%h PCM:%h AddrOp:%b @ %d ps",
        dut.data_cache.dcmem.way1.set, dut.DataAdrM, dut.data_cache.dcmem.way1.A,
        dut.leg.dp.PCM, dut.data_cache.dcc.AddrOp, $time);
      end
      if(dut.data_cache.dcmem.way1.Inv) begin
      $display("Invalidating D$ Set%h, Way1 PCM:%h AddrOp:%b @ %d ps",
        dbgset, dut.leg.dp.PCM, dut.data_cache.dcc.AddrOp, $time);
      end
    end
  end
  `endif
  // END SPECIFIC DEBUGGING

  //-------------------------------------------- END DEBUG  ------------------------------------------

  //----------------------------- BEGIN PROFILING ---------------------------
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
    // ---------------------------- END PROFILING --------------------------
endmodule
