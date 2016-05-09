/*
   LEG Processor for Education
   Copyright (C) 2016  Max Waugaman

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
// instr_cache_controller.sv
// mwaugaman@hmc.edu 8 August 2015
// Instruction Cache Controller for LEG Processor

module instr_cache_controller #(parameter tbits = 14) (
  input  logic             clk, reset, CP15en, PAReadyF, W1V, W2V, CurrLRU, BusReady,
  input  logic             FSel, uOpStallD, Inv, InvAllMid,
  input  logic [      1:0] WordOffset   ,
  input  logic [tbits-1:0] W1Tag, W2Tag, PhysTag,
  output logic [      1:0] Counter      ,
  output logic             W1WE, W2WE, WaySel, InvAll,
  output logic             IStall, ResetBlockOff, HRequestF, RequestPA,
  output logic [tbits-1:0] Tag,
  output logic [      1:0] AddrWordOffset,
  output logic [      1:0] DataWordOffset
);

/***** Brief Description *******
 * First Created by Max Waugaman 2015
 *
 * instr_cache_controller creates control signals for the instruction
 * cache. The instruction cache is read only, so the controller logic
 * is much simpler than that of the data cache. Information about each
 * sate can be found in the pdf documentation for the LEG processor.
 ******************************/

  logic             W1EN, W2EN, Hit, W2Hit, enable, AdvanceCounter;
  logic [tbits-1:0] PrevPTag;
  logic [      1:0] CounterMid, DataCounter, WayWordOffset;

  assign enable = CP15en;
  assign InvAll = Inv; // Treat line invalidate as entire cache invalidation
  
  // FSM States
  typedef enum logic [1:0] {READY, MEMREAD, LASTREAD, NEXTINSTR} statetype;
  statetype state, nextstate;

  // Create Hit signal 
  assign W1Hit = (W1V & (Tag == W1Tag));
  assign W2Hit = (W2V & (Tag == W2Tag));
  assign Hit   = (W1Hit | W2Hit) & (PAReadyF | ~(state == READY)) & enable;

  // Select output from Way 1 or Way 2
  assign WaySel = enable & W1Hit | ~enable;

  // state register
  always_ff @(posedge clk)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:      if(Hit & PAReadyF & uOpStallD & ~reset) begin
                    nextstate <= NEXTINSTR;
                  end else if(Hit | ~PAReadyF | reset) begin
                    nextstate <= READY;
     // Only one memread is desired. Transition on reset because previous flops aren't setup
                  end else if(~enable) begin 
                    nextstate <= LASTREAD;
                  end else begin
                    nextstate <= MEMREAD;  
                  end
      NEXTINSTR:  nextstate <= uOpStallD ? NEXTINSTR : READY;
      // NEXTINSTR:  nextstate <= READY;
      MEMREAD:    nextstate <= ( BusReady & ( (Counter == 3) | ~enable ) ) ? LASTREAD : MEMREAD;
      LASTREAD:    nextstate <= BusReady ? NEXTINSTR : LASTREAD;
      default: nextstate <= READY;
    endcase

  // output logic
  assign IStall =  (state == MEMREAD) | ((state == READY) & ~Hit) |
                   (state == LASTREAD);
  assign CWE =
  (state == MEMREAD) & BusReady | (state == LASTREAD) & BusReady;
  assign HRequestF = (state == MEMREAD) |
  (state == READY) & ~Hit & PAReadyF |
  (state == LASTREAD) & ~BusReady;
  assign ResetBlockOff = ( state == READY ) & ~(nextstate== MEMREAD) |
  ( state == NEXTINSTR );
  assign RequestPA = (state == READY);

  // This logic assumes the Instruction Cache has continuous control
  // over the Bus
  assign AdvanceCounter = BusReady | 
    (state == READY) & (nextstate == MEMREAD) & FSel & HRequestF;

  // Create Counter for sequential bus access
  always_ff @(posedge clk)
    if(reset | ResetBlockOff | ~enable) begin
      CounterMid <= 2'b00;
    end else begin
      if (AdvanceCounter) begin
        CounterMid <= CounterMid + 1;
      end else begin
        CounterMid <= CounterMid;
      end
    end

  // Data phase counter is one cycle behind address phase
  // flopenr #(2) DataCntFlop(clk, reset, BusReady, CounterMid, DataCounter);
  assign DataCounter = CounterMid - 1'b1;
  // Create Counter for sequential bus access

  //-----------------TAG LOGIC--------------------
  flopenr #(tbits) tagReg(clk, reset, PAReadyF, PhysTag, PrevPTag);
  mux2 #(tbits) tagMux(PrevPTag, PhysTag, (state == READY), Tag);

  mux2 #(2) cenMux(WordOffset, CounterMid, enable, Counter);

  logic writeW1;
  always_comb
    begin
      writeW1 = ( (~W1V & W2V) | CurrLRU ) & ~W2Hit;
      W1EN    = writeW1 | W1Hit | ~enable;
      W2EN    = ~W1EN;
    end

  // Write Enable And gates
  assign W1WE = W1EN & CWE;
  assign W2WE = W2EN & CWE;

  // Create the block offset for the address and data phases of AHB
  mux2 #(2) DataWordOffsetMux(DataCounter, WordOffset, (~enable | ResetBlockOff), DataWordOffset);
  mux2 #(2) AddrWordOffsetMux(Counter, WordOffset, (~enable | ResetBlockOff), AddrWordOffset);

endmodule
