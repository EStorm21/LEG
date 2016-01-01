module twh #(parameter tagbits = 16) (
  //TODO: Organize and describe input and outputs
  input  logic               clk           , // Clock
  input  logic               reset         , // Asynchronous reset active low
  input  logic               Enable        ,
  input  logic               Fault         ,
  input  logic               PAReady       ,
  input  logic               RequestPA   ,
  input  logic               DataAccess    ,
  input  logic               PrefetchAbort ,
  input  logic               HReadyT        ,
  input  logic               InstrExecuting,
  input  logic               InstrCancelled,
  input  logic [       17:0] TBase         ,
  input  logic [       31:0] VirtAdr      ,
  input  logic [       31:0] HRData        ,
  input  logic [       31:0] PHRData       ,
  output logic [       31:0] HAddrT ,
  output logic [        3:0] statebits     ,
  //output logic               SelPrevAddr   ,
  output logic               TLBwe         ,
  output logic               HRequestT,
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
assign TableEntry = TLBwe ? {HAddrT[31:32-tagbits], C, B, AP, Domain, 1'b1} : 'bz;


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
                end else if (~HReadyT | ~RequestPA | ~Enable | Fault | reset | PAReady) begin 
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
                  nextstate <=  READY;
                end
  COARSEFETCH:  if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else if (~HReadyT) begin
                  nextstate <= COARSEFETCH;
                end else if(HRData[1:0] == 2'b01) begin 
                  nextstate <= LARGETRANS;
                end else begin
                  nextstate <= SMALLTRANS;
                end
  FINEFETCH:    if ( Fault ) begin
                  nextstate <= DataAccess ? READY: INSTRFAULT;
                end else if (~HReadyT) begin
                  nextstate <= FINEFETCH;
                end else if(HRData[1:0] == 2'b11) begin 
                  nextstate <= TINYTRANS;
                end else begin
                  nextstate <= SMALLTRANS;
                end
  SMALLTRANS:   if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else begin
                  nextstate <= READY;
                end
  LARGETRANS:   if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else begin
                  nextstate <= READY;
                end
  TINYTRANS:    if ( Fault ) begin
                  nextstate <= DataAccess ? READY : INSTRFAULT;
                end else begin 
                  nextstate <= READY;
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

// HAddrT logic
// TODO: Make this structural
always_comb
case (state)
  READY:        HAddrT = PAReady ? {TableEntry[tagbits+8:9], VirtAdr[31-tagbits:0]} : 
                           {TBase,  VirtAdr[31:20], 2'b00};
  SECTIONTRANS: HAddrT = {PHRData[31:20], VirtAdr[19:0]}; 
  COARSEFETCH:  HAddrT = {PHRData[31:10], VirtAdr[19:12], 2'b0};
  FINEFETCH:    HAddrT = {PHRData[31:12], VirtAdr[19:10], 2'b0};
  SMALLTRANS:   HAddrT = {PHRData[31:12], VirtAdr[11:0]};
  TINYTRANS:    HAddrT = {PHRData[31:10], VirtAdr[9:0]};
  LARGETRANS:   HAddrT = {PHRData[31:16], VirtAdr[15:0]};
  default: HAddrT = 32'h9999_9999;
endcase

// SelPrevAddr 
//assign SelPrevAddr = (state == READY) & (PStall & ~IStall & ~DStall);

// HRequestT Logic
assign HRequestT = ( (state == COARSEFETCH) |
                (state == FINEFETCH)    & RequestPA |
                (state == SMALLTRANS)   & RequestPA |
               ( (state == READY) & RequestPA & ~PAReady) ) & Enable;

// CPUHReadyT Logic  
//assign CPUHReadyTMid = PAReady;
//assign CPUHReadyTMid = (state == SECTIONTRANS) & HReadyT | 
//                    (state == LARGETRANS)   & HReadyT |
//                    (state == TINYTRANS)    & HReadyT |
//                    (state == READY)        & PAReady |
//                    (state == SMALLTRANS)   & HReadyT;

// PAReady logic
// assign PAReady = MMUEn |
assign TLBwe = (state == SECTIONTRANS) |
              (state == LARGETRANS)   |
              (state == SMALLTRANS) |
              (state == TINYTRANS);

// CP15 Logic (WDSel, MMUEn, MMUWriteEn)
assign MMUEn = (state == READY) & HReadyT;
assign MMUWriteEn = (state == INSTRFAULT) & PrefetchAbort |
                    (state == FAULTFSR) | (state == FAULTFAR);
assign WDSel = (state == FAULTFSR);

endmodule
