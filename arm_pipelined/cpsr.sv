module cpsr(input  logic        clk, reset, 
              input logic [3:0] FlagsNext,
              input logic [5:0] Exceptions, 
              input logic [4:0] Mode,
              input logic [1:0] IrqFiq, // disables interrupt/fast-interrupts when set
              input logic       Thumb,  // 0 indicates ARM execution, 1 indicates Thumb.
              input logic       Enable, readSR, writeSR,
              output logic [11:0] SRdata);

  // CPSR: 3'b000
  // SPSR: SVC(0), Abort(1), Undef(2), IRQ(3), FIQ(4) ; 
  logic FastInterrupt, Interrupt, Undefined, PrefetchAbort, DataAbort, SoftwareInterrupt;


  // CPSR and SPSR of different modes
  logic [11:0] sr[4:0]; 
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


  always_ff @(posedge clk, posedge reset)
    begin
      if (reset) begin
        sr[0] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (DataAbort) begin // data abort 
        sr[1] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (FastInterrupt) begin // FIQ
        sr[4] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (Interrupt) begin // IRQ
        sr[3] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (PrefetchAbort) begin // prefetch abort
        sr[1] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (Undefined) begin // undef
        sr[2] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (SoftwareInterrupt) begin // Software interrupt
        sr[0] <= cpsr;
        cpsr <= {cpsr[11:8], CPSR_update};
      end
      else if (Enable) begin
        cpsr <= {FlagsNext, cpsr[7:0]};
      end
    end

  assign SRdata = cpsr;

endmodule