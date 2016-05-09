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

module twh #(parameter tagbits = 16) (
  //TODO: Organize and describe input and outputs
  input  logic               clk           , // Clock
  input  logic               reset         , // Asynchronous reset active low
  input  logic               Enable        ,
  // input  logic               Fault         , TODO: Reconnect
  input  logic               PAReady       ,
  input  logic               TSel,
  input  logic               RequestPA   ,
  input  logic               DataAccess    ,
  input  logic               PrefetchAbort ,
  input  logic               HReadyT        ,
  input  logic               InstrExecuting,
  input  logic               InstrCancelled,
  input  logic [       17:0] TBase         ,
  input  logic [       31:0] VirtAdr      ,
  input  logic [       31:0] HRData        ,
  output logic [       31:0] HAddrT ,
  output logic [        3:0] statebits     ,
  output logic               TLBwe         ,
  output logic               HRequestT,
  output logic               MMUEn         ,
  output logic               MMUWriteEn    ,
  output logic               WDSel         ,
  output logic               CurrCBit,
  inout  logic [tagbits+8:0] TableEntry      // Physical Tag to write data into TLB
);

 /***** Brief Description *******
 * First Created by Max Waugaman 2015
 * Perform table walks for address translation
 ******************************/

// ===========================================================================
// ================== TLB Control ============================================
// ===========================================================================
//FIXME: Placeholders
logic B, C;
logic [1:0] AP;
logic [3:0] Domain;
logic Fault = 1'b0;
assign C = HRData[3];
assign B = HRData[2];
assign TableEntry = TLBwe ? {HAddrT[31:32-tagbits], C, B, AP, Domain, 1'b1} : 'bz;
assign CurrCBit = TableEntry[8];

// ===========================================================================
// ================== Translation State Machine ==============================
// ===========================================================================

typedef enum logic [3:0] {READY, FLD, COARSEFETCH, FINEFETCH, FINED, 
COARSED, INSTRFAULT, FAULTFSR, FAULTFAR} statetype;

statetype state, nextstate;

// Output state to translation fault hardware
assign statebits = state;

// state register
always_ff @(posedge clk, posedge reset)
if (reset | ~Enable) state <= READY;
else state <= nextstate;

// next state logic
always_comb
case (state)
  READY:        if ( Enable & Fault ) begin
                  nextstate <= DataAccess ? FAULTFSR : INSTRFAULT;
                end else if (~HReadyT & ~TSel | ~RequestPA | ~Enable | Fault | reset | PAReady) begin 
                  nextstate <= READY;
                end else begin
                  nextstate <= FLD;
                end

  FLD:          if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else if(~HReadyT) begin
                  nextstate <= FLD;
                end else if(HRData[1:0] == 2'b10) begin // section Trans
                  nextstate <= READY;
                end else if(HRData[1:0] == 2'b01) begin
                  nextstate <= COARSED;
                end else begin
                  nextstate <= FINED;
                end

  COARSEFETCH:  if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else if (~HReadyT) begin
                  nextstate <= COARSEFETCH;
                end else begin
                  nextstate <= COARSED;
                end
  FINEFETCH:    if ( Fault ) begin
                  nextstate <= DataAccess ? READY: INSTRFAULT;
                end else if (~HReadyT) begin
                  nextstate <= FINEFETCH;
                end else begin
                  nextstate <= FINED;
                end
  COARSED:      if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else if(~HReadyT) begin
                  nextstate <= COARSED;
                end else begin
                  nextstate <= READY;
                end
  FINED:        if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else if(~HReadyT) begin
                  nextstate <= FINED;
                end else begin
                  nextstate <= READY;
                end
  INSTRFAULT:   if (InstrExecuting | InstrCancelled) begin
                  nextstate <= READY;
                end else begin
                  nextstate <= INSTRFAULT;
                end
  FAULTFSR:     nextstate <= FAULTFAR;
  FAULTFAR:     nextstate <= READY;
default:        nextstate <= READY;
endcase

// ===========================================================================
// ========================= Translation Output Logic ========================
// ===========================================================================

// HAddrT logic
always_comb
case (state)
  READY:        HAddrT = PAReady ? {TableEntry[tagbits+8:9], VirtAdr[31-tagbits:0]} : 
                           {TBase,  VirtAdr[31:20], 2'b00};
  FLD:          if(HRData[1:0] == 2'b10) begin
                  HAddrT = {HRData[31:20], VirtAdr[19:0]};  // section fld
                end else if(HRData[1:0] == 2'b01) begin
                  HAddrT = {HRData[31:10], VirtAdr[19:12], 2'b0}; // coarse fld
                end else begin
                  HAddrT = {HRData[31:12], VirtAdr[19:10], 2'b0}; // fine fld
                end
  FINED:        if(HRData[1:0] == 2'b10) begin 
                  HAddrT = {HRData[31:12], VirtAdr[11:0]}; // Small Trans
                end else begin
                  HAddrT = {HRData[31:10], VirtAdr[9:0]};  // Tiny Trans
                end
  COARSED:      if(HRData[1:0] == 2'b01) begin 
                  HAddrT = {HRData[31:16], VirtAdr[15:0]}; // Large Trans
                end else begin
                  HAddrT = {HRData[31:12], VirtAdr[11:0]}; // Small Trans
                end
  default: HAddrT = 32'h9999_9999;
endcase

// Access Permission Logic
always_comb
case (state)
  FLD:    AP = HRData[5:4];
  FINED:  if(HRData[1:0] == 2'b10) begin // Small Trans
            case (VirtAdr[11:10])
              2'b00: AP = HRData[5:4];
              2'b01: AP = HRData[7:6];
              2'b10: AP = HRData[9:8];
              2'b11: AP = HRData[11:10];
              default : AP = HRData[5:4];
            endcase
          end else begin                 // Tiny Trans
            AP = HRData[5:4];
          end
  COARSED: if(HRData[1:0] == 2'b01) begin// Large Trans
            case (VirtAdr[15:14])
              2'b00: AP = HRData[5:4];
              2'b01: AP = HRData[7:6];
              2'b10: AP = HRData[9:8];
              2'b11: AP = HRData[11:10];
              default : AP = HRData[5:4];
            endcase
          end else begin                 // Small Trans
            case (VirtAdr[11:10])      
              2'b00: AP = HRData[5:4];
              2'b01: AP = HRData[7:6];
              2'b10: AP = HRData[9:8];
              2'b11: AP = HRData[11:10];
              default : AP = HRData[5:4];
            endcase
          end
  default : AP = HRData[5:4];
endcase

// Domain Flop
flopenr #(4) domainFlop(clk, reset, (state == FLD), HRData[8:5], Domain);

// HRequestT Logic
assign HRequestT = ( (state == COARSEFETCH) |
                (state == FINEFETCH) |
                (state == COARSED)   & ~HReadyT |
                (state == FINED)   & ~HReadyT |
                (state == FLD) & (~HReadyT | (HRData[1:0] == 2'b01) | (HRData[1:0] == 2'b11)) |
              ( (state == READY) & RequestPA & ~PAReady) ) & Enable;

// PAReady logic
// assign PAReady = MMUEn |
assign TLBwe = (state == FLD) & (HRData[1:0] == 2'b10) & HReadyT  |
              (state == COARSED) & HReadyT |
              (state == FINED) & HReadyT;

// CP15 Logic (WDSel, MMUEn, MMUWriteEn)
assign MMUEn = (state == READY) & HReadyT;
assign MMUWriteEn = (state == INSTRFAULT) & PrefetchAbort |
                    (state == FAULTFSR) | (state == FAULTFAR);
assign WDSel = (state == FAULTFSR);

endmodule
