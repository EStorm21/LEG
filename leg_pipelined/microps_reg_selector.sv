module microps_reg_selector(input logic [31:0] InstrD,
							input logic 	   ReadyState,
							input logic [15:0] RegisterListNow,
							output logic [15:0]  RegisterListNext,
							output logic [3:0]   Rd);
always_comb
 begin
  if (ReadyState) begin
	if (InstrD[0] == 1'h1) begin
		RegisterListNext = {InstrD[15:1], 1'b0};
		Rd = 4'd0;
	end
	else if (InstrD[1:0] == 2'h2) begin
		RegisterListNext = {InstrD[15:2], 2'b0};
		Rd = 4'd1;
	end
	else if (InstrD[2:0] == 3'h4) begin
		RegisterListNext = {InstrD[15:3], 3'b0};
		Rd = 4'd2;
	end
	else if (InstrD[3:0] == 4'h8) begin
		RegisterListNext = {InstrD[15:4], 4'b0};
		Rd = 4'd3;
	end
	else if (InstrD[4:0] == 5'h10) begin
		RegisterListNext = {InstrD[15:5], 5'b0};
		Rd = 4'd4;
	end
	else if (InstrD[5:0] == 6'h20) begin
		RegisterListNext = {InstrD[15:6], 6'b0};
		Rd = 4'd5;
	end
	else if (InstrD[6:0] == 7'h40) begin
		RegisterListNext = {InstrD[15:7], 7'b0};
		Rd = 4'd6;
	end
	else if (InstrD[7:0] == 8'h80) begin
		RegisterListNext = {InstrD[15:8], 8'b0};
		Rd = 4'd7;
	end
	else if (InstrD[8:0] == 9'h100) begin
		RegisterListNext = {InstrD[15:9], 9'b0};
		Rd = 4'd8;
	end
	else if (InstrD[9:0] == 10'h200) begin
		RegisterListNext = {InstrD[15:10], 10'b0};
		Rd = 4'd9;
	end
	else if (InstrD[10:0] == 11'h400) begin
		RegisterListNext = {InstrD[15:11], 11'b0};
		Rd = 4'd10;
	end
	else if (InstrD[11:0] == 12'h800) begin
		RegisterListNext = {InstrD[15:12], 12'b0};
		Rd = 4'd11;
	end
	else if (InstrD[12:0] == 13'h1000) begin
		RegisterListNext = {InstrD[15:13], 13'b0};
		Rd = 4'd12;
	end
	else if (InstrD[13:0] == 14'h2000) begin
		RegisterListNext = {InstrD[15:14], 14'b0};
		Rd = 4'd13;
	end
	else if (InstrD[14:0] == 15'h4000) begin
		RegisterListNext = {InstrD[15:15], 15'b0};
		Rd = 4'd14;
	end
	else if (InstrD[15:0] == 16'h8000) begin
		RegisterListNext = {16'b0};
		Rd = 4'd15;
	end
  end
  // CONTINUE CHOOSING THE CORRECT REGISTER
  else begin 
	if (RegisterListNow[0] == 1'h1) begin
		RegisterListNext = {RegisterListNow[15:1], 1'b0};
		Rd = 4'd0;
	end
	else if (RegisterListNow[1:0] == 2'h2) begin
		RegisterListNext = {RegisterListNow[15:2], 2'b0};
		Rd = 4'd1;
	end
	else if (RegisterListNow[2:0] == 3'h4) begin
		RegisterListNext = {RegisterListNow[15:3], 3'b0};
		Rd = 4'd2;
	end
	else if (RegisterListNow[3:0] == 4'h8) begin
		RegisterListNext = {RegisterListNow[15:4], 4'b0};
		Rd = 4'd3;
	end
	else if (RegisterListNow[4:0] == 5'h10) begin
		RegisterListNext = {RegisterListNow[15:5], 5'b0};
		Rd = 4'd4;
	end
	else if (RegisterListNow[5:0] == 6'h20) begin
		RegisterListNext = {RegisterListNow[15:6], 6'b0};
		Rd = 4'd5;
	end
	else if (RegisterListNow[6:0] == 7'h40) begin
		RegisterListNext = {RegisterListNow[15:7], 7'b0};
		Rd = 4'd6;
	end
	else if (RegisterListNow[7:0] == 8'h80) begin
		RegisterListNext = {RegisterListNow[15:8], 8'b0};
		Rd = 4'd7;
	end
	else if (RegisterListNow[8:0] == 9'h100) begin
		RegisterListNext = {RegisterListNow[15:9], 9'b0};
		Rd = 4'd8;
	end
	else if (RegisterListNow[9:0] == 10'h200) begin
		RegisterListNext = {RegisterListNow[15:10], 10'b0};
		Rd = 4'd9;
	end
	else if (RegisterListNow[10:0] == 11'h400) begin
		RegisterListNext = {RegisterListNow[15:11], 11'b0};
		Rd = 4'd10;
	end
	else if (RegisterListNow[11:0] == 12'h800) begin
		RegisterListNext = {RegisterListNow[15:12], 12'b0};
		Rd = 4'd11;
	end
	else if (RegisterListNow[12:0] == 13'h1000) begin
		RegisterListNext = {RegisterListNow[15:13], 13'b0};
		Rd = 4'd12;
	end
	else if (RegisterListNow[13:0] == 14'h2000) begin
		RegisterListNext = {RegisterListNow[15:14], 14'b0};
		Rd = 4'd13;
	end
	else if (RegisterListNow[14:0] == 15'h4000) begin
		RegisterListNext = {RegisterListNow[15:15], 15'b0};
		Rd = 4'd14;
	end
	else if (RegisterListNow[15:0] == 16'h8000) begin
		RegisterListNext = {16'b0};
		Rd = 4'd15;
	end
  end
 end

endmodule
