module ahb_mux(input  logic [2:0]  HSEL,
               input  logic [31:0] HRDATA0, HRDATA1, HRDATA2, // HRDATA3,
               output logic [31:0] HRDATA);
               
  //assign HRDATA = HRDATA0;
  always_comb
    casez(HSEL)
      3'b??1: HRDATA <= HRDATA0;
      3'b?10: HRDATA <= HRDATA1;
      3'b100: HRDATA <= HRDATA2;
    endcase
endmodule