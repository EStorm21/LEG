// Cache controller works according to schematic
module data_cache_controller (input  logic clk, reset,
                         input  logic hit,
                         input  logic MemWriteM,
                         input  logic re,
                         input  logic valid,
                         output logic cwe,
                         output logic stall,
                         output logic memwrite,
                         output logic memread);
  typedef enum logic [2:0] {READY, MEMREAD, MEMWRITE, NEXTINSTR} statetype;
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
      NEXTINSTR:                      nextstate <= READY;
      MEMREAD:                        nextstate <= valid ? NEXTINSTR : MEMREAD;
      MEMWRITE:                       nextstate <= valid ? MEMREAD : MEMWRITE;
      default: nextstate <= READY;
    endcase

  // output logic
  assign stall       = (state == MEMREAD) | 
                       (state == MEMWRITE) | ((state == READY) & ( (~hit & re) | MemWriteM) );
  assign cwe         = (state == NEXTINSTR);
  assign memwrite    = (state == MEMWRITE);
  assign memread     = (state == MEMREAD);

endmodule