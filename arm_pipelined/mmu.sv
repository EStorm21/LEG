module mmu(input  logic clk, reset, MMUExtInt, CPUHRequest, 
           input  logic CPUHWrite, HReady, DataAccess, CPSR4,
           input  logic SBit, RBit, SupMode, WordAccess,
           input  logic [31:0] CPUHAddr, HRData, Dom,
           input  logic [6:0] TLBCont, Cont, // Cont[0] is the enable bit
           input  logic [17:0] TBase,
           output logic [31:0] HAddr, FAR,
           output logic [7:0] FSR,
           output logic HRequest, HWrite, CPUHReady, Fault);
// TODO: Assertions
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
  faulttype FaultCode, FaultCodeMid;
  logic Enable, SubAPFault, APFault, DomainFault, TerminalException;
  logic VectorException, APMidFault, FaultMid;
  logic [31:0] HAddrMid, PHRData;
  logic HRequestMid, CPUHReadyMid, HWriteMid; // Output signals from MMU
  logic [3:0] Domain, StoredDomain;
  logic [1:0] CurrAP, dPerm;
  assign FSR[7:4] = Domain;    // Define the location of the domain
  assign FAR = CPUHAddr;           // Set the FAR
  assign Enable = Cont[0];         // Add enable, disable
  
  // Bypass translation
  mux2 #(35) enableMux({CPUHAddr, CPUHRequest, CPUHWrite, HReady},
                       {HAddrMid, HRequestMid, HWriteMid, CPUHReadyMid}, Cont[0], 
                       {HAddr, HRequest, HWrite, CPUHReady});
  
  // PHRData flop: Hold onto the previous bus value for current translation
  flopenr #(32) HRDataFlop(clk, reset, HReady, HRData, PHRData);

  typedef enum logic [3:0] {READY, SECTIONTRANS, SECONDFETCH, 
                            SMALLTRANS, LARGETRANS, DONE} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk, posedge reset)
    if (reset | ~Enable) state <= READY;
    else state <= nextstate;

  // next state logic
  always_comb
    case (state)
      READY:        if (~(HReady & CPUHRequest & Enable) & Fault) begin 
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
  flopenr #(4) DomainFlop(clk, reset, 
    (state == SECTIONTRANS | state == SECONDFETCH), PHRData[8:5], Domain);

  // Output Logic

  // HAddrMid logic
  // TODO: Make this structural
  always_comb
    case (state)
      READY:        HAddrMid <= {TBase,  CPUHAddr[31:20], 2'b00};
      SECTIONTRANS: HAddrMid <= {PHRData[31:20], CPUHAddr[19:0]}; 
      DONE:         HAddrMid <= {TBase,  CPUHAddr[31:20]};
      SECONDFETCH:  HAddrMid <= {PHRData[31:10], CPUHAddr[19:12], 2'b0};
      SMALLTRANS:   HAddrMid <= {PHRData[31:12], CPUHAddr[11:0]};
      LARGETRANS:   HAddrMid <= {PHRData[31:16], CPUHAddr[15:0]};
      default: HAddrMid <= 32'h9999_9999;
    endcase

  // Fault and FaultCode output logic
  // TODO: Make this structural
  always_comb
    case (state)
      READY: 
        // Kill translation faults when the mmu is disabled
        if (~Enable) begin
          FaultCodeMid <= ALIGNFAULT;
          FaultMid     <= 1'b0;
        // Alignment fault on a word access
        end else if (~(CPUHAddr[1:0]==2'b00) & WordAccess) begin
          FaultCodeMid <= ALIGNFAULT;
          FaultMid     <= 1'b1;
        end else if (MMUExtInt & CPUHRequest) begin
          // TODO: Investigate the proper behavior of the external abort for translations
          //       Currently faults during first access are first level faults
          FaultCodeMid <= ETFIRSTFAULT;    // First level external translation abort
          FaultMid     <= 1'b1;
        end else begin
          // TODO: Implement alignment fault (currently no fault)
          FaultCodeMid <= ALIGNFAULT;      // Alignment fault 
          FaultMid     <= 1'b0;            // No Fault
        end
      SECTIONTRANS: 
        if (MMUExtInt) begin
          FaultCodeMid <= ESLINEFAULT;     // External abort on linefetch
          FaultMid     <= 1'b1;            // TODO: Sould this be linefetch or translation fault?
        end else if(PHRData[1:0] == 2'b0) begin
          FaultCodeMid <= TSFAULT;         // Section translation fault
          FaultMid     <= 1'b1;
        end else if(PHRData[8:5]) begin // Section Domain Fault
          FaultCodeMid <= DSFAULT;
          FaultMid     <= 1'b1;
        end else if(APFault) begin      // Section Access Permissions Fault
          FaultCodeMid <= PSFAULT;
          FaultMid     <= PPFAULT;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault (FaultCode = 4'bxxxx)
          FaultMid     <= 1'b0;
        end
      SECONDFETCH: 
        if (MMUExtInt) begin
          FaultCodeMid <= ESLINEFAULT;     // External abort on linefetch
          FaultMid     <= 1'b1;            // TODO: Sould this be linefetch or translation fault?
        end else if(PHRData[1:0] == 2'b0) begin
          FaultCodeMid <= TPFAULT;         // Page translation fault
          FaultMid     <= 1'b1;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault (FaultCode = 4'bxxxx)
          FaultMid     <= 1'b0;
        end
      SMALLTRANS:   
        if (MMUExtInt) begin
          FaultCodeMid <= ETSECONDTFAULT;  // Second Level external translation abort
          FaultMid     <= 1'b1;            // TODO: Should this be linefetch?
        end else if(DomainFault) begin
          FaultCodeMid <= DPFAULT;         // Page domain fault
          FaultMid     <= 1'b1;
        end else if(APFault) begin
          FaultCodeMid <= PPFAULT;         // Page SubPermissions Fault
          FaultMid     <= 1'b1;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault
          FaultMid     <= 1'b0;
        end
      LARGETRANS:
        if (MMUExtInt) begin
          FaultCodeMid <= ETSECONDTFAULT;  // Second Level external translation abort
          FaultMid     <= 1'b1;            // TODO: Should this be linefetch?
        end else if(DomainFault) begin
          FaultCodeMid <= DPFAULT;         // Page domain fault
          FaultMid     <= 1'b1;
        end else if(APFault) begin
          FaultCodeMid <= PPFAULT;         // Page SubPermissions fault
          FaultMid     <= 1'b1;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault 
          FaultMid     <= 1'b0;
        end
        default: begin FaultCodeMid <= ALIGNFAULT; FaultMid <= 1'b0; end
    endcase

  // TODO: Terminal Exceptions
  assign TerminalException = 1'b0;

  // Vector Exception Fault
  // TODO: See about PROG32 (processor is in 32 bit configuration)
  assign vectorRegion = HAddrMid < 32'h0000_001f;
  assign VectorException = (CPSR4 == 1'b0) & DataAccess & vectorRegion;


  // terminal and vector exception Logic
  always_comb
    if(TerminalException) begin
      FaultCode <= TERMFAULT;
      Fault <= 1'b1;
    end else if(VectorException) begin
      FaultCode <= VECTORFAULT;
      Fault <= 1'b1;
    end else begin
      FaultCode <= FaultCodeMid;
      Fault <= FaultMid;
    end

  // DomainMatch Logic
  always_comb
    case (Domain)
      4'b0000: dPerm = Dom[1:0];
      4'b0001: dPerm = Dom[3:2];
      4'b0010: dPerm = Dom[5:4];
      4'b0011: dPerm = Dom[7:6];
      4'b0100: dPerm = Dom[9:8];
      4'b0101: dPerm = Dom[11:10];
      4'b0110: dPerm = Dom[13:12];
      4'b0111: dPerm = Dom[15:14];
      4'b1000: dPerm = Dom[17:16];
      4'b1001: dPerm = Dom[19:18];
      4'b1010: dPerm = Dom[21:20];
      4'b1011: dPerm = Dom[23:22];
      4'b1100: dPerm = Dom[25:24];
      4'b1101: dPerm = Dom[27:26];
      4'b1110: dPerm = Dom[29:28];
      4'b1111: dPerm = Dom[31:30];
      default: dPerm = 2'b00;
    endcase
  
  // Domain Fault
  assign DomainFault = (dPerm == 2'b00);

  // Get the current access permissions
  // TODO: Make this structural
  always_comb
    case(state)
      SECTIONTRANS: CurrAP <= PHRData[11:10];
      SMALLTRANS:   case(CPUHAddr[11:10])
                      2'b00: CurrAP <= PHRData[5:4];
                      2'b01: CurrAP <= PHRData[7:6];
                      2'b10: CurrAP <= PHRData[9:8];
                      2'b11: CurrAP <= PHRData[11:10];
                    endcase
      LARGETRANS:   case(CPUHAddr[15:14])
                      2'b00: CurrAP <= PHRData[5:4];
                      2'b01: CurrAP <= PHRData[7:6];
                      2'b10: CurrAP <= PHRData[9:8];
                      2'b11: CurrAP <= PHRData[11:10];
                    endcase
      default:      CurrAP <= 2'b11; // Don't care
    endcase

  // Check for APFaults independant of domain
  always_comb
    casez({CurrAP, SBit, RBit})
      4'b0000: APMidFault <= 1'b1;
      4'b0010: APMidFault <= (SupMode & ~CPUHWrite);
      4'b0001: APMidFault <= ~CPUHWrite;
      4'b0011: APMidFault <= 1'b0; // Don't care
      4'b01??: APMidFault <= SupMode;
      4'b10??: APMidFault <= SupMode | ~CPUHWrite;
      4'b11??: APMidFault <= 1'b0;
    endcase

  // Access Permissions
  assign APFault = APMidFault & (dPerm == 2'b01);

  // FSR[3:0] output Logic
  always_comb
    if(TerminalException) begin
      FSR[3:0] <= 4'b0010;
    end else if (VectorException) begin
      FSR[3:0] <= 4'b0000;
    end else begin
      FSR[3:0] <= FaultCode;
    end

  // HRequestMid Logic
  assign HRequestMid = (state == SECONDFETCH) |
                    (state == SMALLTRANS)  |
                    (state == LARGETRANS)  |
                    (state == SECTIONTRANS) | 
                    ( (state == READY) & CPUHRequest );
  // CPUHReady Logic  
  assign CPUHReadyMid = (state == DONE);
  // HWriteMid Logic
  assign HWriteMid = ( (state == SECTIONTRANS) |
                    (state == LARGETRANS)   |
                    (state == SMALLTRANS) ) & CPUHWrite;

endmodule