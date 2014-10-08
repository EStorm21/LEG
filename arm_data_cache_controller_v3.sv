// Cache controller works according to schematic
module data_cache_controller (input  logic clk, reset,
                         input  logic hit,
                         input  logic ds,
                         input  logic we,
                         input  logic re,
                         input  logic valid,
                         output logic cwe,
                         output logic stall,
                         output logic memwrite,
                         output logic memread);
  typedef enum logic [2:0] {READY, MEMREAD, MEMWRITE, CACHEWRITE, MOVEINSTR} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY: if ( (hit & ~we) |(~we & ~re) ) 
	                                    begin nextstate <= READY; end
                 else if((~hit & ~we) & re) 
                                      begin nextstate <= MEMREAD;   end
                 else                       nextstate <= MEMWRITE;
      CACHEWRITE:                     nextstate <= MOVEINSTR;
      MOVEINSTR:                      nextstate <= READY;
      MEMREAD:                        nextstate <= valid ? CACHEWRITE : MEMREAD;
      MEMWRITE:                       nextstate <= valid ? CACHEWRITE : MEMWRITE;
      default: nextstate <= READY;
    endcase

  // output logic
  // assign stall       = (state == MEMREAD) | (state == MEMWRITE) |
  //                      ((state == READY) & ( (~hit & re) | we) );
  assign stall       = (state== MEMREAD) | (state == MEMWRITE) |
                       (state == CACHEWRITE) | ((state == READY) & ( (~hit & re) | we) );
  assign cwe         = (state == CACHEWRITE);
  assign memwrite    = (state == MEMWRITE);
  assign memread     = (state == MEMREAD);
  assign ds          = (state == CACHEWRITE);

endmodule