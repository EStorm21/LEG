module mmu(input  logic clk, reset, MMUExtInt, CPUHRequest, CPUHWrite, HReady,
           input  logic [31:0] CPUHAddr, HRData, Dom,
           input  logic [6:0] TLBCont, Cont, // Cont[0] is the enable bit
           input  logic [17:0] TBase,
           output logic [31:0] HAddr, FAR,
           output logic [7:0] FSR,
           output logic HRequest, HWrite, CPUHReady);

  // Add enable, disable
  logic Enable;
  logic [31:0] HAddrOut, PHRData;
  assign Enable = Cont[0];
  mux2 #(32) enableMux(CPUHAddr, HAddrOut, Cont[0], HAddr);

  // PHRData flop: Hold onto the previous bus value for current translation
  flopenr #(32) HRDataFlop(clk, reset, HReady, HRData, PHRData);

  typedef enum logic [3:0] {READY, SECTIONTRANS, FIRSTFETCH, 
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
                      nextstate <= FIRSTFETCH;
                    end else begin
                      nextstate <= SECTIONTRANS;
                    end
      SECTIONTRANS: nextstate <= HReady ? DONE : SECTIONTRANS;
      FIRSTFETCH:   if (~HReady) begin
                      nextstate <= FIRSTFETCH;
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

  // Output Logic

  // TODO: Make this structural
  always_comb
    case (state)
      READY:        HAddrOut <= {TBase,  CPUHAddr[31:20], 2'b00};
      SECTIONTRANS: HAddrOut <= {PHRData[31:20], CPUHAddr[19:0]}; 
      DONE:         HAddrOut <= {TBase,  CPUHAddr[31:20]};
      FIRSTFETCH:   HAddrOut <= {PHRData[31:10], CPUHAddr[19:12], 2'b0};
      SMALLTRANS:   HAddrOut <= {PHRData[31:12], CPUHAddr[11:0]};
      LARGETRANS:   HAddrOut <= {PHRData[31:16], CPUHAddr[15:0]};
      default: HAddrOut <= 32'h9999_9999;
    endcase

  // HRequest Logic
  assign HRequest = (state == FIRSTFETCH) |
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