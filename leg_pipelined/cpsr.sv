module cpsr(input  logic        clk, reset,
              input logic [3:0] FlagsNext,
              input logic       FlagsWrite,
              input logic [31:0] ALUout,
              input logic [4:0] MSRmask,    // Highest bit of MSRmask is R
              input logic [5:0] Exceptions, // Exceptions[5:0] are: [5]undef, swi, prefetch_abt, data_abt, irq, fiq[0] 
              input logic       RestoreCPSR,
              input logic       NotStallW, CoProc_FlagUpd_W,
              output logic [31:0] CPSRdata, 
              output logic [31:0] SPSRdata);

 /***** Brief Description *******
 * Created by Ivan Wong for Clay Wolkin 2014-2015
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
  logic [3:0]  FlagsUpdate;

  /* IVAN MADE A HACKY SOLUTION TO FIX A BUG RIGHT BEFORE GRADUATION - DIDN'T HAVE TIME TO 
  * MAKE IT MORE ELEGANT 
  * here's the problem: after a mrc r15 instruction, we try and store flags
  * but the feedback loop to the cond unit causes the flags to oscillate between two values...
  * solution - add muxes to FlagsNextM and FlagsNextW
  */

  assign FlagsUpdate = CoProc_FlagUpd_W ? ALUout[31:28] : FlagsNext;

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

  always_comb
    begin
      // ========== Exceptions ===========
      if (reset)
        CPSR_update = {1'b1, 1'b1, 6'b01_0011}; // Supervisor Mode (Fast Interrupt disabled - why?)
      else if (DataAbort)// data abort 
        CPSR_update = {1'b1, cpsr[6], 6'b01_0111}; // Data Abort Mode
      else if (FastInterrupt) // FIQ
        CPSR_update = {2'b11, 6'b01_0001}; // output fast interrupt (FIQ) mode
      else if (Interrupt)// IRQ
        CPSR_update = {1'b1, cpsr[6], 6'b01_0010}; // IRQ mode
      else if (PrefetchAbort) // prefetch abort
        CPSR_update = {1'b1, cpsr[6], 6'b01_0111}; // Prefetch Abort Mode
      else if (Undefined)// undef
        CPSR_update = {1'b1, cpsr[6], 6'b01_1011}; // Undefined Mode
      else if (SoftwareInterrupt) // Software interrupt
        CPSR_update = {1'b1, cpsr[6], 6'b01_0011}; // Supervisor Mode
      else
        CPSR_update = {cpsr[7:0]};

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


  //  In Summary, here's what we will want to do:
  // 1) On interrupt trigger, save SPSR_mode <= CPSR
  // 2) Save R14_mode <== Address of next/aborted/undef instruction
  // 3) Change Mode type in current CPSR (I assume this is done after the SPSR_mode is saved)
  // 4) Change PC to some value 0x4,8,c,10,18,1c

  // A sneaky case: If the last instruction through the datapath before
  // the interrupt set flags, we want to save the flags to the CPSR and SPSR
  // but still not save the new mode to the SPSR.

  always_ff @(negedge clk, posedge reset)
    begin
      // ========== Exceptions ===========
      if (reset) begin
        spsr <= '{5{32'b0}};
        cpsr <= {4'b0000, 19'b0, 1'b1, CPSR_update}; // go to supervisor mode (On Reset, set Endianness to Big - LEGv7)
      end
      else if (NotStallW)
        if (DataAbort & ~(cpsr[4:0]==5'b10111)) begin // data abort 
          spsr[1] <= {FlagsUpdate, cpsr[27:0]};
          cpsr <= {FlagsUpdate, 19'b0, 1'b1, CPSR_update}; // go to abort mode
        end
        else if (FastInterrupt & ~(cpsr[4:0]==5'b10001)) begin // FIQ
          spsr[4] <= {FlagsUpdate, cpsr[27:0]};
          cpsr <= {FlagsUpdate, 19'b0, 1'b1, CPSR_update}; // go to FIQ mode
        end
        else if (Interrupt & ~(cpsr[4:0]==5'b10010)) begin // IRQ
          spsr[3] <= {FlagsUpdate, cpsr[27:0]};
          cpsr <= {FlagsUpdate, 19'b0, 1'b1, CPSR_update}; // go to irq mode
        end
        else if (PrefetchAbort & ~(cpsr[4:0]==5'b10111)) begin // prefetch abort
          spsr[1] <= {cpsr[31:28], cpsr[27:0]};
          cpsr <= {cpsr[31:28], 19'b0, 1'b1, CPSR_update}; // go to abort mode
        end
        else if (Undefined & ~(cpsr[4:0]==5'b11011)) begin // undef
          spsr[2] <= {cpsr[31:28], cpsr[27:0]};
          cpsr <= {cpsr[31:28], 19'b0, 1'b1, CPSR_update}; // go to undef mode 
        end
        else if (SoftwareInterrupt & ~(cpsr[4:0]==5'b10011)) begin // Software interrupt
          spsr[0] <= {cpsr[31:28], cpsr[27:0]};
          cpsr <= {cpsr[31:28], 19'b0, 1'b1, CPSR_update}; // go to supervisor mode
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
        else if (FlagsWrite)
          cpsr <= {FlagsUpdate, cpsr[27:0]};
        else 
          cpsr <= cpsr;
    end

  // OUTPUT CPSR DATA
  assign CPSRdata = cpsr;
  // OUTPUT SPSR DATA
  always_comb
    case(cpsr[4:0])
      5'b10000: begin SPSRdata = cpsr;  end     // User mode
      5'b10001: begin SPSRdata = spsr[4]; regnumber = 4;  end   // FIQ mode
      5'b10010: begin SPSRdata = spsr[3]; regnumber = 3;  end  // IRQ mode
      5'b10011: begin SPSRdata = spsr[0]; regnumber = 0;  end  // Supervisor mode
      5'b10111: begin SPSRdata = spsr[1]; regnumber = 1;  end  // Abort mode
      5'b11011: begin SPSRdata = spsr[2]; regnumber = 2;  end // Undef mode
      5'b11111: begin SPSRdata = cpsr;  end     // System mode
      default: SPSRdata = cpsr;
    endcase

endmodule
