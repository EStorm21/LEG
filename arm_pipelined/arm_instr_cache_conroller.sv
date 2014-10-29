// Cache controller works according to schematic
module instr_cache_controller (input  logic clk,
                         // input  logic reset,
                         input  logic hit,
                         input  logic validData,
                         output logic MemRE);
  typedef enum logic [1:0] {CACHEREAD, MEMREAD, CACHEWRITE} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk) //, posedge reset)
    // if (reset) state <= CACHEREAD;
    state <= nextstate;

  // next state logic
  always_comb
    case (state)
      CACHEREAD: if (hit)         nextstate <= CACHEREAD;
                 else             nextstate <= MEMREAD;
      MEMREAD:   if (~validData)  nextstate <= MEMREAD;
                 else             nextstate <= CACHEWRITE;
      CACHEWRITE:if (~hit)        nextstate <= CACHEWRITE;
                 else             nextstate <= CACHEREAD;
      default: nextstate <= CACHEREAD;
    endcase

  // output logic
  assign MemRE = (state == MEMREAD);

endmodule