module ahb_mux #(parameter WIDTH = 8) (
	input  logic [ 1:0] HSEL   ,
	input  logic [WIDTH-1:0] IN0, IN1, 
	output logic [WIDTH-1:0] OUT 
);
               
  //assign OUT = IN0;
  always_comb
    casez(HSEL)
      2'b?1: OUT <= IN0;
      2'b10: OUT <= IN1;
    endcase
endmodule