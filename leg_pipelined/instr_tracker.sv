/*
 * track undefined instructions through the datapath. mmu asserts 
 * that they should abort, but we don't need to abort if the instruction
 * is stopped before the execute stage. 
 *
 * nothing to worry about if cancelled, need to abort if executing.
 */
module instr_tracker(input logic clk, instr_abort, stallD, flushD, flushE,
                    output logic InstrCancelled, InstrExecuting);

  logic abortD;
  always_ff @(posedge clk)
    if(flushD)
      abortD <= 0;
    else if(~stallD)
      abortD <= instr_abort;
    else if(InstrCancelled)  // in case cancelled at start of execute stage. Then don't want to propagate old signal from deocde.
      abortD <= 0;

  always_ff @(posedge clk)
    if(flushE)
      InstrExecuting <= 0;
    else
      InstrExecuting <= abortD;

  assign InstrCancelled = flushD | flushE;

endmodule