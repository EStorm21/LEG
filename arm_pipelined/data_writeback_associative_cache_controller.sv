module data_writeback_associative_cache_controller 
  (input  logic clk, reset,
   input  logic Hit, IStall, Dirty, MemWriteM, MemtoRegM, BusReady, 
   input  logic [1:0] Counter, WordOffset,
   output logic RDSel, CWE, Stall, HWriteM, MemRE, BlockWE, ResetCounter);

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
      // If we have finished writing back four words, start reading from memory
      WRITEBACK: nextstate <= ( BusReady & (Counter == 3) )? MEMREAD : WRITEBACK;
      // If all four word have been fetched from memory and 
      MEMREAD:   nextstate <= ( BusReady & (Counter == 3) ) ? NEXTINSTR : MEMREAD;
      // If the instruction memory is stalling, then wait for a new instruction
      NEXTINSTR: nextstate <= IStall ? WAIT : READY;
      WAIT:      nextstate <= IStall ? WAIT : READY;
      default:   nextstate <= READY;
    endcase

  // output logic
  assign Stall  = (state == MEMREAD) | 
                  (state == WRITEBACK) | 
                  ( (state == READY) & (MemtoRegM | MemWriteM) & ~Hit );
  assign CWE    = ( (state == READY) & (MemWriteM & Hit) ) |
                  ( (state == MEMREAD) & BusReady );
  assign HWriteM = (state == WRITEBACK);
  assign MemRE  = (state == MEMREAD);
  assign RDSel  = ( (state == NEXTINSTR) & (WordOffset == 2'b11) );
  assign BlockWE = (state == MEMREAD) | ( (state == NEXTINSTR)  & 
                   (~MemWriteM || MemWriteM & ~Dirty) );
  assign ResetCounter = (state == READY) | (state == NEXTINSTR);

endmodule