module data_writeback_associative_cache_controller 
  #(parameter lines, parameter bsize, parameter tbits = 14)
  (input  logic clk, reset, CP15en, W1V, W2V, CurrLRU, W1D, W2D, clean,
   input  logic IStall, MemWriteM, MemtoRegM, BusReady, PAReady, MSel,
   input  logic CurrCBit,
   input  logic [1:0] WordOffset,
   input  logic [3:0] ByteMaskM,
   input  logic [31:0] A,
   input  logic [tbits-1:0] W1Tag, W2Tag, PhysTag, VirtTag, 
   output logic Stall, HWriteM, HRequestM, BlockWE, 
   output logic W1WE, W2WE, W1EN, UseWD, UseCacheA, DirtyIn, WaySel, RDSel,
   output logic cleanCurr, RequestPA, enable,
   output logic [1:0] CacheRDSel,
   output logic [2:0] HSizeM,
   output logic [3:0] ActiveByteMask, WDSel, 
   output logic [tbits-1:0] CachedTag, Tag,
   output logic [$clog2(lines)-1:0] BlockNum,
   output logic [$clog2(bsize)-1:0] AddrWordOffset,
   output logic [$clog2(bsize)-1:0] DataWordOffset
);

  logic [      tbits-1:0] PrevPTag;
  logic [$clog2(lines):0] FlushA    ; // Create block address to increment
  logic                   IncFlush, ResetBlockOff, WDMaskSel, IncCounter;
  logic                   WordAccess, CWE, Hit, W2Hit, W1Hit, TagSel, writeW1;
  logic                   W2EN, Dirty, NoCountD, PrevCBit, CBit, ResetCountMid;
  logic                   HWriteWord;
  logic             [1:0] CounterMid, Counter, DataCounter;
  logic             [2:0] HSizeMid;
  logic             [3:0] WDMask;

  // Writeback cache states
  typedef enum logic[3:0] {READY, MEMREAD, LASTREAD, WRITEBACK, LASTWRITEBACK,
                           NEXTINSTR, FLUSH, WAIT, DWRITE} statetype;
  statetype state, nextstate;

  // Control Signals
  assign ResetCountMid = reset |
    ResetBlockOff | 
    ~enable & ~(state == WRITEBACK);

  // Create Counter for sequential bus access
  always_ff @(posedge clk, posedge reset)
    if(ResetCountMid) begin
        CounterMid <= 0;
    end else begin
        if (IncCounter) begin
            CounterMid <= CounterMid + 1;
        end else begin
            CounterMid <= CounterMid;
        end
    end

  assign DataCounter = CounterMid -1'b1;
  assign enable = CP15en & CBit;
  assign IncCounter = BusReady | 
    (state == READY) & (nextstate == MEMREAD) & MSel |
    (state == READY) & (nextstate == WRITEBACK) & MSel;

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
  assign WordAccess = (ByteMaskM == 4'b1111);

  //-----------------TAG LOGIC--------------------
  flopenr #(tbits+1) tagReg(clk, reset, PAReady, 
    {PhysTag, CurrCBit}, {PrevPTag, PrevCBit});
  mux2 #(tbits+1) tagMux({PrevPTag, PrevCBit}, {PhysTag, CurrCBit}, 
    (state == READY) & PAReady, {Tag, CBit});

  //------------HIT, DIRTY, VALID-----------------
  // Create Dirty Signal
  assign DirtyIn = enable & MemWriteM & ~clean;

  // Create Hit signal 
  assign W1Hit = (W1V & (Tag == W1Tag));
  assign W2Hit = (W2V & (Tag == W2Tag));
  assign CHit = (W1Hit | W2Hit);
  assign Hit = CHit & enable & (PAReady | ~(state == READY)); 
  
  // -------------Write-to logic------------------
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
  assign UseWD = ~BlockWE | ( BlockWE & MemWriteM & (WordOffset == DataWordOffset) );
  mux2 #(4)  MaskMux(4'b1111, ByteMaskM, ( UseWD & ~(state == MEMREAD) ), 
    ActiveByteMask);
  assign WDMaskSel = UseWD & (state == MEMREAD) & (WordOffset == DataWordOffset);
  mux2 #(4)  WDMaskMux(ActiveByteMask, ByteMaskM, WDMaskSel, WDMask);
  assign WDSel = ~(WDMask ^ {4{UseWD}});

  // ---------------HSIZE Logic------------------
  // Always writeback the full word
  assign HWriteWord = (state == WRITEBACK) | (state == LASTWRITEBACK);
  mask_to_hsize mth(ByteMaskM, HSizeMid);
  mux2 #(3) HSizeMux(HSizeMid, 3'b010, HWriteWord, HSizeM);

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else begin 
      if(clean) begin // TODO fix cleaning
        $display("cleaning data cache: warning, cleaning not functional @ %d ps",$time);
      end
      state <= nextstate;
    end

  // next state logic
  always_comb
    case (state)
      READY:    if (clean) begin
        nextstate <= FLUSH;
      end
      else if ( Hit & ~IStall |
        (~MemWriteM & ~MemtoRegM) |
        ~PAReady & (MemWriteM | MemtoRegM)
      )
      begin
        nextstate <= READY;
      end 
      else if(~Hit & ~clean & Dirty) begin
        nextstate <= WRITEBACK;
      end 
      else if ( ~enable & MemWriteM ) begin
        nextstate <= DWRITE;
      end
      else if( ~enable & MemtoRegM ) begin
        nextstate <= LASTREAD;
      end
      else if( IStall & enable & ~clean & Hit ) begin
        nextstate <= WAIT;
      end
      else begin
        nextstate <= MEMREAD;
      end
      

      // If we have finished writing back four words, start reading from memory
      // If the cache is disabled, then only write one line. (line isn't valid)
      WRITEBACK: if (clean & (Counter == 3) ) begin
        nextstate <= FLUSH;
      end else begin
        nextstate <= ( BusReady &  (Counter == 3) ) ? LASTWRITEBACK : WRITEBACK;
      end
      LASTWRITEBACK: if (clean & BusReady) begin
        nextstate <= FLUSH;
      end else if(enable) begin
        nextstate <= BusReady ? MEMREAD : LASTWRITEBACK;
      end else if(MemWriteM) begin
        nextstate <= DWRITE;
      end else begin
        nextstate <= BusReady ? LASTREAD : LASTWRITEBACK;
      end
      // If all four words have been fetched from memory, then move on.
      // If the cache is disabled, then only read one line. (line isn't valid)
      // MEMREAD:   nextstate <= ( BusReady & ( (Counter == 3) | ~enable) ) ? NEXTINSTR : MEMREAD;
      MEMREAD:
        if( BusReady & ( (Counter == 3) | ~enable & BusReady ) )
          begin
            nextstate <= LASTREAD;
          end else begin
        nextstate <= MEMREAD;
      end
      LASTREAD:
        if( BusReady  )
          begin
            nextstate <= NEXTINSTR;
          end else begin
        nextstate <= LASTREAD;
      end
      // If the instruction memory is stalling, then wait for a new instruction
      NEXTINSTR: nextstate <= IStall ? WAIT : READY;
      WAIT:      nextstate <= IStall ? WAIT : READY;
      DWRITE:    nextstate <= BusReady ? NEXTINSTR : DWRITE;
      FLUSH:    
      if ( W1D | W2D ) begin
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
    (state == LASTREAD) |
    (state == WRITEBACK) |
    (state == LASTWRITEBACK) |
    (state == FLUSH) |
    (state == DWRITE) |
    ( (state == READY) &
      ( clean | (MemtoRegM | MemWriteM) & ~Hit )
    );
  assign CWE =  (state == MEMREAD) & BusReady |
    (state == READY) & ( (MemWriteM & Hit) | 
      MemWriteM & ~enable & ~(nextstate ==WRITEBACK) ) |
    (state == LASTREAD) & BusReady;
  assign HWriteM = (state == WRITEBACK) |
    ((state == READY) & ~Hit & Dirty & ~clean) |
    (nextstate == DWRITE) | 
    (state == DWRITE);
  assign HRequestM = (state == READY) & MemtoRegM & PAReady & ~enable |
    (state == READY) & ((nextstate == WRITEBACK) | (nextstate == MEMREAD)) & PAReady |
		(state == READY) & MemWriteM & enable & ~Hit & PAReady |
		(state == DWRITE) & ~BusReady |
    (state == LASTREAD) & ~BusReady |
    (state == MEMREAD) |
    (state == LASTWRITEBACK) & ((nextstate == LASTREAD) | (nextstate == MEMREAD)) |
    (state == WRITEBACK); 

  // RDSel makes WD the output for disabled cache behavior
  assign RDSel = (state == DWRITE);

  assign BlockWE = (state == LASTREAD) |
  (state == MEMREAD) |
  ( (state == NEXTINSTR)  & (~MemWriteM | MemWriteM & ~Dirty) ) |
  ( (state == READY) & ~Hit & ~Dirty );
  assign ResetBlockOff = ((state == READY) & Hit) |
  (state == READY) & ~PAReady |
  (state == NEXTINSTR) |
  (state == WAIT) |
  (state == FLUSH);

  // Select output from Way 1 or Way 2
  assign WaySelMid = enable & W1Hit | 
   ~enable | 
    W1EN & (state == WRITEBACK) |
    W1EN & (state == LASTWRITEBACK);
  
  // CacheIn Logic
  // assign CacheRDSel = HWriteM ? DataCounter : WordOffset;
  assign CacheRDSel = DataWordOffset;

  // Cached address selection
  assign UseCacheA = enable & HWriteM | 
    ~enable & (nextstate == WRITEBACK)|
    ~enable & (state == WRITEBACK);

  // Ignore counter logic
  assign NoCountD = ~enable & ~(state == WRITEBACK) & 
    ~(nextstate == WRITEBACK) & ~(state == LASTWRITEBACK) | 
    ResetBlockOff; 
  assign NoCountA = NoCountD | (state == LASTWRITEBACK) & BusReady & ~enable;

  // Create the block offset for the cache
  mux2 #($clog2(bsize)) AddrWordOffsetMux(Counter, WordOffset, 
                                          NoCountA,
                                          AddrWordOffset);
  mux2 #($clog2(bsize)) DataWordOffsetMux(DataCounter, 
                                          WordOffset, 
                                          NoCountD,
                                          DataWordOffset);

  // -------------Flush controls------------
  assign IncFlush = (state == FLUSH) & ~(W1D & W1V) & ~(W2D & W2V);
  assign cleanCurr = (state == WRITEBACK) & BusReady;

  // Flushing MUX
  mux2 #($clog2(lines)) BlockNumMux(A[$clog2(lines)-1 + 4:4], 
                   FlushA[$clog2(lines)-1:0], clean, BlockNum);

  // ----------------MMU-------------------
  assign RequestPA = (state == READY) & (MemtoRegM | MemWriteM) 
                    | ~(state == READY) & Stall;
endmodule
