// Cache controller works according to schematic
module arm_instr_cache_controller (input  logic clk, reset,
                         input  logic hit,
                         input  logic Valid,
                         output logic cwe,
                         output logic Stall,
                         output logic MemRE);
  typedef enum logic [1:0] {READY, MEMREAD, CACHEWRITE, NEXTINSTR} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:      if ( hit ) begin
                    nextstate <= READY;
                  end
                  else begin
                    nextstate <= MEMREAD;
                  end
      CACHEWRITE:                     nextstate <= NEXTINSTR;
      NEXTINSTR:                      nextstate <= READY;
      MEMREAD:                        nextstate <= Valid ? CACHEWRITE : MEMREAD;
      default: nextstate <= READY;
    endcase

  // output logic
  assign Stall       = (state == CACHEWRITE) | (state == MEMREAD) | 
                       ((state == READY) & ~hit);
  assign cwe         = (state == CACHEWRITE);
  assign MemRE       = (state == MEMREAD);

endmodule