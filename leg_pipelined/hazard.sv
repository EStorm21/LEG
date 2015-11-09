module hazard(input  logic       clk, reset,
              input  logic       Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_1D_E, Match_2D_E,
              input  logic       RegWriteM, RegWriteW,
              input  logic       BranchTakenE, MemtoRegE,
              input  logic       PCWrPendingF, PCSrcW, 
              output logic [1:0] ForwardAE, ForwardBE,
              output logic       StallF, StallD, 
              // Added DStall, StallE, StallM, and FlushW for memory
              output logic       FlushD, FlushE, IncrementE,
              input  logic       DStall, IStall,
              input  logic       CoProc_En,
              output logic       StallE, StallM, FlushM, FlushW, StallW,
              // For Micro-ops
              input logic        uOpStallD, LDMSTMforwardE,
              output logic       StalluOp, ExceptionSavePC,
              // For exceptions
              input logic        PrefetchAbortE, DataAbort, IRQ, FIQ, UndefinedInstrE,
              input logic        SWIE, RegtoCPSR, CPSRtoReg,
              input logic        RegtoCPSR_EMW, CPSRtoReg_EMW, CoProc_En_EMW,
              output logic       PCInSelect);
                
  // forwarding logic
  always_comb 
  begin
    if ((Match_1E_M & RegWriteM) | LDMSTMforwardE)  // Fwds data from Memory Stage to Execute Stage (1 stage back)
      ForwardAE = 2'b10;
    else if (Match_1E_W & RegWriteW) 
      ForwardAE = 2'b01;
    else                             
      ForwardAE = 2'b00;
 
    if ((Match_2E_M & RegWriteM)) // Fwds data from Memory Stage to Execute Stage (1 stage back)
      ForwardBE = 2'b10;
    else if (Match_2E_W & RegWriteW) 
      ForwardBE = 2'b01;
    else                             
      ForwardBE = 2'b00;
  end

  assign IncrementE = LDMSTMforwardE;
  
  // stalls and flushes
  // Load RAW
  //   when an instruction reads a register loaded by the previous,
  //   stall in the decode stage until it is ready
  // Branch hazard
  //   When a branch is taken, flush the incorrectly fetched instrs
  //   from decode and execute stages
  // PC Write Hazard
  //   When the PC might be written, stall all following instructions
  //   by stalling the fetch and flushing the decode stage
  // when a stage stalls, stall all previous and flush next

  // flopr #(1)  MultOutputSrc(clk, reset, MultStallE, WriteMultLoE);
  // assign WriteMultLoD = MultStallD;
  assign Match_12D_E = Match_1D_E | Match_2D_E;

  assign ldrStallD = Match_12D_E & MemtoRegE;
  
  assign StallD = ldrStallD | DStall | uOpStallD | IStall;
  assign StalluOp = ldrStallD | DStall | IStall ;
  assign StallF = ldrStallD | PCWrPendingF | DStall | IStall | uOpStallD | RegtoCPSR | CPSRtoReg | CoProc_En);
  assign StallE = DStall | IStall;
  assign FlushW = DStall | IStall;
  assign StallW = DStall | IStall;
  assign StallM = DStall | IStall;
  assign FlushM = ExceptionFlushM
  // FlushD cannot propagate bad stuff to E stage because writeback is killed in this case.
  assign FlushE = ldrStallD | BranchTakenE; 
  assign FlushD = PCWrPendingF | PCSrcW | BranchTakenE | IStall | RegtoCPSR | CPSRtoReg | CoProc_En;




  // TODO: Add stalls for CP15 instructions (i.e. enabling I$)
  // TODO: Add stalls for self modifying code
  
endmodule