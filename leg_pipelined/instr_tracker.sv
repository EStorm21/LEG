/*
 * track undefined instructions through the datapath. mmu asserts 
 * that they should abort, but we don't need to abort if the instruction
 * is stopped before the execute stage. 
 *
 * nothing to worry about if cancelled, need to abort if executing.
 */
module instr_tracker(input logic clk, instr_abort, StallD, FlushD, FlushE,
                    output logic InstrCancelled, InstrExecuting);

  logic AbortD;
  always_ff @(posedge clk)
    if(FlushD | InstrCancelled)
      AbortD <= 0;
    else if(~StallD)
      AbortD <= instr_abort;

  always_ff @(posedge clk)
    if(FlushE)
      InstrExecuting <= 0;
    else
      InstrExecuting <= AbortD;

  assign InstrCancelled = FlushD | FlushE;

endmodule