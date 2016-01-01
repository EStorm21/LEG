module tfh (
  //TODO: Organize and describe inputs and outputs
  input logic clk,    // Clock
  input logic reset,
  input logic Enable,
  input logic CPSR4,
  input logic [3:0] statebits,
  input logic MMUExtInt,
  input logic DRequestPA,
  input logic WordAccess,
  input logic DataAccess,
  input logic SBit,
  input logic RBit,
  input logic SupMode,
  input logic InstrExecuting,
  input logic HReadyT,
  input logic HWrite,
  input logic [31:0] PHRData,
  input logic [31:0] VirtAdr,
  output logic PrefetchAbort, DataAbort, WDSel,
  output logic [3:0] CP15A,
  output logic [3:0] Domain, FaultCode,
  output logic Fault
);

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
  faulttype FaultCodeMid;


  // Fault Signals
  logic        APFault, DomainFault, TerminalException;
  logic        VectorException, APMidFault, FaultMid;
  logic [1:0]  CurrAP, dPerm;
  logic [31:0] FSR, Dom;

  // ===========================================================================
  // ============================== Fault Output Logic =========================
  // ===========================================================================

  typedef enum logic [3:0] {READY, SECTIONTRANS, COARSEFETCH, FINEFETCH, 
  SMALLTRANS, LARGETRANS, TINYTRANS, INSTRFAULT, FAULTFSR, FAULTFAR} statetype;
  statetype state;
  assign state = statetype'(statebits);

  // Domain flop: Hold onto the translation domain for faults. 
  // Update when domain is read
  flopenr #(4) DomainFlop(clk, reset, 
    (state == SECTIONTRANS | state == COARSEFETCH | state == FINEFETCH), PHRData[8:5], Domain);
  
  always_comb
    case (state)
      READY: 
        // Kill translation faults when the mmu is disabled
        if (~Enable) begin
          FaultCodeMid <= ALIGNFAULT;
          FaultMid     <= 1'b0;
        // Alignment fault on a word access
        end else if (~(VirtAdr[1:0]==2'b00) & WordAccess) begin
          FaultCodeMid <= ALIGNFAULT;
          FaultMid     <= 1'b1;
        end else if (MMUExtInt) begin
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
        end else if(DomainFault) begin     // Section Domain Fault
          FaultCodeMid <= DSFAULT;
          FaultMid     <= 1'b1;
        end else if(APFault) begin         // Section Access Permissions Fault
          FaultCodeMid <= PSFAULT;
          FaultMid     <= PPFAULT;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault (FaultCode = 4'bxxxx)
          FaultMid     <= 1'b0;
        end
      FINEFETCH: 
        if (MMUExtInt) begin
          FaultCodeMid <= ESLINEFAULT;     // External abort on linefetch
          FaultMid     <= 1'b1;            // TODO: Sould this be linefetch or translation fault?
        end else if(PHRData[1:0] == 2'b0) begin
          FaultCodeMid <= TPFAULT;         // Page translation fault
          FaultMid     <= 1'b1;
        end else if(DomainFault) begin
          FaultCodeMid <= DPFAULT;         // Page domain fault
          FaultMid     <= 1'b1;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault (FaultCode = 4'bxxxx)
          FaultMid     <= 1'b0;
        end
      COARSEFETCH: 
        if (MMUExtInt) begin
          FaultCodeMid <= ESLINEFAULT;     // External abort on linefetch
          FaultMid     <= 1'b1;            // TODO: Sould this be linefetch or translation fault?
        end else if(PHRData[1:0] == 2'b0) begin
          FaultCodeMid <= TPFAULT;         // Page translation fault
          FaultMid     <= 1'b1;
        end else if(DomainFault) begin
          FaultCodeMid <= DPFAULT;         // Page domain fault
          FaultMid     <= 1'b1;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault (FaultCode = 4'bxxxx)
          FaultMid     <= 1'b0;
        end
      SMALLTRANS:   
        if (MMUExtInt) begin
          FaultCodeMid <= ETSECONDTFAULT;  // Second Level external translation abort
          FaultMid     <= 1'b1;            // TODO: Should this be linefetch?
        end else if(APFault) begin
          FaultCodeMid <= PPFAULT;         // Page SubPermissions Fault
          FaultMid     <= 1'b1;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault
          FaultMid     <= 1'b0;
        end
      TINYTRANS:   
        if (MMUExtInt) begin
          FaultCodeMid <= ETSECONDTFAULT;  // Second Level external translation abort
          FaultMid     <= 1'b1;            // TODO: Should this be linefetch?
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
        end else if(APFault) begin
          FaultCodeMid <= PPFAULT;         // Page SubPermissions fault
          FaultMid     <= 1'b1;
        end else begin
          FaultCodeMid <= ALIGNFAULT;      // No Fault 
          FaultMid     <= 1'b0;
        end
        default: begin FaultCodeMid <= ALIGNFAULT; FaultMid <= 1'b0; end
    endcase

  // Terminal Exceptions
  assign TerminalException = 1'b0;

  // Vector Exception Fault
  // TODO: See about PROG32 (processor is in 32 bit configuration)
  assign vectorRegion = VirtAdr < 32'h0000_001f;
  assign VectorException = (CPSR4 == 1'b0) & DataAccess & vectorRegion;

  // terminal and vector exception Logic
  // TODO: Separate behavior for instruction and data fault
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
  assign Dom = 32'hffff_ffff; // Full permissions to all domains
  // assign Dom = CP15RD;
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

  // Access Permissions
  always_comb
    case(state)
      SECTIONTRANS: CurrAP <= PHRData[11:10];
      SMALLTRANS:   case(VirtAdr[11:10])
                      2'b00: CurrAP <= PHRData[5:4];
                      2'b01: CurrAP <= PHRData[7:6];
                      2'b10: CurrAP <= PHRData[9:8];
                      2'b11: CurrAP <= PHRData[11:10];
                    endcase
      TINYTRANS:    CurrAP <= PHRData[5:4];
      LARGETRANS:   case(VirtAdr[15:14])
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
      4'b0010: APMidFault <= (SupMode & (~HWrite | ~DRequestPA)); // TODO: Fix this to handle correct writes
      4'b0001: APMidFault <= (~HWrite | ~DRequestPA);
      4'b0011: APMidFault <= 1'b0; // Don't care
      4'b01??: APMidFault <= SupMode;
      4'b10??: APMidFault <= SupMode | ~(~HWrite | ~DRequestPA);
      4'b11??: APMidFault <= 1'b0;
    endcase

  // Access Permissions
  assign APFault = APMidFault & (dPerm == 2'b01);

  // Instruction Tracker
  // --- Track whether an instruction was executed.
  // --- If an instruction that causes a memory fault is executed, 
  // --- raise a prefetch abort
  assign instr_abort = (Fault & ~DataAccess) & ~(state == INSTRFAULT);

  // Instruction Fault
  assign PrefetchAbort = (state == INSTRFAULT) & InstrExecuting;

  // Data Abort
  assign DataAbort = Fault & DataAccess;

  // CP15 Logic (WDSel, MMUEn, MMUWriteEn)
  assign MMUEn = (state == READY) & HReadyT;
  assign MMUWriteEn = (state == INSTRFAULT) & PrefetchAbort |
                      (state == FAULTFSR) | (state == FAULTFAR);
  assign WDSel = (state == FAULTFSR);

  // Write Address (CP15A) Logic
  always_comb
    case(state)
      FAULTFSR: CP15A <= 4'b0101;  // Write to the FSR register (r5)
      FAULTFAR: CP15A <= 4'b0110;  // Write to the FAR register (r6)
      READY:    CP15A <= 4'b0011;  // Read the domain register  (r3)
      default:  CP15A <= 4'b0101;
    endcase

  // FSR Output Logic
  always_comb
    if(TerminalException) begin
      FSR[3:0] <= 4'b0010;
    end else if (VectorException) begin
      FSR[3:0] <= 4'b0000;
    end else begin
      FSR[3:0] <= FaultCode;
    end


endmodule
