// Cache controller works according to schematic
module data_writeback_associative_cache_controller 
  (input  logic clk, reset,
   input  logic Hit, IStall, Dirty, MemWriteM, MemtoRegM, BusReady, 
   output logic RDSel, CWE, Stall, MemWE, MemRE, BlockWE);

  typedef enum logic [2:0] {READY, MEMREAD, WRITEBACK, NEXTINSTR, WAIT} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:      if ( Hit | (~MemWriteM & ~MemtoRegM) ) begin
                    nextstate <= READY;
                  end
                  else if( ~Hit & ~Dirty ) begin
                    nextstate <= MEMREAD;
                  end
                  else begin
                    nextstate <= WRITEBACK;
                  end
      WRITEBACK: nextstate <= BusReady ? MEMREAD : WRITEBACK;
      MEMREAD:   nextstate <= BusReady ? NEXTINSTR : MEMREAD;
      // If the instruction memory is stalling, then wait for a new instruction
      NEXTINSTR: nextstate <= IStall ? WAIT : READY;
      WAIT:      nextstate <= IStall ? WAIT : READY;
      default:   nextstate <= READY;
    endcase

  // output logic
  assign Stall  = (state == MEMREAD) | 
                  (state == WRITEBACK) | 
                  ( (state == READY) & (MemtoRegM | MemWriteM) & ~Hit );
  assign CWE    = (state == NEXTINSTR) | ( (state == READY) & (MemWriteM & Hit) );
  assign MemWE  = (state == WRITEBACK);
  assign MemRE  = (state == MEMREAD);
  assign RDSel  = (state == NEXTINSTR);
  assign BlockWE = (state == NEXTINSTR) & (~MemWriteM || MemWriteM & ~Dirty);

endmodule