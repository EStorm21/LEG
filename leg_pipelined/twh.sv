module twh #(parameter tagbits = 16) (
  //TODO: Organize and describe input and outputs
  input  logic               clk           , // Clock
  input  logic               reset         , // Asynchronous reset active low
  input  logic               Enable        ,
  input  logic               Fault         ,
  //input  logic               PStall        ,
  input  logic               IStall        ,
  input  logic               DStall        ,
  input  logic               PAReady       ,
  input  logic               CPUHRequest   ,
  input  logic               CPUHWrite     ,
  input  logic               DataAccess    ,
  input  logic               PrefetchAbort ,
  input  logic               HReady        ,
  input  logic               InstrExecuting,
  input  logic               InstrCancelled,
  input  logic [       17:0] TBase         ,
  input  logic [       31:0] CPUHAddr      ,
  input  logic [       31:0] HRData        ,
  input  logic [       31:0] PHRData       ,
  output logic [       31:0] HAddrMid      ,
  output logic [        3:0] statebits     ,
  //output logic               SelPrevAddr   ,
  output logic               HRequestMid   ,
  output logic               HWriteMid     ,
  output logic               CPUHReadyMid  ,
  output logic               TLBwe         ,
  output logic               MMUEn         ,
  output logic               MMUWriteEn    ,
  output logic               WDSel         ,
  inout  logic [tagbits+8:0] TableEntry      // Physical Tag to write data into TLB
);

 /***** Brief Description *******
 * First Created by Max Waugaman for Clay Wolkin 2015-2016
 * Perform table walks for address translation
 ******************************/

// ===========================================================================
// ================== TLB Control ============================================
// ===========================================================================
//FIXME: Placeholders
logic C, B;
logic [1:0] AP;
logic [3:0] Domain;
assign C = 1'b1;
assign B = 1'b1;
assign AP = 2'b11;
assign Domain = 4'b1111;
assign TableEntry = TLBwe ? {HAddrMid[31:32-tagbits], C, B, AP, Domain, 1'b1} : 'bz;


// ===========================================================================
// ================== Translation State Machine ==============================
// ===========================================================================

typedef enum logic [3:0] {READY, SECTIONTRANS, COARSEFETCH, FINEFETCH, 
  SMALLTRANS, LARGETRANS, TINYTRANS, INSTRFAULT, FAULTFSR, FAULTFAR} statetype;

// import mmu_pkg::statetype;
statetype state, nextstate;

// Output state to translation fault hardware
assign statebits = state;

// state register
always_ff @(posedge clk, posedge reset)
if (reset | ~Enable) state <= READY;
else state <= nextstate;

// next state logic
always_comb
case (state)
  READY:        if ( Enable & Fault ) begin
                  nextstate <= DataAccess ? FAULTFSR : INSTRFAULT;
                end else if (~HReady | ~CPUHRequest | ~Enable | Fault | reset | PAReady) begin 
                  nextstate <= READY;
                end else if(HRData[1:0] == 2'b01) begin
                  nextstate <= COARSEFETCH;
                end else if(HRData[1:0] == 2'b11) begin
                  nextstate <= FINEFETCH;
		end else begin
		    nextstate <= SECTIONTRANS;
		end
                //end else if(HRData[10] == 2'b10) begin
                //  nextstate <= SECTIONTRANS;
                //end else begin
		 // nextstate <= DataAccess ? FAULTFSR : INSTRFAULT;
		//end
  SECTIONTRANS: if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else begin
                  nextstate <= (HReady | ~CPUHRequest) ?  READY : SECTIONTRANS;
                end
  COARSEFETCH:  if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else if (~HReady) begin
                  nextstate <= COARSEFETCH;
                end else if(HRData[1:0] == 2'b01) begin 
                  nextstate <= LARGETRANS;
                end else begin
                  nextstate <= SMALLTRANS;
                end
  FINEFETCH:    if ( Fault ) begin
                  nextstate <= DataAccess ? READY: INSTRFAULT;
                end else if (~HReady) begin
                  nextstate <= FINEFETCH;
                end else if(HRData[1:0] == 2'b11) begin 
                  nextstate <= TINYTRANS;
                end else begin
                  nextstate <= SMALLTRANS;
                end
  SMALLTRANS:   if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else begin
                  nextstate <= (HReady | ~CPUHRequest) ? READY : SMALLTRANS;
                end
  LARGETRANS:   if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else begin
                  nextstate <= (HReady | ~CPUHRequest) ? READY : LARGETRANS;
                end
  TINYTRANS:    if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else begin 
                  nextstate <= (HReady | ~CPUHRequest) ? READY : TINYTRANS;
                end
  INSTRFAULT:   if (InstrExecuting | InstrCancelled) begin
                  nextstate <= READY;
                end else begin
                  nextstate <= INSTRFAULT;
                end
  FAULTFSR:     nextstate <= FAULTFAR;
  FAULTFAR:     nextstate <= READY;
default:        nextstate <= READY;
endcase

// ===========================================================================
// ========================= Translation Output Logic ========================
// ===========================================================================

// HAddrMid logic
// TODO: Make this structural
always_comb
case (state)
  READY:        HAddrMid = PAReady ? {TableEntry[tagbits+8:9], CPUHAddr[31-tagbits:0]} : 
                           {TBase,  CPUHAddr[31:20], 2'b00};
  SECTIONTRANS: HAddrMid = {PHRData[31:20], CPUHAddr[19:0]}; 
  COARSEFETCH:  HAddrMid = {PHRData[31:10], CPUHAddr[19:12], 2'b0};
  FINEFETCH:    HAddrMid = {PHRData[31:12], CPUHAddr[19:10], 2'b0};
  SMALLTRANS:   HAddrMid = {PHRData[31:12], CPUHAddr[11:0]};
  TINYTRANS:    HAddrMid = {PHRData[31:10], CPUHAddr[9:0]};
  LARGETRANS:   HAddrMid = {PHRData[31:16], CPUHAddr[15:0]};
  default: HAddrMid = 32'h9999_9999;
endcase

// SelPrevAddr 
//assign SelPrevAddr = (state == READY) & (PStall & ~IStall & ~DStall);

// HRequestMid Logic
assign HRequestMid = (state == COARSEFETCH) |
                (state == FINEFETCH)    & CPUHRequest |
                (state == SMALLTRANS)   & CPUHRequest |
                (state == TINYTRANS)    & CPUHRequest |
                (state == LARGETRANS)   & CPUHRequest |
                (state == SECTIONTRANS) & CPUHRequest | 
                ( (state == READY) & CPUHRequest );

// CPUHReady Logic  
assign CPUHReadyMid = (state == SECTIONTRANS) & HReady | 
                    (state == LARGETRANS)   & HReady |
                    (state == TINYTRANS)    & HReady |
                    (state == READY)        & PAReady |
                    (state == SMALLTRANS)   & HReady;

// HWriteMid Logic
assign HWriteMid = ( (state == SECTIONTRANS) |
                (state == LARGETRANS)   |
                (state == SMALLTRANS) |
                (state == TINYTRANS) ) & CPUHWrite;

// PAReady logic
// assign PAReady = MMUEn |
assign TLBwe = (state == SECTIONTRANS) |
              (state == LARGETRANS)   |
              (state == SMALLTRANS) |
              (state == TINYTRANS);

// CP15 Logic (WDSel, MMUEn, MMUWriteEn)
assign MMUEn = (state == READY) & HReady;
assign MMUWriteEn = (state == INSTRFAULT) & PrefetchAbort |
                    (state == FAULTFSR) | (state == FAULTFAR);
assign WDSel = (state == FAULTFSR);

endmodule
