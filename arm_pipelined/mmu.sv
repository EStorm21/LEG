module mmu(input  logic clk, reset, MMUExtInt, CPUHRequest, 
           input  logic CPUHWrite, HReady, DataAccess, CPSR4,
           input  logic [31:0] CPUHAddr, HRData, Dom,
           input  logic [6:0] TLBCont, Cont, // Cont[0] is the enable bit
           input  logic [17:0] TBase,
           output logic [31:0] HAddr, FAR,
           output logic [7:0] FSR,
           output logic HRequest, HWrite, CPUHReady, Fault);

  // Note that the faults are listed in priority order.
  typedef enum logic [3:0] {TERMFAULT = 4'b0010, 
                            VECTORFAULT = 4'b0000, 
                            ALIGNFAULT = 4'b0001,    // Alignment Fault = 0b00x1 (not just 0b0001) 
                            ETFIRSTFAULT = 4'b1100, 
                            ETSECONDTFAULT= 4'b1110, 
                            TSFAULT = 4'b0101,
                            TPFAULT= 4'b0111, 
                            DSFAULT = 4'b1001, 
                            DPFAULT = 4'b1011, 
                            PSFAULT = 4'b1101, 
                            PPFAULT = 4'b1111,
                            ESLINEFAULT = 4'b0100, 
                            EPLINEFAULT = 4'b0110, 
                            ESNLINEFAULT = 4'b1000,
                            EPNLINEFAULT = 4'b1010
                            } faulttype;
  faulttype FaultCode;
  logic Enable, SubAPFault, APFault, DomainFault, TerminalException, VectorException;
  logic [31:0] HAddrOut, PHRData;
  logic [3:0] Domain;
  assign FSR[7:4] = CurrDomain;    // Define the location of the domain
  assign Enable = Cont[0];   // Add enable, disable
  mux2 #(32) enableMux(CPUHAddr, HAddrOut, Cont[0], HAddr);
  assign FAR = CPUHAddr;

  // PHRData flop: Hold onto the previous bus value for current translation
  flopenr #(32) HRDataFlop(clk, reset, HReady, HRData, PHRData);

  

  typedef enum logic [3:0] {READY, SECTIONTRANS, SECONDFETCH, 
                            SMALLTRANS, LARGETRANS, DONE} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:        if (~(HReady & CPUHRequest & Enable)) begin 
                      nextstate <= READY;
                    end else if(HRData[1:0] == 2'b01) begin
                      nextstate <= SECONDFETCH;
                    end else begin
                      nextstate <= SECTIONTRANS;
                    end
      SECTIONTRANS: nextstate <= HReady ? DONE : SECTIONTRANS;
      SECONDFETCH:   if (~HReady) begin
                      nextstate <= SECONDFETCH;
                    end else if(HRData[1:0] == 2'b01) begin 
                      nextstate <= LARGETRANS;
                    end else begin
                      nextstate <= SMALLTRANS;
                    end
      SMALLTRANS:   nextstate <= HReady ? DONE : SMALLTRANS;
      LARGETRANS:   nextstate <= HReady ? DONE : LARGETRANS;
      DONE:         nextstate <= READY;
    default:        nextstate <= READY;
    endcase

  // Domain flop: Hold onto the translation domain for faults. Update when domain is read
  flopenr #(4) DomainFlop(clk, reset, (state == SECTIONTRANS | state == SECONDFETCH), PHRData[8:5], Domain);

  // Output Logic

  // HAddrOut logic
  // TODO: Make this structural
  always_comb
    case (state)
      READY:        HAddrOut <= {TBase,  CPUHAddr[31:20], 2'b00};
      SECTIONTRANS: HAddrOut <= {PHRData[31:20], CPUHAddr[19:0]}; 
      DONE:         HAddrOut <= {TBase,  CPUHAddr[31:20]};
      SECONDFETCH:   HAddrOut <= {PHRData[31:10], CPUHAddr[19:12], 2'b0};
      SMALLTRANS:   HAddrOut <= {PHRData[31:12], CPUHAddr[11:0]};
      LARGETRANS:   HAddrOut <= {PHRData[31:16], CPUHAddr[15:0]};
      default: HAddrOut <= 32'h9999_9999;
    endcase

  // Fault and FaultCode output logic
  // TODO: Make this structural
  always_comb
    case (state)
      READY:        
        if (MMUExtInt & CPUHRequest) begin
          // TODO: Investigate the proper behavior of the external abort for translations
          //       Currently faults during first access are first level faults
          FaultCode <= ETFIRSTFAULT;    // First level external translation abort
          Fault     <= 1'b1;
        end else begin
          // TODO: Implement alignment fault (currently no fault)
          FaultCode <= ALIGNFAULT;      // Alignment fault 
          Fault     <= 1'b0;            // No Fault
        end
      SECTIONTRANS: 
        if (MMUExtInt) begin
          FaultCode <= ESLINEFAULT;     // External abort on linefetch
          Fault     <= 1'b1;            // TODO: Sould this be linefetch or translation fault?
        end else if(PHRData[1:0] == 2'b0) begin
          FaultCode <= TSFAULT;         // Section translation fault
          Fault     <= 1'b1;
        end else if(DomainFault) begin // Section Domain Fault
          FaultCode <= DSFAULT;
          Fault     <= 1'b0;
        end else if(APFault) begin      // Section Access Permissions Fault
          FaultCode <= PSFAULT;
          Fault     <= PPFAULT;
        end else begin
          FaultCode <= ALIGNFAULT;      // No Fault (FaultCode = 4'bxxxx)
          Fault     <= 1'b0;
        end
      SECONDFETCH: 
        if (MMUExtInt) begin
          FaultCode <= ESLINEFAULT;     // External abort on linefetch
          Fault     <= 1'b1;            // TODO: Sould this be linefetch or translation fault?
        end else if(PHRData[1:0] == 2'b0) begin
          FaultCode <= TPFAULT;         // Page translation fault
          Fault     <= 1'b1;
        end else begin
          FaultCode <= ALIGNFAULT;      // No Fault (FaultCode = 4'bxxxx)
          Fault     <= 1'b0;
        end
      SMALLTRANS:   
        if (MMUExtInt) begin
          FaultCode <= ETSECONDTFAULT;  // Second Level external translation abort
          Fault     <= 1'b1;            // TODO: Should this be linefetch?
        end else if(DomainFault) begin
          FaultCode <= DPFAULT;         // Page domain fault
          Fault     <= 1'b1;
        end else if(SubAPFault) begin
          FaultCode <= PPFAULT;         // Page SubPermissions Fault
          Fault     <= 1'b1;
        end else begin
          FaultCode <= ALIGNFAULT;      // No Fault
          Fault     <= 1'b0;
        end
      LARGETRANS:
        if (MMUExtInt) begin
          FaultCode <= ETSECONDTFAULT;  // Second Level external translation abort
          Fault     <= 1'b1;            // TODO: Should this be linefetch?
        end else if(DomainFault) begin
          FaultCode <= DPFAULT;         // Page domain fault
          Fault     <= 1'b1;
        end else if(SubAPFault) begin
          FaultCode <= PPFAULT;         // Page SubPermissions fault
          Fault     <= 1'b1;
        end else begin
          FaultCode <= ALIGNFAULT;      // No Fault 
          Fault     <= 1'b0;
        end
        default: begin FaultCode <= ALIGNFAULT; Fault <= 1'b0; end
    endcase

  // TODO: Terminal Exceptions, Alignment

  // Vector Exception Fault
  // TODO: See about PROG32 (processor is in 32 bit configuration)
  assign VectorException = (CPSR4 == 0) & DataAccess & (HAddrOut < 32'h0000_001f);

  // DomainMatch Logic
  assign DomainFault = 1'b0;

  // Access Permissions Logic
  assign APFault = 1'b0;

  // SubAccess Permissions Logic
  assign SubAPFault = 1'b0;

  // FSR[3:0] output Logic
  always_comb
    if(TerminalException) begin
      FSR[3:0] <= 4'b0010;
    end else if (VectorException) begin
      FSR[3:0] <= 4'b0000;
    end else begin
      FSR[3:0] <= FaultCode;
    end


  // HRequest Logic
  assign HRequest = (state == SECONDFETCH) |
                    (state == SMALLTRANS)  |
                    (state == LARGETRANS)  |
                    (state == SECTIONTRANS) | 
                    ( (state == READY) & CPUHRequest );
  // CPUHReady Logic  
  assign CPUHReady = (state == DONE);
  // CPUHWrite Logic
  assign HWrite = ( (state == SECTIONTRANS) |
                    (state == LARGETRANS)   |
                    (state == SMALLTRANS) ) & CPUHWrite;

endmodule