module data_writeback_associative_cache_controller 
  #(parameter lines, parameter bsize, parameter tbits = 14)
  (input  logic clk, reset, enable, W1V, W2V, CurrLRU, W1D, W2D, clean,
   input  logic IStall, MemWriteM, MemtoRegM, BusReady, PAReady,
   // input  logic IStall, MemWriteM, MemtoRegM, BusReady, 
   input  logic [1:0] WordOffset,
   input  logic [3:0] ByteMask,
   input  logic [31:0] A,
   input  logic [tbits-1:0] W1Tag, W2Tag, PhysTag, VirtTag, 
   output logic Stall, HWriteM, HRequestM, BlockWE, 
   output logic W1WE, W2WE, W1EN, UseWD, UseCacheA, DirtyIn, WaySel, RDSel,
   output logic cleanCurr, RequestPA,
   output logic [1:0] CacheRDSel, 
   output logic [3:0] ActiveByteMask, WDSel,
   output logic [tbits-1:0] CachedTag,
   output logic [$clog2(lines)-1:0] BlockNum,
   output logic [$clog2(bsize)-1:0] NewWordOffset);

  logic [      tbits-1:0] Tag, PrevPTag;
  logic [$clog2(lines):0] FlushA    ; // Create block address to increment
  logic                   IncFlush, ResetBlockOff;
  logic                   WordAccess, CWE, Hit, W2Hit, W1Hit, TagSel, writeW1;
  logic                   W2EN, Dirty;


  // Writeback cache states
  typedef enum logic[2:0] {READY, MEMREAD, WRITEBACK, NEXTINSTR, 
                           FLUSH, WAIT, DWRITE} statetype;
  statetype state, nextstate;

  // Control Signals
  // Create Counter for sequential bus access
  logic [1:0] CounterMid, Counter;
  always_ff @(posedge clk, posedge reset)
    if(reset | ResetBlockOff) begin
        CounterMid <= 0;
    end else begin
        if (BusReady) begin
            CounterMid <= CounterMid + 1;
        end else begin
            CounterMid <= CounterMid;
        end
    end

  // ----------------FLUSHING--------------------
  // Create the flush c ounter (count through all blocks and each way per block)
  countEn #($clog2(lines)+1) fc(.clk(clk), .reset(reset), .en(IncFlush), .q(FlushA));
  // Create a mux for the way select signal
  mux2 #(1) waySelMux(WaySelMid, W1D, clean, WaySel);

  //----------------ENABLING----------------------
  // Counter Disable Mux
  mux2 #(2) cenMux(WordOffset, CounterMid, 
    (enable & (state != NEXTINSTR) | (state == WRITEBACK)), Counter);
  // Word Access
  assign WordAccess = (ByteMask == 4'b1111);

  //-----------------TAG LOGIC--------------------
  flopenr #(tbits) tagReg(clk, reset, PAReady, PhysTag, PrevPTag);
  mux2 #(tbits) tagMux(PrevPTag, PhysTag, (state == READY), Tag);

  //------------HIT, DIRTY, VALID-----------------
  // Create Dirty Signal
  assign DirtyIn = enable & MemWriteM & ~clean;

  // Create Hit signal 
  assign W1Hit = (W1V & (Tag == W1Tag));
  assign W2Hit = (W2V & (Tag == W2Tag));
  assign CHit = (W1Hit | W2Hit);
  assign Hit = CHit & enable & PAReady; 
  
  // Write-to logic
  // IN: W1V, W2V, LRU 
  // OUT: W1EN, W2EN
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
  mux2 #(1) TagSelMux(W1EN, W1D, clean, TagSel);
  mux2 #(tbits) CachedTagMux(W2Tag, W1Tag, TagSel, CachedTag);

  // Dirty Mux
  mux2 #(1) DirtyMux(W2D, W1D, W1EN, Dirty);

  // Select Data source and Byte Mask for the data cache
  assign UseWD = ~BlockWE | ( BlockWE & MemWriteM & (Counter == WordOffset) );
  mux2 #(4)  MaskMux(4'b1111, ByteMask, ( UseWD & ~(state == MEMREAD) ), 
    ActiveByteMask);
  assign WDSel = ~(ActiveByteMask ^ {4{UseWD}});

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
      else if ( ~enable & MemWriteM ) begin
        nextstate <= DWRITE;
      end
      else if ( Hit & ~IStall |
        (~MemWriteM & ~MemtoRegM) |
        (~PAReady & enable) |
        (~enable & MemWriteM)
      )
      begin
        // else if ( Hit | (~MemWriteM & ~MemtoRegM) & enable) begin
        nextstate <= READY;
      end
      else if(IStall & enable & ~clean &  PAReady & Hit) begin
        nextstate <= WAIT;
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
      MEMREAD:
        if( BusReady & ( (Counter == 3) | ~enable & BusReady ) )
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
      default:   begin
        nextstate <= READY;
        $display("Hit Default D$ Controller State at time %d", $time);
      end
    endcase

  // output logic
  assign Stall = (state == MEMREAD) |
    (state == WRITEBACK) |
    (state == FLUSH) |
    (state == DWRITE) |
    ( (state == READY) &
      ( clean | (MemtoRegM | MemWriteM) & ~Hit )
    );
  assign CWE = ( (state == MEMREAD) & BusReady ) |
    ( (state == READY) & 
      ( (MemWriteM & Hit) |  (BusReady & PAReady & ~Hit & ~Dirty & ~clean) ) 
    );
  assign HWriteM = (state == WRITEBACK) |
    ((state == READY) & ~Hit & Dirty & ~clean) |
    (state == DWRITE);
  assign HRequestM = RequestPA; 

  // RDSel makes WD the output for disabled cache behavior
  assign RDSel = (state == DWRITE);

  assign BlockWE = (state == MEMREAD) | ( (state == NEXTINSTR)  & 
                   (~MemWriteM | MemWriteM & ~Dirty) ) |
                   ( (state == READY) & ~Hit & ~Dirty );
  assign ResetBlockOff = ((state == READY) & Hit) | (state == NEXTINSTR) | 
                        (state == FLUSH);

  // Select output from Way 1 or Way 2
  assign WaySelMid = enable & W1Hit | ~enable;
  
  // CacheIn Logic
  assign CacheRDSel = HWriteM ? Counter : WordOffset;

  // Cached address selection
  assign UseCacheA = enable & HWriteM;

  // -------------Flush controls------------
  assign IncFlush = (state == FLUSH) & ~(W1D & W1V) & ~(W2D & W2V);
  assign cleanCurr = (state == WRITEBACK) & BusReady;

  // Create the block offset for the cache
  mux2 #($clog2(bsize)) WordOffsetMux(Counter, WordOffset, ResetBlockOff, 
                                          NewWordOffset);
  // Flushing MUX
  mux2 #($clog2(lines)) BlockNumMux(A[$clog2(lines)-1 + 4:4], 
                   FlushA[$clog2(lines)-1:0], clean, BlockNum);

  // ----------------MMU-------------------
  assign RequestPA = (state == READY) & (MemtoRegM | MemWriteM) 
                    | ~(state == READY) & Stall;
endmodule
