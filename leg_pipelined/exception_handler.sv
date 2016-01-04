module exception_handler(input  logic clk, reset, UndefinedInstrE, SWIE, PrefetchAbortE, DataAbort, IRQ, FIQ, 
                         input  logic IRQEnabled, FIQEnabled, StallD, StallE, StallM, PCWrPendingF, PCUpdateW,
                         output logic UndefinedInstrM, SWIM, PrefetchAbortM, DataAbortCycle2, IRQAssert, FIQAssert,
                         output logic interrupting, ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW, ExceptionStallD,
                         output logic [2:0] VectorPCnextF,
                         output logic ExceptionResetMicrop, ExceptionSavePC, 
                         output logic [1:0] PCInSelect);

  // Notes
  // What if we get another exception before the mov r14, pc operation finishes? We still need to save it to the exception mode registers
  //--LDM: When loading into base register without writeback, must load into Rz. Last operation should then be mov Rn, Rz. This is to be consistent with data abort, which requires that base register not be updated if data abort occurs at any point.
  //--Need to change load and store to use Base Restored Abort Model

  logic IRQEn_sync, FIQEn_sync, interruptPending, UnstallD;
  logic [6:0] PCVectorAddress;
  
  // Save some exception signals for M so CPSR works properly (see case in the FSM below)
  // Flush this if we are not in ready. Then some other exception got here first.
  flopenrc #(3) exceptionflop(clk, reset, ~StallM, ~(state == ready), {SWIE, PrefetchAbortE, UndefinedInstrE},
                                                                      {SWIM, PrefetchAbortM, UndefinedInstrM});

  flopenr #(1) pcwrflop(clk, reset, ~StallE, PCUpdateW, UnstallD);

  // CPSR acts like it is in the register file and changes on negedge clk. We want to delay these changes to the positive edge.
  flopr #(2) IRQ_FIQ_Sync(clk, reset, {IRQEnabled, FIQEnabled}, {IRQEn_sync, FIQEn_sync});

  // helper signal to enter or cancel interrupt sequence
  assign interruptPending = (FIQ & FIQEn_sync) | (IRQ & IRQEn_sync);


  // FSM states and boilerplate
  typedef enum {ready, DataAbort2, Int_E, Int_M, Int_W, Exception2} statetype;
  statetype state, nextState;
  always_ff @ (posedge clk)
    if (reset)  state <= ready;
    else        state <= nextState;

  // Mealy FSM similar to micropsfsm but with a different purpose
  // Next state logic
  always_comb
  case(state)
    // READY
    ready: begin
      if (DataAbort) begin // data abort 
        // Caught in M
        // Flush E, M, W (stall overrides flush for D, so don't care)
        // Stall D and reset microp
        // Next cycle save the PC and flush D
        {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1111;
        nextState = DataAbort2;
      end
      else if (PrefetchAbortE | UndefinedInstrE | SWIE) begin // single cycle exceptions
        // Caught in E
        // Flush D, M
        // In order to save the correct CPSR state, saving CPSR is delayed until
        // the exception is in M. This lets last good instruction set flags if it needs to.
        // This is handled by a flop outside the FSM
        {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1110;
        nextState = Exception2;
      end
      else if ( interruptPending ) begin // FIQ and IRQ
        // Only if FIQ or IRQ enabled
        // Wait for last instruction to exit D. When it is in E, FlushE. The zero instruction cannot cause any exception.
        // When the final instruction get to W raise the interrupt, save PCD+4 
        {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b0000;
        nextState = StallD ? ready : Int_E;
      end
      else begin // Normal
        // don't stall or flush or FIQ or IRQ or anything    
        {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b0000;
        nextState = ready;
      end
    end

    // NEXT CYCLE OF DATA ABORT
    DataAbort2: begin
      {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1011;
      nextState = ready;
    end

    // NEXT CYCLE OF PREFETCH ABORT / UNDEFINED / SWI
    Exception2: begin
      {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1011;
      nextState = ready;
    end

    // IRQ / FIQ: Final instruction in E. 
    // Stay here during PC writes because instead of any forwarding all PC writes stop everything until W. 
    // In those cases, W looks like E. RIP. Also the relevant signal is called PCWrPendingF. Why.
    Int_E: begin
      {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b0100;
      nextState = interruptPending ? ( (StallE | PCWrPendingF) ? Int_E : Int_M) : ready;
    end

    // IRQ / FIQ: Final instruction in M
    Int_M: begin
      {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b0100;
      nextState = interruptPending ? (StallE ? Int_M : Int_W) : ready;
    end

    // IRQ / FIQ: Final instruction in W
    Int_W: begin
      {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1000;
      nextState = interruptPending ? (StallE ? Int_W : ready) : ready;
    end

    default: begin
      {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b0000;
      nextState = ready;
    end
  endcase

  // (some) FSM Output logic
  assign interrupting = state != ready;
  assign DataAbortCycle2 = state == DataAbort2;
  assign FIQAssert = (state == Int_W) & FIQ & FIQEn_sync;
  assign IRQAssert = (state == Int_W) & IRQ & IRQEn_sync & ~FIQAssert;
  // Normally we StallD in interrupts so the next instruction address is preserved. 
  // But when an interrupt follows a branch we need to get the BTA into the decode stage.
  // By unstalling at the right time the PC gets in and the rest of the stuff is still thrown out.
  assign ExceptionStallD = (state == Int_E) | ((state == Int_M) & ~UnstallD) | ((state == ready) & (DataAbort | PrefetchAbortE | UndefinedInstrE | SWIE));


  // PC vectoring
  assign PCVectorAddress = {FIQAssert, IRQAssert, DataAbortCycle2, PrefetchAbortM, SWIM, UndefinedInstrM, reset};
  assign ExceptionSavePC = |PCVectorAddress; 
  exception_vector_address pcvec(PCVectorAddress, VectorPCnextF);

  // Data abort means abort microp too
  assign ExceptionResetMicrop = DataAbort;

  // Select correct PC to save (or normal behavior)
  always_comb
    if (IRQAssert | FIQAssert)
      PCInSelect = 2'b10; // PCD + 4
    else if (PrefetchAbortM | UndefinedInstrM | SWIM | DataAbortCycle2)
      PCInSelect = 2'b01; // PCD + 0
    else 
      PCInSelect = 2'b00; // PCD + 8

endmodule

