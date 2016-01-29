/*
 * track undefined instructions through the datapath. mmu asserts 
 * that they should abort, but we don't need to abort if the instruction
 * is stopped before the execute stage. 
 *
 * nothing to worry about if cancelled, need to abort if executing.
 */
 // SD 11/8/2015: Rewrite this to use flopenrc
module instr_tracker(input logic clk, instr_abort, StallD, FlushD, FlushE,
                    output logic InstrCancelled, InstrExecuting);

  logic AbortD;
  flopenr #(1) abortflop(clk, FlushD | InstrCancelled, ~StallD, instr_abort, AbortD);
  flopr   #(1) exeflop(clk, FlushE, AbortD, InstrExecuting);

  assign InstrCancelled = FlushD | FlushE;

endmodule