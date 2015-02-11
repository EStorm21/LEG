module cpsr(input  logic        clk, reset, restoreCPSR,
              input logic [3:0] FlagsNext,
              input logic [5:0] Exceptions, 
              input logic [4:0] Mode,
              input logic [1:0] IrqFiq, // disables interrupt/fast-interrupts when set
              input logic       TFlag,  // 0 indicates ARM execution, 1 indicates Thumb.
              input logic       Enable, readSR, writeSR,
              output logic [11:0] SRdata);

 /***** Brief Description *******
 *
 * CONTROLLER EXECUTE STAGE
 * CPSR stores all the processor's current flags and processor mode. 
 *
 ******************************/

  // CPSR: 3'b000
  // SPSR: SVC(0), Abort(1), Undef(2), IRQ(3), FIQ(4) ; 
  logic FastInterrupt, Interrupt, Undefined, PrefetchAbort, DataAbort, SoftwareInterrupt;


  // CPSR and SPSR of different modes
  logic [11:0] spsr[4:0]; 
  logic [11:0] cpsr;
  logic [7:0]  CPSR_update;

  // defining names so we don't need to deal with magic numbers
  //typedef enum logic [2:0] {SVC, ABORT, UNDEF, IRQ, FIQ} exc; // SVC = 3'b000, ... FIQ = 3'b100;
  assign {FastInterrupt, Interrupt, Undefined, PrefetchAbort, DataAbort, SoftwareInterrupt} = Exceptions;

  /*
  EXCEPTION BITS:
  {6'b000_000}
  {FIQ, IRQ, UNDEF _ PrefetchAbort, DataAbort, SWI}
  */

  always_comb
    begin
      if (reset) begin
        CPSR_update = {1'b1, 1'b1, 6'b01_0011}; // Supervisor Mode
      end
      else if (DataAbort) begin // data abort 
        CPSR_update = {1'b1, cpsr[6], 6'b01_0111}; // Data Abort Mode
      end
      else if (FastInterrupt) begin // FIQ
        CPSR_update = {1'b1, cpsr[6], 6'b01_0001}; // output fast interrupt (FIQ) mode
      end
      else if (Interrupt) begin // IRQ
        CPSR_update = {1'b1, cpsr[6], 6'b01_0010}; // IRQ mode
      end
      else if (PrefetchAbort) begin // prefetch abort
        CPSR_update = {1'b1, cpsr[6], 6'b01_0111}; // Prefetch Abort Mode
      end
      else if (Undefined) begin // undef
        CPSR_update = {1'b1, cpsr[6], 6'b01_1011}; // Undefined Mode
      end
      else if (SoftwareInterrupt) begin // Software interrupt
        CPSR_update = {1'b1, cpsr[6], 6'b01_0011}; // Supervisor Mode
      end
      else begin
        CPSR_update = {cpsr[7:0]};
      end
    end

/* The goal here is to see if a signal high triggers any one of these mode changes. However, if the signal is kept high,
   one can see the chance of the CPSR continuously changing the values inside the SPSR. Would we need to make a state machine
   such that we can restore the correct value of the SPSR back to the CPSR upon the MOVS PC R14 or SUBS PC R14 #4 instruction?

   In Summary, here's what we will want to do:
  1) On interrupt trigger, save SPSR_mode <= CPSR
  2) Save R14_mode <== Address of next/aborted/undef instruction
  3) Change Mode type in current CPSR (I assume this is done after the SPSR_mode is saved)
  4) Change PC to some value 0x4,8,c,10,18,1c

  To return (SPSR moved to CPSR and R14 moved to PC), we either (1) want to do SUBS or MOVS or (2) use Load multiple and restore PSR
*/
  always_ff @(posedge clk, posedge reset)
    begin
      if (reset) begin
        spsr[0] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (DataAbort) begin // data abort 
        spsr[1] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (FastInterrupt) begin // FIQ
        spsr[4] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (Interrupt) begin // IRQ
        spsr[3] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (PrefetchAbort) begin // prefetch abort
        spsr[1] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (Undefined) begin // undef
        spsr[2] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (SoftwareInterrupt) begin // Software interrupt
        spsr[0] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (Enable) begin
        cpsr <= {FlagsNext, cpsr[7:6], TFlag, cpsr[4:0]};
      end
    end

  assign SRdata = cpsr;


endmodule
