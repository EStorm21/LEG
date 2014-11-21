module ahb_mux(input  logic HSEL,
               input  logic [31:0] HRDATA0, // HRDATA1, HRDATA2, HRDATA3,
               output logic [31:0] HRDATA);
               
  assign HRDATA = HRDATA0;
  // always_comb
  //   casez(HSEL)
  //     2'b?1: HRDATA <= HRDATA0;
  //     2'b10: HRDATA <= HRDATA1;
  //   endcase
endmodule