// Cache controller works according to schematic
module data_cache_controller (input  logic clk,
                         input  logic hit,
                         input  logic ds,
                         input  logic we,
                         input  logic re,
                         output logic stall,
                         output logic memwrite);
  typedef enum logic [1:0] {CACHEREAD, MEMREAD, MEMWRITE} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk) //, posedge reset)
    // if (reset) state <= CACHEREAD;
    state <= nextstate;

  // next state logic
  always_comb
    case (state)
      CACHEREAD: if ( (hit & ~we) |(~we & ~re) ) 
	                                    begin nextstate <= CACHEREAD; end
                 else if((~hit & ~we) & re) 
                                      begin nextstate <= MEMREAD;   end
                 else                      nextstate <= MEMWRITE;
      MEMREAD:                        nextstate <= CACHEREAD;
      MEMWRITE:                       nextstate <= CACHEREAD;
      default: nextstate <= CACHEREAD;
    endcase

  // output logic
  assign stall       = (state == MEMREAD) | (state == MEMWRITE) |
                       ((state == CACHEREAD) & ( (~hit & re) | we) );
  assign cachewrite  = (state == MEMREAD) | (state == MEMWRITE);
  assign memwrite    = (state == MEMWRITE);
  assign ds          = (state == MEMREAD);

endmodule