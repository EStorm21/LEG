module data_writeback_associative_cache_controller 
  #(parameter lines, parameter blocksize, parameter tagbits = 14)
  (input  logic clk, reset, enable, W1V, W2V, CurrLRU, W1D, W2D, clean,
   input  logic IStall, MemWriteM, MemtoRegM, BusReady, 
   input  logic [1:0] WordOffset,
   input  logic [3:0] ByteMask,
   input  logic [31:0] A,
   input  logic [tagbits-1:0] W1Tag, W2Tag, Tag, 
   output logic CWE, Stall, HWriteM, HRequestM, BlockWE, ResetCounter,
   output logic W1WE, W2WE, W1EN, UseWD, UseCacheA, DirtyIn, WaySel, RDSel,
   output logic cleanCurr,
   output logic [1:0] CacheRDSel, 
   output logic [3:0] ActiveByteMask, WDSel,
   output logic [tagbits-1:0] CachedTag,
   output logic [$clog2(lines)-1:0] BlockNum,
   output logic [$clog2(blocksize)-1:0] NewWordOffset);

  // Writeback cache states
  typedef enum logic[3:0] {READY, MEMREAD, WRITEBACK, DWRITE, NEXTINSTR, 
                           FLUSH, WAIT, DISABLED, WRITEBYTES} statetype;
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
  logic [$clog2(lines):0] FlushA; // Create block address to increment
  logic incFlush;
  // Create the flush counter (count through all blocks and each way per block)
  countEn #($clog2(lines)+1) fc(.clk(clk), .reset(reset), .en(incFlush), .q(FlushA));
  // Create a mux for the way select signal
  mux2 #(1) waySelMux(WaySelMid, W1D, clean, WaySel);

  //----------------ENABLING----------------------
  // Counter Disable Mux
  mux2 #(2) cenMux(WordOffset, CounterMid, 
                   (enable | (state == WRITEBACK)), Counter);
  // Word Access
  logic WordAccess;
  assign WordAccess = (ByteMask == 4'b1111);

  //------------HIT, DIRTY, VALID-----------------
  // Create Dirty Signal
  assign DirtyIn = enable & MemWriteM & ~clean;

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
  logic TagSel;
  mux2 #(1) TagSelMux(W1EN, W1D, clean, TagSel);
  mux2 #(tagbits) CachedTagMux(W2Tag, W1Tag, TagSel, CachedTag);

  // Dirty Mux
  logic Dirty;
  mux2 #(1) DirtyMux(W2D, W1D, W1EN, Dirty);

  // Select Data source and Byte Mask for the data cache
  assign UseWD = ~BlockWE | ( BlockWE & MemWriteM & (Counter == WordOffset) );
  assign WDSel = ~(ByteMask ^ {4{UseWD}});
  mux2 #(4)  MaskMux(4'b1111, ByteMask, ( UseWD & ~(state == MEMREAD) ), 
    ActiveByteMask);

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:    if (clean) begin
                  nextstate <= FLUSH;
                end
                else if ( Hit | (~MemWriteM & ~MemtoRegM) ) begin
                  nextstate <= READY;
                end
                else if( MemWriteM & ~enable & WordAccess) begin
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
      WRITEBACK: if (clean & (Counter == 3) ) begin
                  nextstate <= FLUSH;
                 end else begin
                  nextstate <= ( BusReady &  (Counter == 3) ) ? MEMREAD : WRITEBACK;
                end
      // If all four words have been fetched from memory, then move on.
      // If the cache is disabled, then only read one line. (line isn't valid)
      // MEMREAD:   nextstate <= ( BusReady & ( (Counter == 3) | ~enable) ) ? NEXTINSTR : MEMREAD;
      MEMREAD:   if( BusReady & ( (Counter == 3) | (~enable & ~WordAccess) ) )
                 begin 
                  nextstate <= WRITEBYTES;
                 end else if( BusReady & ( (Counter == 3) | (~enable & WordAccess) ) )
                 begin 
                  nextstate <= NEXTINSTR;
                 end else begin 
                  nextstate <= MEMREAD;
                 end
      // If the instruction memory is stalling, then wait for a new instruction
      NEXTINSTR: nextstate <= IStall ? WAIT : READY;
      WAIT:      nextstate <= IStall ? WAIT : READY;
      DWRITE:    nextstate <= BusReady ? NEXTINSTR : DWRITE;
      FLUSH:    if ( W1D | W2D ) begin
                  nextstate <= WRITEBACK;
                end else if( FlushA[$clog2(lines):1] == (lines) ) begin
                  nextstate <= READY;
                end else begin
                  nextstate <= FLUSH;
                end
      WRITEBYTES: nextstate <= BusReady ? NEXTINSTR : WRITEBYTES;
      default:   nextstate <= READY;
    endcase

  // output logic
  assign Stall  = (state == MEMREAD) | 
                  (state == WRITEBACK) | 
                  (state == DWRITE) |
                  (state == FLUSH) |
                  (state == WRITEBYTES) |
                  ( (state == READY) & (MemtoRegM | MemWriteM) & ~Hit );
  assign CWE    = ( (state == READY) & ( (MemWriteM & Hit) |  (BusReady & ~Hit & ~Dirty) ) ) |
                  ( (state == MEMREAD) & BusReady );
  assign HWriteM = (state == WRITEBACK) | 
                   (state == DWRITE) |
                   (state == WRITEBYTES) | 
                   ((state == READY) & ~Hit & Dirty );
  assign HRequestM  = Stall;

  assign RDSel = (state == DWRITE); // Choose write value from bus

  assign BlockWE = (state == MEMREAD) | ( (state == NEXTINSTR)  & 
                   (~MemWriteM || MemWriteM & ~Dirty) ) |
                   ( (state == READY) & ~Hit & ~Dirty );
  assign ResetCounter = ((state == READY) & Hit) | (state == NEXTINSTR) | 
                        (state == FLUSH);
  // -------------Flush controls------------
  assign incFlush = (state == FLUSH) & ~(W1D & W1V) & ~(W2D & W2V);
  assign cleanCurr = (state == WRITEBACK) & BusReady;

  // Create the block offset for the cache
  mux2 #($clog2(blocksize)) WordOffsetMux(Counter, WordOffset, ResetCounter, 
                                          NewWordOffset);
  mux2 #(8) BlockNumMux(A[$clog2(lines)-1 + 4:4], 
                   FlushA[$clog2(lines)-1:0], clean, BlockNum);
endmodule