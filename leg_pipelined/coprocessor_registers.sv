module coprocessor_registers (input logic         clk, reset,
															// For CPU and MMU, enable without writeEn means read
															input logic         CPUWriteEn, CPUEn, MMUWriteEn, MMUEn, 
															input logic [3:0]   addr,
															input logic [31:0]  CPUWriteData, MMUWriteData,
                              input logic [2:0]   opcode_2,
                              input logic [3:0]   CRm,
															output logic        StallCP, FlushI, FlushD, CleanI, CleanD, TLBFlushD, TLBFlushI,
															output logic [31:0] rd, control);

logic [31:0] rf[15:0];
logic [31:0] wd;
logic [15:0] reg_select;
integer i, j;



// ********************************
// ******* Address Decoding *******
// ********************************

// Convert 4 bit input address into 16 bit 1 hot signal
always_comb
  case(addr)
    4'b0000: reg_select = 16'h0001;
    4'b0001: reg_select = 16'h0002;
    4'b0010: reg_select = 16'h0004;
    4'b0011: reg_select = 16'h0008;
    4'b0100: reg_select = 16'h0010;
    4'b0101: reg_select = 16'h0020;
    4'b0110: reg_select = 16'h0040;
    4'b0111: reg_select = 16'h0080;
    4'b1000: reg_select = 16'h0100;
    4'b1001: reg_select = 16'h0200;
    4'b1010: reg_select = 16'h0400;
    4'b1011: reg_select = 16'h0800;
    4'b1100: reg_select = 16'h1000;
    4'b1101: reg_select = 16'h2000;
    4'b1110: reg_select = 16'h4000;
    4'b1111: reg_select = 16'h8000;
    default: reg_select = 16'h0000;
  endcase


// ***********************************
// ******* Register Read/Write *******
// ***********************************


assign we = CPUWriteEn | MMUWriteEn;
assign re = (CPUEn & ~CPUWriteEn) | (MMUEn & ~MMUWriteEn);
mux2 #(32) wdmux(CPUWriteData, MMUWriteData, MMUWriteEn, wd);

// TODO: Decide if this is suffficient for conflicts between CPU and MMU
// Two writes or two reads simultaneously
assign StallCP = (CPUWriteEn & MMUWriteEn) | (CPUEn & MMUEn);

always_ff @(negedge clk) begin
  if (reset)
    rf <= '{16{32'b0}};
  else begin
    for (j = 1; j < 16; j = j+1) begin // r0 is read only, so we start at r1
      if(we & reg_select[j]) rf[j] <= wd;	
    end
  end
end

always_comb begin
  for(i = 0; i < 16; i = i+1) begin
    if(re & reg_select[i]) rd = rf[i];
  end
end

// always output control register
assign control = rf[1];


// ********************************************
// ******* Register 7 - Cache Functions *******
// ********************************************

always_comb
  case ({we, reg_select[7], opcode_2, CRm})
    // opcode_2 000
    9'b1_1_000_0111: {FlushI, FlushD, CleanI, CleanD} = 4'b1100;
    9'b1_1_000_0101: {FlushI, FlushD, CleanI, CleanD} = 4'b1000;
    9'b1_1_000_0110: {FlushI, FlushD, CleanI, CleanD} = 4'b0100;
    9'b1_1_000_1011: {FlushI, FlushD, CleanI, CleanD} = 4'b0011;
    9'b1_1_000_1010: {FlushI, FlushD, CleanI, CleanD} = 4'b0001;
    9'b1_1_000_1111: {FlushI, FlushD, CleanI, CleanD} = 4'b1111;
    9'b1_1_000_1110: {FlushI, FlushD, CleanI, CleanD} = 4'b0101;

    // opcode_2 001
    9'b1_1_001_0111: {FlushI, FlushD, CleanI, CleanD} = 4'b1100;
    9'b1_1_001_0101: {FlushI, FlushD, CleanI, CleanD} = 4'b1000;
    9'b1_1_001_0110: {FlushI, FlushD, CleanI, CleanD} = 4'b0100;
    9'b1_1_001_1011: {FlushI, FlushD, CleanI, CleanD} = 4'b0011;
    9'b1_1_001_1010: {FlushI, FlushD, CleanI, CleanD} = 4'b0001;
    9'b1_1_001_1111: {FlushI, FlushD, CleanI, CleanD} = 4'b1111;
    9'b1_1_001_1110: {FlushI, FlushD, CleanI, CleanD} = 4'b0101;

    default: {FlushI, FlushD, CleanI, CleanD} = 4'b0000;
  endcase

always_comb
  case ({we, reg_select[8], opcode_2, CRm})
    // opcode_2 000
    9'b1_1_000_0111: {TLBFlushI, TLBFlushD} = 2'b11;
    9'b1_1_000_0101: {TLBFlushI, TLBFlushD} = 2'b10;
    9'b1_1_000_0110: {TLBFlushI, TLBFlushD} = 2'b01;

    // opcode_2 001
    9'b1_1_001_0111: {TLBFlushI, TLBFlushD} = 2'b11;
    9'b1_1_001_0101: {TLBFlushI, TLBFlushD} = 2'b10;
    9'b1_1_001_0110: {TLBFlushI, TLBFlushD} = 2'b01;

    default: {TLBFlushI, TLBFlushD} = 2'b00;
  endcase

endmodule