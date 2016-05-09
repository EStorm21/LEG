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

module top (
  input  logic        clk, reset,
  output logic [31:0] WriteDataM, DataAdrM,
  output logic        MemWriteM
);

/***** Brief Description *******
 * top level module for the LEG processor. Includes AHB-Lite Bus with 
 * peripherals, leg core, and memory system.
 ******************************/
  
  // ----- arbiter and ahb_lite -----
  logic        HWrite, HWriteM;
  logic        HRequest, HRequestM, HRequestF, HRequestT;
  logic        HReady, HReadyM, HReadyF, HReadyT;
  logic        FSel, MSel, TSel;
  logic [ 2:0] HSIZE, HSizeM;
  logic [31:0] HAddrT, HAddrM, HAddrF, HAddr;
  logic [31:0] HWData, HWDataM;
  logic [31:0] HRData; 

  // ----- tlb arbiter -----
  logic RequestPA, RequestPAM, RequestPAF;
  logic PAReady, PAReadyF, PAReadyM;

  // ----- data cache -----
  logic        Valid, DStall, END, CLEAND, CurrCBit;
  logic [31:0] ReadDataM;
  logic [3:0]  ByteMaskM;
  parameter dLines = 64;   // Number of lines in D$
  parameter dbsize = 4;    // Block size of the D$ in words (i.e. 4 words per line)

  // ----- instr cache -----
  logic        IStall, ENI;
  logic [31:0] PCF, InstrF;
  parameter iLines = 64;  // Number of lines in I$
  parameter ibsize = 4;   // Block size of the I$ in words

  // ----- Exception signals -----
  logic DataAbort, PrefetchAbort; // TODO: signals come from MMU
  logic IRQ, FIQ, IRQsync, FIQsync;

  // ----- MMU Signals -----
  parameter tbits = 22;
  logic        MMUExtInt, DataAccess, CPSR4, SBit, RBit;
  logic        SupMode, WordAccess;
  // logic        SupMode, WordAccess;
  logic [31:0] Dom;
  logic [6:0]  TLBCont, Cont;
  logic [17:0] TBase;
  logic [3:0]  CP15A;
  logic [tbits-1:0] PhysTag, dPhysTag, iPhysTag;

  // ----- CP15 signals for LEG -----
  logic        CoProc_WrEnM, CoProc_EnM, MMUWriteEn, MMUEn, AddrOp;
  logic [3:0]  CoProc_AddrM;
  logic [31:0] CPUWriteData, MMUWriteData;
  logic [2:0]  CoProc_Op2M;
  logic [3:0]  CoProc_CRmM;
  logic        StallCP, INVI, INVD, InvAll, CleanI, CleanD, TLBFlushD, TLBFlushI,
    StallD, FlushD, FlushE;
  logic [31:0] CP15rd_M, control, FullTBase, DummyTBase, controlDummy;

  synchronizer synchro(.*);
  // instantiate processor core
  leg #(dLines, dbsize) leg(
    .clk(clk), 
    .reset(reset), 
    .PCF(PCF),
    .InstrF(InstrF), 
    .MemWriteM(MemWriteM), 
    .ALUOutM(DataAdrM),
    // Added for memory
    .WriteDataM(WriteDataM), 
    .ReadDataM(ReadDataM), 
    .DStall(DStall), 
    .IStall(IStall), 
    .MemtoRegM(MemtoRegM), 
    .ByteMaskM(ByteMaskM),
    // Added for exceptions
    .PrefetchAbort(PrefetchAbort), 
    .DataAbort(DataAbort), 
    .IRQ(IRQsync), 
    .FIQ(FIQsync),
    // Added for Coprocessor
    .CoProc_WrEnM(CoProc_WrEnM), 
    .CoProc_EnM(CoProc_EnM), 
    .CoProc_AddrM(CoProc_AddrM), 
    .CoProc_CRmM(CoProc_CRmM), 
    .CoProc_Op2M(CoProc_Op2M),
    .CPUWriteData(CPUWriteData), 
    .CP15rd_M(CP15rd_M),
    .HighVec(control[13]),
    // Added for MMU
    .uOpStallD    (uOpStallD),
    .StallD(StallD), 
    .FlushD(FlushD), 
    .FlushE(FlushE));

  `define ECACHES 1
  initial
    begin
      `ifdef ECACHES
        $display("Caching is allowed");
      `else
	     $display("Caches are permanently disabled");
      `endif
    end

  `ifdef ECACHES
    assign ENI = control[12];
    assign END    = control[2];
    assign CLEAND = CleanD;
  `else
    assign ENI    = 1'b0;
    assign END    = 1'b0;
    assign CLEAND = 1'b0;
  `endif

  coprocessor15 cp15 (
    .clk         (clk         ),
    .reset       (reset       ),
    .CPUWriteEn  (CoProc_WrEnM),
    .CPUEn       (CoProc_EnM  ),
    .MMUWriteEn  (MMUWriteEn  ),
    .MMUEn       (MMUEn       ),
    .addr        (CoProc_AddrM),
    .CPUWriteData(WriteDataM  ),
    .MMUWriteData(MMUWriteData),
    .opcode_2    (CoProc_Op2M ),
    .CRm         (CoProc_CRmM ),
    .StallCP     (StallCP     ),
    .INVI        (INVI        ),
    .INVD        (INVD        ),
    .InvAll      (InvAll      ),
    .CleanI      (CleanI      ),
    .CleanD      (CleanD      ),
    .TLBFlushD   (TLBFlushD   ),
    .TLBFlushI   (TLBFlushI   ),
    .rd          (CP15rd_M    ),
    .control     (control     ),
    .AddrOp      (AddrOp      ),
    .tbase       (FullTBase   )
  );

  assign iPhysTag = PhysTag;
  assign dPhysTag = PhysTag;

  // I$
  instr_cache #(ibsize,iLines) instr_cache (
    .clk      (clk       ),
    .reset    (reset     ),
    .CP15en   (ENI       ),
    .uOpStallD(uOpStallD ),
    .Inv      (INVI      ),
    .InvAllMid(InvAll    ),
    .AddrOp   (AddrOp    ),
    .BusReady (HReadyF   ),
    .A        (PCF       ),
    .HRData   (HRData    ),
    .RD       (InstrF    ),
    .PhysTag  (iPhysTag  ),
    .PAReadyF (PAReadyF  ),
    .FSel     (FSel      ),
    .IStall   (IStall    ),
    .HAddrF   (HAddrF    ),
    .RequestPA(RequestPAF),
    .HRequestF(HRequestF )
  );



  // D$
  data_writeback_associative_cache #(dbsize,dLines) data_cache (
    .clk      (clk       ),
    .reset    (reset     ),
    .CP15en   (END       ),
    .CurrCBit (CurrCBit  ),
    .Inv      (INVD      ),
    .InvAllMid(InvAll    ),
    .AddrOp   (AddrOp    ),
    .Clean    (CLEAND    ),
    .PAReady  (PAReadyM  ),
    .MSel     (MSel      ),
    .RequestPA(RequestPAM),
    .MemWriteM(MemWriteM ),
    .MemtoRegM(MemtoRegM ),
    .BusReady (HReadyM   ),
    .IStall   (IStall    ),
    .PhysTag  (dPhysTag  ),
    .VirtA    (DataAdrM  ),
    .WD       (WriteDataM),
    .HRData   (HRData    ),
    .ByteMaskM(ByteMaskM ),
    .HWData   (HWDataM   ),
    .RD       (ReadDataM ),
    .HAddr    (HAddrM    ),
    .Stall    (DStall    ),
    .HRequestM(HRequestM ),
    .HSizeM   (HSizeM    ),
    .HWriteM  (HWriteM   )
  );

  ahb_arbiter_3way ahb_arb(.*);
  tlb_arbiter tarb(.*);

  // AHB-Lite interface and memory
  ahb_lite ahb (
    .HCLK    (clk     ),
    .HRESETn (~reset   ),
    .HREQUEST(HRequest),
    .HADDR   (HAddr   ),
    .HWRITE  (HWrite  ),
    .HSIZE   (HSIZE),
    .HWDATA  (HWData  ),
    .HRDATA  (HRData  ),
    .HREADY  (HReady  ),
    .irq     (IRQ     ),
    .fiq     (FIQ     )
  );

  // MMU
  mmu #(tbits) mmuInst (.*);

  assign WordAccess = 1'b0;   // Assuming byte or halfword accesses
  assign SupMode    = 1'b1;   // in supervisor mode
  assign DataAccess = 1'b1;   // Trying to access data memory, not instruction memory
  assign CPSR4      = 1'b1;
  assign TBase     = FullTBase[31:14];
  assign MMUExtInt = 1'b0;    // No MMU External Interrupt

endmodule
