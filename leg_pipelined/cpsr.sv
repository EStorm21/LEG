module cpsr(input  logic        clk, reset,
              input logic [3:0] FlagsNext,
              input logic [31:0] ALUout,
              input logic [4:0] MSRmask,    // Highest bit of MSRmask is R
              input logic [5:0] Exceptions, // Exceptions[5:0] are: [5]undef, swi, prefetch_abt, data_abt, irq, fiq[0] 
              input logic       RestoreCPSR,
              input logic       NotStallW, 
              output logic [31:0] CPSRdata, 
              output logic [31:0] SPSRdata,
              output logic [6:0] PCVectorAddressE);

 /***** Brief Description *******
 *
 * CONTROLLER EXECUTE STAGE
 * CPSR stores all the processor's current flags and processor mode. 
 *
 ******************************/
  // typedef enum {usr_sys, svc, abt, undef, irq, fiq} statetype;
  // statetype state, nextState;
  // CPSR and SPSR of different modes
  logic [31:0] spsr[4:0]; 
  logic [31:0] cpsr;
  logic [7:0]  CPSR_update;
  logic [31:0] MSR_update;


  // CPSR: 3'b000
  // SPSR: SVC(0), Abort(1), Undef(2), IRQ(3), FIQ(4) ; 
  logic FastInterrupt, Interrupt, Undefined, PrefetchAbort, DataAbort, SoftwareInterrupt;
  assign {Undefined, SoftwareInterrupt, PrefetchAbort, DataAbort, Interrupt, FastInterrupt} = Exceptions;

  // Dealing with MSR instruction to write to CPSR/SPSR
  logic InAPrivilegedMode, CurrentModeHasSPSR, LegalModeChange;
  integer regnumber; 
  assign InAPrivilegedMode = ~(cpsr[4:0] == 5'b10000); // Not in User mode
  assign CurrentModeHasSPSR = ~(cpsr[4:0] == 5'b10000 | cpsr[4:0] == 5'b11111); // Not in either User mode or System mode

  always_comb
    case(ALUout[4:0])
      5'b10000: LegalModeChange = 1;
      5'b10001: LegalModeChange = 1;
      5'b10010: LegalModeChange = 1;
      5'b10011: LegalModeChange = 1;
      5'b10111: LegalModeChange = 1;
      5'b11011: LegalModeChange = 1;
      5'b11111: LegalModeChange = 1;
      default: LegalModeChange = 0;
    endcase  
  // EXCEPTION BITS:
  // {6'b000_000}
  // {FIQ, IRQ, UNDEF _ PrefetchAbort, DataAbort, SWI}

  always_comb
    begin
      // ========== Exceptions ===========
      if (reset) begin
        CPSR_update = {1'b1, 1'b1, 6'b01_0011}; // Supervisor Mode
        PCVectorAddressE = 7'b000_0001;
      end
      else if (DataAbort & ~(cpsr[4:0]==5'b10111)) begin // data abort 
        CPSR_update = {1'b1, cpsr[6], 6'b01_0111}; // Data Abort Mode
        PCVectorAddressE = 7'b001_0000;
      end
      else if (FastInterrupt & ~(cpsr[4:0]==5'b10001)) begin // FIQ
        CPSR_update = {1'b1, cpsr[6], 6'b01_0001}; // output fast interrupt (FIQ) mode
        PCVectorAddressE = 7'b100_0000;
      end
      else if (Interrupt & ~(cpsr[4:0]==5'b10010))begin // IRQ
        CPSR_update = {1'b1, cpsr[6], 6'b01_0010}; // IRQ mode
        PCVectorAddressE = 7'b010_0000;
      end
      else if (PrefetchAbort & ~(cpsr[4:0]==5'b10111)) begin // prefetch abort
        CPSR_update = {1'b1, cpsr[6], 6'b01_0111}; // Prefetch Abort Mode
        PCVectorAddressE = 7'b000_1000;
      end
      else if (Undefined & ~(cpsr[4:0]==5'b11011)) begin // undef
        CPSR_update = {1'b1, cpsr[6], 6'b01_1011}; // Undefined Mode
        PCVectorAddressE = 7'b000_0010;
      end
      else if (SoftwareInterrupt & ~(cpsr[4:0]==5'b10011)) begin // Software interrupt
        CPSR_update = {1'b1, cpsr[6], 6'b01_0011}; // Supervisor Mode
        PCVectorAddressE = 7'b000_0100;
      end
      else begin
        CPSR_update = {cpsr[7:0]};
        PCVectorAddressE = 7'b0;
      end
      // ========= MSR instructions =========
      if (MSRmask[0] & (InAPrivilegedMode | CurrentModeHasSPSR) & LegalModeChange)  MSR_update[7:0] = ALUout[7:0];
      else if ((MSRmask[0] & (InAPrivilegedMode | CurrentModeHasSPSR) & ~LegalModeChange & MSRmask[4]))   
                                                                                    MSR_update[7:0] = {ALUout[7:5], spsr[regnumber][4:0]};
      else if ((MSRmask[0] & (InAPrivilegedMode | CurrentModeHasSPSR) & ~LegalModeChange & ~MSRmask[4]))
                                                                                    MSR_update[7:0] = {ALUout[7:5], cpsr[4:0]};
      else if (MSRmask[4])                                                          MSR_update[7:0] = spsr[regnumber][7:0];
      else                                                                          MSR_update[7:0] = cpsr[7:0];
      if (MSRmask[1] & (InAPrivilegedMode | CurrentModeHasSPSR))                    MSR_update[15:8] = ALUout[15:8];
      else if (MSRmask[4])                                                          MSR_update[15:8] = spsr[regnumber][15:8];
      else                                                                          MSR_update[15:8] = cpsr[15:8];
      if (MSRmask[2] & (InAPrivilegedMode | CurrentModeHasSPSR))                    MSR_update[23:16] = ALUout[23:16];
      else if (MSRmask[4])                                                          MSR_update[23:16] = spsr[regnumber][23:16];
      else                                                                          MSR_update[23:16] = cpsr[23:16];
      if (MSRmask[3])                                                               MSR_update[31:24] = ALUout[31:24];
      else if (MSRmask[4])                                                          MSR_update[31:24] = spsr[regnumber][31:24];
      else                                                                          MSR_update[31:24] = cpsr[31:24];
      if (MSRmask[3:0] == 4'b0)                                                     MSR_update = 32'b0;
      // ========= Just update flags =========
      
    end


  //  The goal here is to see if a signal high triggers any one of these mode changes. However, if the signal is kept high,
  //  one can see the chance of the CPSR continuously changing the values inside the SPSR. Would we need to make a state machine
  //  such that we can restore the correct value of the SPSR back to the CPSR upon the MOVS PC R14 or SUBS PC R14 #4 instruction?

  //  In Summary, here's what we will want to do:
  // 1) On interrupt trigger, save SPSR_mode <= CPSR
  // 2) Save R14_mode <== Address of next/aborted/undef instruction
  // 3) Change Mode type in current CPSR (I assume this is done after the SPSR_mode is saved)
  // 4) Change PC to some value 0x4,8,c,10,18,1c

  // To return (SPSR moved to CPSR and R14 moved to PC), we either (1) want to do SUBS or MOVS or (2) use Load multiple and restore PSR

  always_ff @(negedge clk, posedge reset)
    begin
      // ========== Exceptions ===========
      if (reset) begin
        spsr <= '{5{32'b0}};
        cpsr <= {cpsr[11:8], 19'b0, 1'b1, CPSR_update}; // go to supervisor mode (On Reset, set Endianness to Big - LEGv7)
      end
      else if (DataAbort & ~(cpsr[4:0]==5'b10111)) begin // data abort 
        spsr[1] <= cpsr;
        cpsr <= {cpsr[11:8], 20'b0, CPSR_update}; // go to abort mode
      end
      else if (FastInterrupt & ~(cpsr[4:0]==5'b10001)) begin // FIQ
        spsr[4] <= cpsr;
        cpsr <= {cpsr[11:8], 20'b0, CPSR_update}; // go to FIQ mode
      end
      else if (Interrupt & ~(cpsr[4:0]==5'b10010)) begin // IRQ
        spsr[3] <= cpsr;
        cpsr <= {cpsr[11:8], 20'b0, CPSR_update}; // go to irq mode
      end
      else if (PrefetchAbort & ~(cpsr[4:0]==5'b10111)) begin // prefetch abort
        spsr[1] <= cpsr;
        cpsr <= {cpsr[11:8], 20'b0, CPSR_update}; // go to abort mode
      end
      else if (Undefined & ~(cpsr[4:0]==5'b11011)) begin // undef
        spsr[2] <= cpsr;
        cpsr <= {cpsr[11:8], 20'b0, CPSR_update}; // go to undef mode 
      end
      else if (SoftwareInterrupt & ~(cpsr[4:0]==5'b10011)) begin // Software interrupt
        spsr[0] <= cpsr;
        cpsr <= {cpsr[11:8], 20'b0, CPSR_update}; // go to supervisor mode
      end
      // ========= MSR instructions =========
      // IF R == 0 and InAPrivilegedMode
      else if (MSRmask[3:0] != 4'b0000 & ~MSRmask[4])
        cpsr <= MSR_update;
      // IF R == 1 and CurrentModeHasSPSR
      else if (MSRmask[3:0] != 4'b0000 & MSRmask[4])
        spsr[regnumber] <= MSR_update;

      // ========= Instructions that cpsr <= spsr ==========
      else if (RestoreCPSR)
        cpsr <= spsr[regnumber];
      // ========= Just update flags =========
      else if (NotStallW) begin
        cpsr <= {FlagsNext, cpsr[27:0]};
      end
    end

  // OUTPUT CPSR DATA
  assign CPSRdata = cpsr;
  string DEBUG_STATE;
  // OUTPUT SPSR DATA
  always_comb
    case(cpsr[4:0])
      5'b10000: begin SPSRdata = cpsr; DEBUG_STATE = "USR"; end     // User mode
      5'b10001: begin SPSRdata = spsr[4]; regnumber = 4; DEBUG_STATE = "FIQ"; end   // FIQ mode
      5'b10010: begin SPSRdata = spsr[3]; regnumber = 3; DEBUG_STATE = "IRQ"; end  // IRQ mode
      5'b10011: begin SPSRdata = spsr[0]; regnumber = 0; DEBUG_STATE = "SVC"; end  // Supervisor mode
      5'b10111: begin SPSRdata = spsr[1]; regnumber = 1; DEBUG_STATE = "ABT"; end  // Abort mode
      5'b11011: begin SPSRdata = spsr[2]; regnumber = 2; DEBUG_STATE = "UNDEF"; end // Undef mode
      5'b11111: begin SPSRdata = cpsr; DEBUG_STATE = "SYS"; end     // System mode
      default: SPSRdata = cpsr;
    endcase

endmodule




// IF R == 0 and InAPrivilegedMode
      /*else if (MSRmask[0] & ~MSRmask[4] & InAPrivilegedMode)  // MSRmask[4] = R
        cpsr <= {cpsr[31:8], MSR_update};
      else if (MSRmask[1] & ~MSRmask[4] & InAPrivilegedMode)  
        cpsr <= {cpsr[31:16], MSR_update, cpsr[7:0]};
      else if (MSRmask[2] & ~MSRmask[4] & InAPrivilegedMode)  
        cpsr <= {cpsr[31:24], MSR_update, cpsr[15:0]};
      else if (MSRmask[3] & ~MSRmask[4])  
        cpsr <= {MSR_update, cpsr[23:0]};*/


      // IF R == 1 and CurrentModeHasSPSR
      /*
      else if (MSRmask[0] & CurrentModeHasSPSR)
        spsr[regnumber] <= {spsr[regnumber][31:8], MSR_update};
      else if (MSRmask[1] & CurrentModeHasSPSR)
        spsr[regnumber] <= {spsr[regnumber][31:16], MSR_update, spsr[regnumber][7:0]};
      else if (MSRmask[2] & CurrentModeHasSPSR)
        spsr[regnumber] <= {spsr[regnumber][31:24], MSR_update, spsr[regnumber][15:0]};
      else if (MSRmask[3] & CurrentModeHasSPSR) 
        spsr[regnumber] <= {MSR_update, spsr[regnumber][23:0]};*/
