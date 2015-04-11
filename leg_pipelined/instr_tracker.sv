/*
 * track undefined instructions through the datapath. mmu asserts 
 * that they should abort, but we don't need to abort if the instruction
 * is stopped before the execute stage. 
 *
 * nothing to worry about if cancelled, need to abort if executing.
 */
module instr_tracker(input logic instr_abort, stallD, flushD, flushE,
                    output logic cancelled, executing);

  logic abortD, executing;
  always_ff @(posedge clk)
    abortD <= instr_abort & (~stallD & ~flushD);

  always_ff @(posedge clk)
    executing <= (abortD & ~flushE);

  assign cancelled = flushD | flushE;

endmodule