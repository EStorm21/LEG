module coprocessor_registers (input logic         clk, reset,
															// For CPU and MMU, enable without writeEn means read
															input logic         CPUWriteEn, CPUEn, MMUWriteEn, MMUEn, 
															input logic [14:0]   addr,
															input logic [31:0]  CPUWriteData, MMUWriteData,
															output logic        StallCP,
															output logic [31:0] rd, control);

logic [31:0] rf[14:0];
logic [31:0] wd;
integer i, j;

assign we = CPUWriteEn | MMUWriteEn;
assign re = (CPUEn & ~CPUWriteEn) | (MMUEn & ~MMUWriteEn);
mux2 #(32) wdmux(CPUWriteData, MMUWriteData, MMUWriteEn, wd);

// TODO: Decide if this is suffficient for conflicts between CPU and MMU
// Two writes or two reads simultaneously
assign StallCP = (CPUWriteEn & MMUWriteEn) | (CPUEn & MMUEn);

always_ff @(negedge clk) begin
  if (reset)
    rf <= '{15{32'b0}};
  else begin
    for (j = 0; j < 15; j = j+1) begin
      if(we & addr[j]) rf[j] <= wd;	
    end
  end
end

always_comb begin
  for(i = 0; i < 15; i = i+1) begin
    if(re & addr[i]) rd = rf[i];
  end
end

// always output control register
assign control = rf[1];

endmodule