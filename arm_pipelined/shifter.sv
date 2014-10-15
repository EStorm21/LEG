module shifter(input  logic [31:0] a,
			        input logic [31:0] b,
              output logic [31:0] shiftBE,
              input logic isRtype, isRSRtype, 
              input logic [1:0] prevCVflag // [1] is C, [0] is V
              );
 

// [6:5] is the shift bit 
reg[63:0] temp;

//integer rotateAmount;
always_comb
if (isRtype) // R type
  begin
  	casex(a[6:5])
  		2'b00: shiftBE = b << a[11:7]; // LSL
  		2'b01: shiftBE = b >> a[11:7]; // LSR
  		2'b10: shiftBE = b >>> a[11:7]; // ASR
  		2'b11: begin 
              if (a[11:7] == 5'b0) begin  //RRX
                 shiftBE = (b >> 1) | (prevCVflag[1] << 31); 
                 end
              else begin // ROR
  			 	     temp = {b,b} >> a[11:7];
  			  	    shiftBE = temp[31:0];
              end
  		        end	// ROR or RRX
	endcase
  end

else if (isRSRtype) // RSR type
  begin
  	casex(a[6:5])
  		2'b00: shiftBE = b << a; // LSL
  		2'b01: shiftBE = b >> a; // LSR
  		2'b10: shiftBE = b >>> a; // ASR
  		2'b11:begin 
            temp = {b,b} >> a;
  			  	shiftBE = temp[31:0];
  		end 	// ROR or RRX
  	endcase
  end
else
  shiftBE = b[31:0];

/*
// Here's a potential shifter
  integer shiftAmt;
  assign shiftAmt = InstrD[11:7];
  assign ShiftImmD = rd2D << shiftAmt;
  // Needs to set carry */
endmodule