module data_writeback_associative_cache_controller 
  #(parameter blocksize, parameter tagbits = 14)
  (input  logic clk, reset, enable, W1V, W2V, CurrLRU, W1D, W2D,
   input  logic IStall, MemWriteM, MemtoRegM, BusReady, 
   input  logic [1:0] WordOffset,
   input  logic [3:0] ByteMask,
   input  logic [tagbits-1:0] W1Tag, W2Tag, Tag, CachedTag,
   output logic CWE, Stall, HWriteM, HRequestM, BlockWE, ResetCounter,
   output logic W1WE, W2WE, W1EN, UseWD, UseCacheA, W1Hit, DirtyIn,
   output logic [1:0] Counter, CacheRDSel, RDSel,
   output logic [3:0] ActiveByteMask,
   output logic [$clog2(blocksize)-1:0] NewWordOffset);

  // Control Signals
  // Create Counter for sequential bus access
  logic [1:0] CounterMid;
  always_ff @(posedge clk, posedge reset)
    if(reset | ResetCounter) begin
        CounterMid <= 0;
    end else begin
        if (BusReady) begin
            CounterMid <= CounterMid + 1;
        end else begin
            CounterMid <= CounterMid;
        end
    end

  // Counter Disable Mux
  mux2 #(2) cenMux(WordOffset, CounterMid, enable, Counter);

  // Create Dirty Signal
  assign DirtyIn = enable & MemWriteM;

  // Create Hit signal 
  logic Hit, W2Hit;
  assign W1Hit = (W1V & (Tag == W1Tag));
  assign W2Hit = (W2V & (Tag == W2Tag));
  assign Hit = (W1Hit | W2Hit) & enable;
  
  // CacheIn Logic
  assign CacheRDSel = HWriteM ? Counter : WordOffset;

  // Cached address selection
  assign UseCacheA = enable & HWriteM;

  // Write-to logic
  // IN: W1V, W2V, LRU 
  // OUT: W1EN, W2EN
  logic writeW1, W2EN;
  always_comb
    begin
      writeW1 = ( (~W1V & W2V) | CurrLRU ) & ~W2Hit;
      W1EN = writeW1 | W1Hit | ~enable;
      W2EN = ~W1EN;
    end

  // Set way write enable if the way is selected and writing to the cache
  assign W1WE = W1EN & CWE;
  assign W2WE = W2EN & CWE;

  // Create Cached Tag
  mux2 #(tagbits) CachedTagMux(W2Tag, W1Tag, W1EN, CachedTag);

  // Dirty Mux
  logic Dirty;
  mux2 #(1) DirtyMux(W2D, W1D, W1EN, Dirty);

  // Select Data source and Byte Mask for the data cache
  assign UseWD = ~BlockWE | ( BlockWE & MemWriteM & (Counter == WordOffset) );
  mux2 #(4)  MaskMux(4'b1111, ByteMask, UseWD, ActiveByteMask);

  typedef enum logic[2:0] {READY, MEMREAD, WRITEBACK, WRITE, NEXTINSTR, WAIT, DISABLED} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:    if ( Hit | (~MemWriteM & ~MemtoRegM) ) begin
                  nextstate <= READY;
                end
                else if( MemWriteM & ~enable) begin
                  nextstate <= WRITE;
                end
                else if( ~Dirty ) begin
                  nextstate <= MEMREAD;
                end
                else begin
                  nextstate <= WRITEBACK;
                end
                
      // If we have finished writing back four words, start reading from memory
      // If the cache is disabled, then only write one line. (line isn't valid)
      WRITEBACK: nextstate <= ( BusReady & (Counter == 3) ) |
                              ( BusReady & ~enable )? MEMREAD : WRITEBACK;
      // If all four words have been fetched from memory, then move on.
      // If the cache is disabled, then only read one line. (line isn't valid)
      MEMREAD:   nextstate <= ( BusReady & (Counter == 3) ) |
                              ( BusReady & ~enable )? NEXTINSTR : MEMREAD;
      // If the instruction memory is stalling, then wait for a new instruction
      NEXTINSTR: nextstate <= IStall ? WAIT : READY;
      WAIT:      nextstate <= IStall ? WAIT : READY;
      WRITE:     nextstate <= BusReady ? NEXTINSTR : WRITE;
      default:   nextstate <= READY;
    endcase

  // output logic
  assign Stall  = (state == MEMREAD) | 
                  (state == WRITEBACK) | 
                  (state == WRITE) |
                  ( (state == READY) & (MemtoRegM | MemWriteM) & ~Hit );
  assign CWE    = ( (state == READY) & ( (MemWriteM & Hit) |  (BusReady & ~Hit & ~Dirty) ) ) |
                  ( (state == MEMREAD) & BusReady );
  assign HWriteM = (state == WRITEBACK) | (state == WRITE) | 
                   ((state == READY) & ~Hit & Dirty & enable);
  assign HRequestM  = Stall;
  assign RDSel[0] = (state == NEXTINSTR) & (WordOffset == 2'b11) & enable | 
                    // (state == NEXTINSTR) & ~enable |
                    (state == WRITE);
  assign RDSel[1] = (state == WRITE);

  assign BlockWE = (state == MEMREAD) | ( (state == NEXTINSTR)  & 
                   (~MemWriteM || MemWriteM & ~Dirty) ) |
                   ( (state == READY) & ~Hit & ~Dirty );
  assign ResetCounter = ((state == READY) & Hit) | (state == NEXTINSTR) ;

  // Create the block offset for the cache
  mux2 #($clog2(blocksize)) WordOffsetMux(Counter, WordOffset, ResetCounter, 
                                          NewWordOffset);
endmodule