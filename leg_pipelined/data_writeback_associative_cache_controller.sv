module data_writeback_associative_cache_controller 
  #(parameter lines, parameter blocksize, parameter tagbits = 14)
  (input  logic clk, reset, enable, W1V, W2V, CurrLRU, W1D, W2D, clean,
   input  logic IStall, MemWriteM, MemtoRegM, BusReady, 
   input  logic [1:0] WordOffset,
   input  logic [3:0] ByteMask,
   input  logic [31:0] A,
   input  logic [tagbits-1:0] W1Tag, W2Tag, Tag, CachedTag,
   output logic CWE, Stall, HWriteM, HRequestM, BlockWE, ResetCounter,
   output logic W1WE, W2WE, W1EN, UseWD, UseCacheA, DirtyIn, WaySel, RDSel,
   output logic [1:0] CacheRDSel, 
   output logic [3:0] ActiveByteMask,
   output logic [$clog2(lines/blocksize)-1:0] BlockNum,
   output logic [$clog2(blocksize)-1:0] NewWordOffset);

  // Writeback cache states
  typedef enum logic[2:0] {READY, MEMREAD, WRITEBACK, DWRITE, NEXTINSTR, 
                           FLUSH, WAIT, DISABLED} statetype;
  statetype state, nextstate;

  // Control Signals
  // Create Counter for sequential bus access
  logic [1:0] CounterMid, Counter;
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

  // ----------------FLUSHING--------------------
  logic [$clog2(lines/4)-1:0] FlushA; // Create block address to increment
  logic cleanW2, incWay, incFlush;
  // Create the flush counter
  countEn #(lines/4) fc(.clk(clk), .reset(reset), .en(incFlush), .q(FlushA));
  // Create a one bit 
  countEn #(1) wc(.clk(clk), .reset(reset), .en(incWay), .q(cleanW2));
  // Create a mux for the way select signal
  mux2 #(1) waySelMux(cleanW2, WaySelMid, clean, WaySel);

  //----------------ENABLING----------------------
  // Counter Disable Mux
  mux2 #(2) cenMux(WordOffset, CounterMid, 
                   (enable | (state == WRITEBACK)), Counter);

  //------------HIT, DIRTY, VALID-----------------
  // Create Dirty Signal
  assign DirtyIn = enable & MemWriteM;

  // Create Hit signal 
  logic Hit, W2Hit, W1Hit;
  assign W1Hit = (W1V & (Tag == W1Tag));
  assign W2Hit = (W2V & (Tag == W2Tag));
  assign Hit = (W1Hit | W2Hit) & enable;
  
  // Select output from Way 1 or Way 2
  assign WaySelMid = enable & W1Hit | ~enable;
  
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
                  nextstate <= DWRITE;
                end
                else if( ~Dirty ) begin
                  nextstate <= MEMREAD;
                end
                else begin
                  nextstate <= WRITEBACK;
                end
                
      // If we have finished writing back four words, start reading from memory
      // If the cache is disabled, then only write one line. (line isn't valid)
      WRITEBACK: nextstate <= ( BusReady & (Counter == 3) ) ? MEMREAD : WRITEBACK;
      // If all four words have been fetched from memory, then move on.
      // If the cache is disabled, then only read one line. (line isn't valid)
      MEMREAD:   nextstate <= ( BusReady & ( (Counter == 3) | ~enable) ) ? NEXTINSTR : MEMREAD;
      // If the instruction memory is stalling, then wait for a new instruction
      NEXTINSTR: nextstate <= IStall ? WAIT : READY;
      WAIT:      nextstate <= IStall ? WAIT : READY;
      DWRITE:    nextstate <= BusReady ? NEXTINSTR : DWRITE;
      FLUSH:    if ( Dirty ) begin
                  nextstate <= WRITEBACK;
                end else if( FlushA == (lines/blocksize) ) begin
                  nextstate <= READY;
                end else begin
                  nextstate <= FLUSH;
                end
      default:   nextstate <= READY;
    endcase

  // output logic
  assign Stall  = (state == MEMREAD) | 
                  (state == WRITEBACK) | 
                  (state == DWRITE) |
                  (state == FLUSH) |
                  ( (state == READY) & (MemtoRegM | MemWriteM) & ~Hit );
  assign CWE    = ( (state == READY) & ( (MemWriteM & Hit) |  (BusReady & ~Hit & ~Dirty) ) ) |
                  ( (state == MEMREAD) & BusReady );
  assign HWriteM = (state == WRITEBACK) | (state == DWRITE) | 
                   ((state == READY) & ~Hit & Dirty );
  assign HRequestM  = Stall;
  // assign RDSel[0] = (state == NEXTINSTR) & (WordOffset == 2'b11) & enable | 
  assign RDSel = (state == DWRITE);

  assign BlockWE = (state == MEMREAD) | ( (state == NEXTINSTR)  & 
                   (~MemWriteM || MemWriteM & ~Dirty) ) |
                   ( (state == READY) & ~Hit & ~Dirty );
  assign ResetCounter = ((state == READY) & Hit) | (state == NEXTINSTR) ;
  // -------------Flush controls------------
  assign incFlush = (state == FLUSH) & cleanW2 & ~Dirty;
  assign incWay = (state == FLUSH) & ~Dirty;

  // Create the block offset for the cache
  mux2 #($clog2(blocksize)) WordOffsetMux(Counter, WordOffset, ResetCounter, 
                                          NewWordOffset);
  mux2 #(8) BlockNumMux(A[11:4], FlushA, clean, BlockNum);
endmodule