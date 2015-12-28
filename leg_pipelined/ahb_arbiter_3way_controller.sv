/***** Brief Description *******
 * First Created by Max Waugaman for Clay Wolkin 2015-2016
 *
 * ahb_arbiter_3way_controller provides the control signals for the mux's in
 * ahb_arbiter. It also creates the HReady responses for each AHB master
 * (mmu.sv, data_writeback_associative_cache.sv, instr_cache.sv)
 ******************************/

module ahb_arbiter_3way_controller (
    input  logic       clk, reset,
    input  logic       HWriteM, HReady,
    input  logic       HRequestM, HRequestF, HRequestT,
    input  logic [2:0] HSizeM   ,
    output logic       HReadyF, HReadyM, HReadyT,
    output logic       HWrite,
    output logic [1:0] HAddrSel,
    output logic [2:0] HSize
);

    logic TSel, MSel, FSel;    // Indicate stage in use
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
    assign TSel = (state == SINGLE) &  HRequestT;
    assign MSel = (state == SINGLE) & ~HRequestT & HRequestM |
                (state == TMF2) | (state == TM);
    assign FSel = (state == SINGLE) & HRequestF & ~HRequestM & ~HRequestT |
                (state == TF) | (state == TMF3) | (state == MF);

    // AddrMux
    always_comb
        case({TSel, MSel, FSel})
            3'b100: HAddrSel = 2'b00; // HAddrT
            3'b010: HAddrSel = 2'b01; // HAddrM
            3'b001: HAddrSel = 2'b10; // HAddrF
            default: HAddrSel = 2'b00;
        endcase

    // =============== Data Phase Logic ================

    // Data phase logic is based on the previous address phase
    flopenr #(3) prevSel(clk, reset, HReady, {TSel, MSel, FSel}, {PTSel, PMSel, PFSel});
    assign HReadyT = PTSel & HReady;
    assign HReadyM = PMSel & HReady;
    assign HReadyF = PFSel & HReady;

    // HSize
    always_comb
        if(MSel) begin
            HSize = HSizeM;
        end else begin
            HSize = 3'b010; // 32-bit word transaction
        end

    // HWrite
    flopenr #(1) prevHWrite(clk, reset, HReady, HWriteM, HWrite);

endmodule
