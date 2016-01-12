// instr_cache_controller.sv
// mwaugaman@hmc.edu 8 August 2015
// Instruction Cache Controller for LEG Processor

module instr_cache_controller #(parameter tbits = 14) (
  input  logic             clk, reset, enable, PAReadyF, W1V, W2V, CurrLRU, BusReady,
  input  logic             FSel,
  input  logic [      1:0] WordOffset   ,
  input  logic [tbits-1:0] W1Tag, W2Tag, PhysTag,
  output logic [      1:0] Counter      ,
  output logic             W1WE, W2WE, WaySel,
  output logic             IStall, ResetBlockOff, HRequestF,
  output logic [      1:0] AddrWordOffset,
  output logic [      1:0] DataWordOffset
);

  logic             W1EN, W2EN, Hit, W2Hit;
  logic [tbits-1:0] Tag, PrevPTag;
  logic [      1:0] CounterMid, DataCounter, WayWordOffset;

  // Create Hit signal 
  assign W1Hit = (W1V & (PhysTag == W1Tag));
  assign W2Hit = (W2V & (PhysTag == W2Tag));
  assign Hit = (W1Hit | W2Hit) & PAReadyF;

  // Select output from Way 1 or Way 2
  assign WaySel = enable & W1Hit | ~enable;

  // FSM States
  typedef enum logic [1:0] {READY, MEMREAD, LASTREAD, NEXTINSTR} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:      if(Hit | ~PAReadyF | reset) begin
                    nextstate <= READY;
     // Only one memread is desired. Transition on reset because previous flops aren't setup
                  end else if(~enable) begin 
                    nextstate <= LASTREAD;
                  end else begin
                    nextstate <= MEMREAD;  
                  end
      NEXTINSTR:  nextstate <= READY;
      MEMREAD:    nextstate <= ( BusReady & ( (Counter == 3) | ~enable ) ) ? LASTREAD : MEMREAD;
      LASTREAD:    nextstate <= BusReady ? NEXTINSTR : LASTREAD;
      default: nextstate <= READY;
    endcase

  // output logic
  assign IStall =  (state == MEMREAD) | ((state == READY) & ~Hit) |
                   (state == LASTREAD);
  assign CWE    = 
     (state == MEMREAD) & BusReady | (state == LASTREAD) & BusReady;
  assign HRequestF  = (state == MEMREAD) & PAReadyF |
    (state == READY) & ~Hit & PAReadyF | 
    (state == LASTREAD) & ~BusReady & PAReadyF;
  assign ResetBlockOff = ( state == READY ) & ~(nextstate== MEMREAD) | 
    ( state == NEXTINSTR );

  // Create Counter for sequential bus access
  always_ff @(posedge clk)
    if(reset | ResetBlockOff | ~enable) begin
      CounterMid <= 2'b00;
    end else begin
      if (BusReady | (nextstate == MEMREAD) & FSel) begin
        CounterMid <= CounterMid + 1;
      end else begin
        CounterMid <= CounterMid;
      end
    end

  // Data phase counter is one cycle behind address phase
  flopenr #(2) DataCntFlop(clk, reset, BusReady, CounterMid, DataCounter);
  // assign DataCounter = CounterMid - 1'b1;
  // Create Counter for sequential bus access

  mux2 #(2) cenMux(WordOffset, CounterMid, enable, Counter);

  logic writeW1;
  always_comb
    begin
      writeW1 = ( (~W1V & W2V) | CurrLRU ) & ~W2Hit;
      W1EN = writeW1 | W1Hit | ~enable;
      W2EN = ~W1EN;
    end

  // Write Enable And gates
  assign W1WE = W1EN & CWE;
  assign W2WE = W2EN & CWE;

  // Create the block offset for the address and data phases of AHB
  mux2 #(2) DataWordOffsetMux(DataCounter, WordOffset, (~enable | ResetBlockOff), DataWordOffset);
  mux2 #(2) AddrWordOffsetMux(Counter, WordOffset, (~enable | ResetBlockOff), AddrWordOffset);

endmodule
