// Cache controller works according to schematic
module data_associative_cache_controller (input  logic clk, reset,
                         input  logic hit,
                         input  logic IStall,
                         input  logic MemWriteM,
                         input  logic re,
                         input  logic Valid,
                         output logic RDSel,
                         output logic cwe,
                         output logic Stall,
                         output logic MemWE,
                         output logic MemRE);
  typedef enum logic [2:0] {READY, MEMREAD, MEMWRITE, NEXTINSTR, WAIT} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:      if ( (hit & ~MemWriteM) |(~MemWriteM & ~re) ) begin
                    nextstate <= READY;
                  end
                  else if((~hit & ~MemWriteM) & re) begin
                    nextstate <= MEMREAD;
                  end
                  else begin
                    nextstate <= MEMWRITE;
                  end
      // If the instruction memory is stalling, then wait for a new instruction
      NEXTINSTR:                      nextstate <= IStall ? WAIT : READY;
      MEMREAD:                        nextstate <= Valid ? NEXTINSTR : MEMREAD;
      MEMWRITE:                       nextstate <= Valid ? MEMREAD : MEMWRITE;
      WAIT:                           nextstate <= IStall ? WAIT : READY;
      default: nextstate <= READY;
    endcase

  // output logic
  assign Stall  = (state == MEMREAD) | 
                  (state == MEMWRITE) | ((state == READY) & ( (~hit & re) | MemWriteM) );
  assign cwe    = (state == NEXTINSTR);
  assign MemWE  = (state == MEMWRITE);
  assign MemRE  = (state == MEMREAD);
  assign RDSel  = (state == NEXTINSTR);

endmodule