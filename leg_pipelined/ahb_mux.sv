module ahb_mux #(parameter WIDTH = 32)
			  (input  logic [1:0]  HSEL,
               input  logic [WIDTH-1:0] HRDATA0, HRDATA1, // HRDATA2, HRDATA3,
               output logic [WIDTH-1:0] HRDATA);
               
  //assign HRDATA = HRDATA0;
  always_comb
    casez(HSEL)
      2'b?1: HRDATA <= HRDATA0;
      2'b10: HRDATA <= HRDATA1;
    endcase
endmodule