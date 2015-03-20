// Cache controller works according to schematic
module instr_cache_controller #(parameter tagbits = 14)
  (input  logic clk, reset,
   input  logic W1V, W2V, CurrLRU,
   input  logic BusReady,
   input  logic [1:0] WordOffset,
   input  logic [tagbits-1:0] W1Tag, W2Tag, Tag,
   output logic [1:0] Counter,
   output logic W1WE, W2WE, W1Hit,
   output logic IStall, RDSel, ResetCounter, HRequestF,
   output logic [1:0] NewWordOffset);

  logic W1EN, W2EN, Hit, W2Hit;
  // Create Hit signal 
  assign W1Hit = (W1V & (Tag == W1Tag));
  assign W2Hit = (W2V & (Tag == W2Tag));
  assign Hit = W1Hit | W2Hit;

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
  assign CWE    = ( (state == MEMREAD) & BusReady | ( (state == READY) & ~Hit & BusReady) );
  assign RDSel  = ( (state == NEXTINSTR) & (WordOffset == 2'b11) );
  assign HRequestF  = (state == MEMREAD) | ((state == READY) & ~Hit);
  assign ResetCounter = ( (state == READY) & Hit ) | ( state == NEXTINSTR );

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

  logic writeW1;
  always_comb
    begin
      writeW1 = ( (~W1V & W2V) | CurrLRU ) & ~W2Hit;
      W1EN = writeW1 | W1Hit;
      W2EN = ~W1EN;
    end

  // Write Enable And gates
  assign W1WE = W1EN & CWE;
  assign W2WE = W2EN & CWE;

   // Create the block offset for the cache
  mux2 #(2) WordOffsetMux(Counter, WordOffset, ResetCounter, NewWordOffset);

endmodule