module exception_handler(input  logic clk, reset, UndefinedInstrE, SWIE, PrefetchAbortE, DataAbort, IRQ, FIQ, 
                         input  logic PipelineClearD, PipelineClearM,
                         input  logic IRQEnabled, FIQEnabled,
                         output logic IRQAssert, FIQAssert, PipelineClearF, ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW, ExceptionStallD,
                         output logic [6:0] PCVectorAddress,
                         output logic ExceptionResetMicrop, ExceptionSavePC, PCInSelect);

  // Notes
  // What if we get another exception before the mov r14, pc operation finishes? We still need to save it to the exception mode registers
  //--LDM: When loading into base register without writeback, must load into Rz. Last operation should then be mov Rn, Rz. This is to be consistent with data abort, which requires that base register not be updated if data abort occurs at any point.
  //--Need to change load and store to use Base Restored Abort Model
  
  logic DataAbortCycle2;

  always_comb begin
    if (DataAbort) begin // data abort 
      // Caught in M
      // Flush E, M, W
      // Stall D and reset microp
      // Next cycle save the PC and flush D
      // Need to insert mov into decode NOW or won't read correct PC
      // ! Flush disallowed during stall (e.g. during microps). Need insert mov micro op anyways. !
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearF = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1111;
      assign  ExceptionStallD = 1'b0;
    end

    else if (PrefetchAbortE | UndefinedE | SWIE) begin // prefetch abort
      // Caught in E
      // Flush D, M
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearF = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b1010;
      assign  ExceptionStallD = 1'b0;
    end

    else if (FIQ & FIQEnabled) begin // FIQ
      // Only if FIQ enabled
      // insert clear signal into F to advance with pipeline. When in D, FlushE except this signal so it passes through but is with the zero instruction, which cannot cause any type of exception. 
      // When this signal get to M, all real instructions have done W. raise the interrupt, flush D, and rejoice. 
      assign {IRQAssert, FIQAssert} = {0, PipelineClearM};
      assign  PipelineClearF = ~PipelineClearM; // Stop asserting when we are done with this process
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = {PipelineClearD & PipelineClearM, PipelineClearD & ~PipelineClearM, 2'b0};
      assign  ExceptionStallD = PipelineClearD & ~PipelineClearM;
    end

    else if (IRQ & IRQEnabled)begin // IRQ
      // see FIQ
      assign {IRQAssert, FIQAssert} = {PipelineClearM, 0};
      assign  PipelineClearF = ~PipelineClearM; // Stop asserting when we are done with this process
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = {PipelineClearD & PipelineClearM, PipelineClearD & ~PipelineClearM, 2'b0};
      assign  ExceptionStallD = PipelineClearD & ~PipelineClearM;
    end

    else begin // Normal
      // don't stall or flush or FIQ or IRQ     
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearF = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW} = 4'b0000;
      assign  ExceptionStallD = 1'b0;
    end
  end

  assign PCVectorAddress = {FIQAssert, IRQAssert, DataAbortCycle2, PrefetchAbortE, SWIE, UndefinedInstrE, reset};
  assign ExceptionSavePC = |PCVectorAddress; 

  assign PCInSelect = (PrefetchAbortE | UndefinedInstrE | SWIE | DataAbortCycle2) ? 1 : 0




