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
              input  logic       MultStallD, MultStallE,
              output logic       StallE, StallM, FlushW, StallW,
              // For Micro-ops
              input logic        uOpStallD, LDMSTMforwardE,
              output logic       StalluOp, ExceptionSavePC,
              // For exceptions
              input logic        PrefetchAbort, DataAbort, IRQ, FIQ, UndefinedInstr, SWI, SWI_E, SWI_D, SWI_M, SWI_W,
              output logic [1:0] PCInSelect);
                
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
  
  assign StallD = ldrStallD | DStall | uOpStallD | IStall | MultStallD;
  assign StalluOp = ldrStallD | DStall | IStall | MultStallD;
  assign StallF = ldrStallD | PCWrPendingF | DStall | IStall | uOpStallD | MultStallD | (SWI_D | SWI_E | SWI_M);
  assign StallE = DStall | IStall;
  assign FlushW = DStall | IStall;
  assign StallW = DStall | IStall;
  assign StallM = DStall | IStall;
  assign FlushE = ldrStallD | BranchTakenE; 
  assign FlushD = PCWrPendingF | PCSrcW | BranchTakenE | IStall;

  assign ExceptionSavePC = SWI_E; 

  // exception handling
  always_comb begin
    if (PrefetchAbort) PCInSelect = 2'b00;
    else if (DataAbort) PCInSelect = 2'b10;
    else if (IRQ) PCInSelect = 2'b00;
    else if (FIQ) PCInSelect = 2'b00;
    else if (UndefinedInstr) PCInSelect = 2'b01;
    else if (SWI) PCInSelect = 2'b01;
    else PCInSelect = 2'b00;
  end
  
endmodule