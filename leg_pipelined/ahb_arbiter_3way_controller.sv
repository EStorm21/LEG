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

module ahb_arbiter_3way_controller (
    input  logic       clk, reset,
    input  logic       HWriteM, HReady,
    input  logic       HRequestM, HRequestF, HRequestT,
    input  logic [2:0] HSizeM   ,
    output logic       HReadyF, HReadyM, HReadyT,
    output logic       FSel, MSel, TSel,
    output logic       HRequest,
    output logic       HWrite,
    output logic [1:0] HAddrSel,
    output logic [2:0] HSIZE
);

/***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * ahb_arbiter_3way_controller provides the control signals for the mux's in
 * ahb_arbiter. It also creates the HReady responses for each AHB master
 * (mmu.sv, data_writeback_associative_cache.sv, instr_cache.sv)
 ******************************/

    logic PTSel, PMSel, PFSel; // Indicate stage previously used

    // Priority of the bus is as follows:
    // 1. Translation walk hardware
    // 2. Data cache (M: Memory stage)
    // 3. Instruction cache (F: Fetch stage)

    // There are four possible sequences for simultaneous accesses
    // TMF: T --> M --> F
    // TM:  T --> M 
    // TF:  T --> F 
    // MF:  M --> F
    assign HRequest = HRequestM | HRequestT | HRequestF;

    // Each state corresponds to an arbitration sequence 
    typedef enum logic[2:0] 
    {SINGLE, TMF2, TMF3, MF, TM, TF} statetype;
    statetype state, nextstate;

    // ================ State Register ===================
    always_ff @(posedge clk, posedge reset)
    if (reset) state <= SINGLE;
    else state <= nextstate;

    // =============== Next State Logic ==================
    always_comb
    case (state)
      SINGLE: 
            if(~HReady) begin
                nextstate = SINGLE;
            end else if(HReady & HRequestT & HRequestM & HRequestF) begin
                nextstate = TMF2;
            end else if(HReady & HRequestM & HRequestF) begin
                nextstate = MF;
            end else if(HReady & HRequestT & HRequestM) begin
                nextstate = TM;
            end else if(HReady & HRequestT & HRequestM) begin
                nextstate = TF;
            end else begin
                nextstate = SINGLE;
            end
        TMF2: nextstate = HReady ? TMF3 : TMF2;
        TMF3: nextstate = HReady ? SINGLE : TMF3;
        MF: nextstate = HReady ? SINGLE : MF;
        TM: nextstate = HReady ? SINGLE : TM;
        TF: nextstate = HReady ? SINGLE : TF;
      default: nextstate = SINGLE;
    endcase // state

    // ============= Address Phase Logic ===============

    // Determine current selection
    assign TSel = (state == SINGLE) &  HRequestT & ~reset;
    assign MSel = (state == SINGLE) & ~HRequestT & HRequestM & ~reset |
                (state == TMF2) | (state == TM);
    assign FSel = (state == SINGLE) & HRequestF & ~HRequestM & ~HRequestT & ~reset |
                (state == TF) | (state == TMF3) | (state == MF);

    // AddrMux
    always_comb
        case({TSel, MSel, FSel})
            3'b100: HAddrSel = 2'b00; // HAddrT
            3'b010: HAddrSel = 2'b01; // HAddrM
            3'b001: HAddrSel = 2'b10; // HAddrF
            default: HAddrSel = 2'b00;
        endcase

    // HWrite
    assign HWrite = HWriteM & MSel;

    // =============== Data Phase Logic ================

    assign NoDataPending = ~PTSel & ~PMSel & ~PFSel;

    // Data phase logic is based on the previous address phase
    flopenr #(3) prevSel(clk, reset, HReady | NoDataPending & ~reset, 
        {FSel, TSel, MSel}, {PFSel, PTSel, PMSel});

    assign HReadyT = PTSel & HReady;
    assign HReadyM = PMSel & HReady;
    assign HReadyF = PFSel & HReady;

    // HSIZE
    always_comb
        if(MSel) begin
            HSIZE = HSizeM;
        end else begin
            HSIZE = 3'b010; // 32-bit word transaction
        end   

endmodule
