module exception_handler(input  logic clk, reset, UndefinedInstrE, SWIE, PrefetchAbortE, DataAbort, IRQ, FIQ, 
                         input  logic PipelineClearD, PipelineClearM,
                         input  logic IRQEnabled, FIQEnabled,
                         output logic UndefinedInstrM, SWIM, PrefetchAbortM, DataAbortCycle2, IRQAssert, FIQAssert,
                         output logic PipelineClearF, ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW, ExceptionStallD,
                         output logic [31:0] VectorPCnextF,
                         output logic ExceptionResetMicrop, ExceptionSavePC, 
                         output logic [1:0] PCInSelect);

  // Notes
  // What if we get another exception before the mov r14, pc operation finishes? We still need to save it to the exception mode registers
  //--LDM: When loading into base register without writeback, must load into Rz. Last operation should then be mov Rn, Rz. This is to be consistent with data abort, which requires that base register not be updated if data abort occurs at any point.
  //--Need to change load and store to use Base Restored Abort Model

  logic IRQEn_sync, FIQEn_sync;
  
  // DataAbortCycle2 serves as the abort signal for the rest of the processor
  flopr #(4) DataAbortFlop(clk, reset, {DataAbort,       SWIE, PrefetchAbortE, UndefinedInstrE},
                                       {DataAbortCycle2, SWIM, PrefetchAbortM, UndefinedInstrM});
  // CPSR acts like it is in the register file and changes on negedge clk. We want to delay these changes to the positive edge.
  flopr #(2) IRQ_FIQ_Sync(clk, reset, {IRQEnabled, FIQEnabled}, {IRQEn_sync, FIQEn_sync});

  always_comb begin
    if (DataAbort | DataAbortCycle2) begin // data abort 
      // Caught in M
      // Flush E, M, W (stall overrides flush for D)
      // Stall D and reset microp
      // Next cycle save the PC and flush D
      // Only one of DataAbort and DataAbortCycle2 can be asserted at any time, since we flushM
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearF = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = {1, DataAbort, 2'b11};
      assign  ExceptionStallD = DataAbort;
    end

    else if (PrefetchAbortE | UndefinedInstrE | SWIE) begin // prefetch abort
      // Caught in E
      // Flush D, M
      // In order to save the correct CPSR state, saving CPSR is delayed until
      // the exception is in M. This lets last good instruction set flags if it needs to.
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearF = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1010;
      assign  ExceptionStallD = 1'b0;
    end

    else if (FIQ & FIQEn_sync) begin // FIQ
      // Only if FIQ enabled
      // insert clear signal into F to advance with pipeline. When in D, FlushE except this signal so it passes through but is with the zero instruction, which cannot cause any type of exception. 
      // When this signal get to M, all real instructions have done W. raise the interrupt, save PCD+4 
      assign {IRQAssert, FIQAssert} = {0, PipelineClearM};
      assign  PipelineClearF = ~PipelineClearM; // Stop asserting when we are done with this process
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = {PipelineClearD & PipelineClearM, PipelineClearD & ~PipelineClearM, 2'b0};
      assign  ExceptionStallD = PipelineClearD & ~PipelineClearM;
    end

    else if (IRQ & IRQEn_sync)begin // IRQ
      // see FIQ
      assign {IRQAssert, FIQAssert} = {PipelineClearM, 1'b0};
      assign  PipelineClearF = ~PipelineClearM; // Stop asserting when we are done with this process
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = {PipelineClearD & PipelineClearM, PipelineClearD & ~PipelineClearM, 2'b0};
      assign  ExceptionStallD = PipelineClearD & ~PipelineClearM;
    end

    else begin // Normal
      // don't stall or flush or FIQ or IRQ or anything    
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearF = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b0000;
      assign  ExceptionStallD = 1'b0;
    end
  end

  // PC vectoring
  assign PCVectorAddress = {FIQAssert, IRQAssert, DataAbortCycle2, PrefetchAbortE, SWIE, UndefinedInstrE, reset};
  assign ExceptionSavePC = |PCVectorAddress; 
  exception_vector_address pcvec(PCVectorAddress, VectorPCnextF);

  // Data abort means abort microp too
  assign ExceptionResetMicrop = DataAbort;

  // Select correct PC to save (or normal behavior)
  always_comb
    if (IRQAssert | FIQAssert)
      PCInSelect = 2'b10; // PCD + 4
    else if (PrefetchAbortE | UndefinedInstrE | SWIE | DataAbortCycle2)
      PCInSelect = 2'b01; // PCD + 0
    else 
      PCInSelect = 2'b00; // PCD + 8

endmodule

