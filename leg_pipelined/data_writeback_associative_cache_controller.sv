module data_writeback_associative_cache_controller #(parameter blocksize, parameter tagbits = 14)
  (input  logic clk, reset, W1V, W2V, CurrLRU, W1D, W2D,
   input  logic IStall, MemWriteM, MemtoRegM, BusReady, 
   input  logic [1:0] WordOffset,
   input  logic [3:0] ByteMask,
   input  logic [tagbits-1:0] W1Tag, W2Tag, Tag, CachedTag,
   output logic RDSel, CWE, Stall, HWriteM, HRequestM, BlockWE, ResetCounter,
   output logic W1WE, W2WE, W1EN, UseWD, W1Hit,
   output logic [1:0] Counter, CacheRDSel,
   output logic [3:0] ActiveByteMask,
   output logic [$clog2(blocksize)-1:0] NewWordOffset);

  // Control Signals
  // Create Counter for sequential bus access
  always_ff @(posedge clk, posedge reset)
    if(reset | ResetCounter) begin
        Counter <= 0;
    end else begin
        if (BusReady) begin
            Counter <= Counter + 1;
        end else begin
            Counter <= Counter;
        end
    end

  // Create Hit signal 
  logic Hit, W2Hit;
  assign W1Hit = (W1V & (Tag == W1Tag));
  assign W2Hit = (W2V & (Tag == W2Tag));
  assign Hit = W1Hit | W2Hit;

  // CacheIn Logic
  assign CacheRDSel = HWriteM ? Counter : WordOffset;

  // Write-to logic
  // IN: W1V, W2V, LRU 
  // OUT: W1EN, W2EN
  logic writeW1, W2EN;
  always_comb
    begin
      writeW1 = ( (~W1V & W2V) | CurrLRU ) & ~W2Hit;
      W1EN = writeW1 | W1Hit;
      W2EN = ~W1EN;
    end

  // Set way write enable if the way is selected and writing to the cache
  assign W1WE = W1EN & CWE;
  assign W2WE = W2EN & CWE;

  // Create Cached Tag
  mux2 #(tagbits) CachedTagMux(W2Tag, W1Tag, W1EN, CachedTag);

  // Dirty Mux
  logic Dirty;
  assign Dirty = W1EN ? W1D : W2D;

  // Select Data source and Byte Mask for the data cache
  assign UseWD = ~BlockWE | ( BlockWE & MemWriteM & (Counter == WordOffset) );
  mux2 #(4)  MaskMux(4'b1111, ByteMask, UseWD, ActiveByteMask);

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
  assign CWE    = ( (state == READY) & ( (MemWriteM & Hit) |  (BusReady & ~Hit & ~Dirty) )) |
                  ( (state == MEMREAD) & BusReady );
  assign HWriteM = (state == WRITEBACK) | ((state == READY) & ~Hit & Dirty);
  assign HRequestM  = Stall;
  assign RDSel  = ( (state == NEXTINSTR) & (WordOffset == 2'b11) );
  assign BlockWE = (state == MEMREAD) | ( (state == NEXTINSTR)  & 
                   (~MemWriteM || MemWriteM & ~Dirty) ) |
                   ( (state == READY) & ~Hit & ~Dirty );
  assign ResetCounter = ((state == READY) & Hit) | (state == NEXTINSTR) ;

  // Create the block offset for the cache
  mux2 #($clog2(blocksize)) WordOffsetMux(Counter, WordOffset, ResetCounter, NewWordOffset);


endmodule