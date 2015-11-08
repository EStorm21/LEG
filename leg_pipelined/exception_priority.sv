module exception_priority(input  logic reset, UndefinedInstrE, SWIE, PrefetchAbortE, DataAbort, IRQ, FIQ, PipelineClearW,
                          input  logic IRQEnabled, FIQEnabled,
						              output logic IRQAssert, FIQAssert, PipelineClearD, ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionStallD, ExceptionFlushW,
                          output logic [6:0] PCVectorAddress);

  // Notes
  // What if we get another exception before the mov r14, pc operation finishes? We still need to save it to the exception mode registers
  //--LDM: When loading into base register without writeback, must load into Rz. Last operation should then be mov Rn, Rz. This is to be consistent with data abort, which requires that base register not be updated if data abort occurs at any point.
  //--Need to change load and store to use Base Restored Abort Model
  //--Need to update microp unit to be able to transition to ready and issue mov r14, pc from any state on data abort. Do this with reset on (~StallD & FlushD) | reset
  // We may really only need to flush D and M in most cases: The inserted mov goes to E, we just need to make sure whatever was in E does not do anything, and whatever was in F does not do anything. 
  // Also be careful about the seeminly innocuous zero instruction: If it happens in the wrong place it may read mode A and writeback to mode B. Flush E or something else to handle that.

  always_comb begin
    if (DataAbort) begin // data abort 
      // Flush D, E, M, W
      // Need to insert mov into decode NOW or won't read correct PC
      // ! Flush disallowed during stall (e.g. during microps). Need insert mov micro op anyways. !
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1111;
      assign  ExceptionStallD = 1'b0;
    end

    else if (FIQ) begin // FIQ
    	// Only if FIQ enabled
      // insert clear signal into F to advance with pipeline. When in D, FlushE except this signal so it passes through but is with the zero instruction, which cannot cause any type of exception. 
      // When this signal get to M, all real instructions have done W. raise the interrupt, flush D and M, and rejoice. 
    end

    else if (IRQ)begin // IRQ
    	// see FIQ
    end

    else if (PrefetchAbortE) begin // prefetch abort
      // Flush D, E, M
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1110;
      assign  ExceptionStallD = 1'b0;
    end

    else if (UndefinedE) begin // undef
      // Flush D, E,  M
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1110;
      assign  ExceptionStallD = 1'b0;
    end

    else if (SWIE) begin // Software interrupt
      // Flush D
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1000;
      assign  ExceptionStallD = 1'b0;
    end

    else begin // Normal
      // don't stall or flush or FIQ or IRQ     
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b0000;
      assign  ExceptionStallD = 1'b0;
    end
  end

  assign PCVectorAddress = {FIQAssert, IRQAssert, DataAbort, PrefetchAbortE, SWIE, UndefinedInstrE, reset};




