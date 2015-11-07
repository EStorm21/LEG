module exception_priority(input  logic reset, UndefinedInstrE, SWIE, PrefetchAbortE, DataAbort, IRQ, FIQ, PipelineClearW,
                          input  logic IRQEnabled, FIQEnabled,
						              output logic IRQAssert, FIQAssert, PipelineClearD, ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionStallD, ExceptionKillStallD,
                          output logic [6:0] PCVectorAddress);

  // Notes
  // What if we get another exception before the mov r14, pc operation finishes? We still need to save it. 

  always_comb begin
    if (DataAbort) begin // data abort 
      // Flush D, E, M
      // ! Flush disallowed during stall. Need to flush anyways !
      // Need to insert mov into decode NOW or won't read correct PC. Else stallF
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM} = 3'b111;
      assign {ExceptionStallD, ExceptionKillStallD} = 2'b01;
    end

    else if (FIQ) begin // FIQ
    	// Only if FIQ enabled
      // FlushD, insert clear signal into D to advance with pipeline, but don't advance with uop. Handle that by asserting when not micropstallD and not PipelineClearE
     	// Next stallD, FlushE, but advance signal. 
     	// When signal is in W, assert FIQ
    end

    else if (IRQ)begin // IRQ
    	// Only if IRQ enabled
      // StallD, FlushD, insert clear signal into D to advance with pipeline, but don't advance with uop. Handle that by asserting when not micropstallD and not PipelineClearE
     	// Next FlushE, but advance signal. 
     	// When signal is in W, assert IRQ
    end

    else if (PrefetchAbortE) begin // prefetch abort
      // Flush D, E, M
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM} = 3'b111;
      assign {ExceptionStallD, ExceptionKillStallD} = 2'b00;
    end

    else if (UndefinedE) begin // undef
      // Flush D, E,  M
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM} = 3'b111;
      assign {ExceptionStallD, ExceptionKillStallD} = 2'b00;
    end

    else if (SWIE) begin // Software interrupt
      // Flush D
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM} = 3'b100;
      assign {ExceptionStallD, ExceptionKillStallD} = 2'b00;
    end

    else begin // Normal
      // don't stall or flush or FIQ or IRQ     
      assign {IRQAssert, FIQAssert} = 2'b00;
      assign  PipelineClearD = 1'b0;
      assign {ExceptionFlushD, ExceptionFlushE, ExceptionFlushM} = 3'b000;
      assign {ExceptionStallD, ExceptionKillStallD} = 2'b00;
    end
  end

  assign PCVectorAddress = {FIQAssert, IRQAssert, DataAbort, PrefetchAbortE, SWIE, UndefinedInstrE, reset};




