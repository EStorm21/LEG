// Cache controller works according to schematic
module instr_cache_controller (input  logic clk, reset,
                         input  logic W1Hit, W2Hit, W1V, W2V, CurrLRU,
                         input  logic BusReady,
                         input  logic [1:0] WordOffset,
                         output logic [1:0] Counter,
                         output logic W1WE, W2WE,
                         output logic IStall, RDSel, ResetCounter, HRequestF);
  logic W1EN, W2EN, Hit;
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
  assign CWE    = ( (state == MEMREAD) & BusReady );
  assign RDSel  = ( (state == NEXTINSTR) & (WordOffset == 2'b11) );
  assign HRequestF  = (state == MEMREAD);
  assign ResetCounter = ( state == READY ) | ( state == NEXTINSTR );

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

  // Write-to logic
    // IN: W1V, W2V, LRU 
    // OUT: W1EN, W2EN
    always_comb
        begin
            // If there is a Hit in either cache, then write to the Hit cache
            if( W1Hit | W2Hit) begin
                W1EN = W1Hit;
                W2EN = W2Hit;
            end else
            // Neither or Both caches have Valid data, so write to LRU cache
            if(~(W1V ^ W2V)) begin 
                W1EN = CurrLRU;
                W2EN = ~CurrLRU;
            // One way has Valid data, so write to the other
            end else begin
                W1EN = ~W1V;
                W2EN = ~W2V;
            end
        end

    // Write Enable And gates
    assign W1WE = W1EN & CWE;
    assign W2WE = W2EN & CWE;

endmodule