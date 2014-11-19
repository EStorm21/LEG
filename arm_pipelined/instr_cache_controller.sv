// Cache controller works according to schematic
module instr_cache_controller (input  logic clk, reset,
                         input  logic Hit,
                         input  logic BusReady,
                         output logic CWE,
                         output logic IStall, RDSel);
  typedef enum logic [1:0] {READY, MEMREAD, NEXTINSTR} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:      if ( Hit ) begin
                    nextstate <= READY;
                  end
                  else begin
                    nextstate <= MEMREAD;
                  end
      NEXTINSTR:                      nextstate <= READY;
      MEMREAD:                        nextstate <= BusReady ? NEXTINSTR : MEMREAD;
      default: nextstate <= READY;
    endcase

  // output logic
  assign IStall =  (state == MEMREAD) | ((state == READY) & ~Hit);
  assign CWE   = (state == NEXTINSTR);
  assign RDSel = (state == NEXTINSTR);
  assign MemRE = (state == MEMREAD);

endmodule