module shifter(input  logic [31:0] a,
			        input logic [31:0] b,
              output logic [31:0] shiftBE,
              input logic isRtype, isRSRtype, isLDRSTR_shift,
              input logic [1:0] prevCVflag, // [1] is C, [0] is V
              input logic [6:4] shiftOpCode_E,
              output logic      shifterCarryOutE);
 
 /***** Brief Description *******
 *
 * 32-BIT DATAPATH EXECUTE STAGE
 * Shifter is used to execute all various types of shifts for R type,
 * RSR type and load/store shift immediate types. 
 *
 ******************************/
// [6:5] is the shift bit 
reg[63:0] temp;


always_comb
begin
if (isRtype & ~isLDRSTR_shift) // R type
  begin
  	casex(a[6:5])
  		2'b00: begin // LSL
                shiftBE = b << a[11:7]; 
                if(a[11:7] == 5'b0)
                  shifterCarryOutE = prevCVflag[1];
                else
                  shifterCarryOutE = b[32-a[11:7]];
              end
  		2'b01:  begin // LSR
              if(a[11:7] == 5'b0) begin
                shiftBE = 32'b0;
                shifterCarryOutE = b[31];
              end
              else begin
                shiftBE = b >> a[11:7]; 
                shifterCarryOutE = b[a[11:7] - 1];
                end
              end
  		2'b10:  begin // ASR
              if(a[11:7] == 5'b0)begin
                if(b[31] == 1'b0) 
                  begin
                  shiftBE = 32'h0;
                  shifterCarryOutE = b[31];
                  end
                else // rm[31] = 1
                  begin
                  shiftBE = 32'hFFFFFFFF;
                  shifterCarryOutE = b[31];
                  end
                end
              else begin
                shiftBE = $signed(b) >>> a[11:7]; 
                shifterCarryOutE = b[a[11:7] - 1];
                end
              end
  		2'b11: begin 
              if (a[11:7] == 5'b0) begin  //RRX
                 shiftBE = (b >> 1) | {prevCVflag[1], 31'b0}; 
                 shifterCarryOutE = b[0];
                 end
              else begin // ROR
  			 	      temp = {b,b} >> a[11:7];
  			  	    shiftBE = temp[31:0];
                shifterCarryOutE = b[a[11:7] - 1];
                end
  		        end	// ROR or RRX
	 endcase
  end

else if (isRSRtype & ~isLDRSTR_shift) // RSR type - b is rm, a is rs
  begin
  	casex(shiftOpCode_E[6:5])
  		2'b00: begin // LSL
            if(a[7:0] == 0) begin 
              shifterCarryOutE = prevCVflag[1];
              shiftBE = b;
              end
            else if (a[7:0] < 32) begin
              shifterCarryOutE = b[32-a[7:0]];
              shiftBE = b << a[7:0];
              end
            else if (a[7:0] == 32) begin
              shifterCarryOutE = b[0];
              shiftBE = 32'b0;
              end
            else begin
              shifterCarryOutE = 1'b0;
              shiftBE = 32'b0;
              end
            end
  		2'b01: begin // LSR
            if(a[7:0] == 0) begin
              shifterCarryOutE = prevCVflag[1];
              shiftBE = b;
              end
            else if (a[7:0] < 32) begin
              shifterCarryOutE = b[a[7:0]-1];
              shiftBE = b >> a[7:0];
              end
            else if (a[7:0] == 32) begin
              shifterCarryOutE = b[31];
              shiftBE = 32'b0;
              end
            else begin
              shifterCarryOutE = 1'b0;
              shiftBE = 32'b0;
              end
            end
  		2'b10: begin // ASR
            if(a[7:0] == 0) begin
              shiftBE = b;
              shifterCarryOutE = prevCVflag[1];
              end
            else if (a[7:0] < 32) begin
              shiftBE = $signed(b) >>> a[7:0];
              shifterCarryOutE = b[a[7:0] - 1];
              end
            else  begin
              if (b[31] == 1'b0) begin
                shiftBE = 32'b0;
                shifterCarryOutE = b[31];
                end
              else begin
                shiftBE = 32'hFFFFFFFF;
                shifterCarryOutE = b[31];
                end
              end
            end
  		2'b11: begin // ROR 
              if (a[7:0] == 8'b0) begin
                shiftBE = b;
                shifterCarryOutE = prevCVflag[1];
                end
              else if (a[4:0] == 5'b0) begin
                shiftBE = b;
                shifterCarryOutE = b[31];
                end
              else begin
                temp = {b,b} >> a[4:0];
  			  	    shiftBE = temp[31:0];
                shifterCarryOutE = b[a[4:0]-1];
                end
  		      end 	
  	endcase
  end
else if (isLDRSTR_shift)
  begin
    shifterCarryOutE = 1'b0;
    casex(a[6:5])
      2'b00: begin // LSL
                shiftBE = b << a[11:7]; 
              end
      2'b01:  begin // LSR
                shiftBE = b >> a[11:7]; 
              end
      2'b10:  begin // ASR
                shiftBE = $signed(b) >>> a[11:7]; 
              end
      2'b11: begin 
              if (a[11:7] == 5'b0)  //RRX
                 shiftBE = (b >> 1) | {prevCVflag[1], 31'b0}; 
              else begin // ROR
                temp = {b,b} >> a[11:7];
                shiftBE = temp[31:0];
                end
             end // ROR or RRX
   endcase
  end
else
  begin
    shiftBE = b[31:0];
    if(b[11:8] == 4'b0)
        shifterCarryOutE = prevCVflag[1];
    else
        shifterCarryOutE = b[31];
  end

end
/*
// Here's a potential shifter
  integer shiftAmt;
  assign shiftAmt = InstrD[11:7];
  assign ShiftImmD = rd2D << shiftAmt;
  // Needs to set carry */
endmodule