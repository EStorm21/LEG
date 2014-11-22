// Cache controller works according to schematic
module instr_cache_controller (input  logic clk, reset,
                         input  logic Hit,
                         input  logic BusReady,
                         input  logic [1:0] Counter, WordOffset,
                         output logic CWE,
                         output logic IStall, RDSel, ResetCounter, HRequestF);
  typedef enum logic [1:0] {READY, MEMREAD, NEXTINSTR} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:      nextstate <= Hit ? READY : MEMREAD;
      NEXTINSTR:  nextstate <= READY;
      MEMREAD:    nextstate <= ( BusReady & (Counter == 3) ) ? NEXTINSTR : MEMREAD;
      default: nextstate <= READY;
    endcase

  // output logic
  assign IStall =  (state == MEMREAD) | ((state == READY) & ~Hit);
  assign CWE    = ( (state == MEMREAD) & BusReady );
  assign RDSel  = ( (state == NEXTINSTR) & (WordOffset == 2'b11) );
  assign HRequestF  = (state == MEMREAD);
  assign ResetCounter = ( state == READY ) | ( state == NEXTINSTR );

endmodule