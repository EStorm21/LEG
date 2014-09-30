module imem(input  logic [31:0] a,
            output logic [31:0] rd);

  logic [31:0] RAM[2097151:0];

  initial
      $readmemh("F:/Academics/Research Clay Wolkin - ARM v4/ARM/tests/readc_rtest/cmp_r.dat",RAM); //CMP
      //$readmemh("F:/Academics/Research Clay Wolkin - ARM v4/NewGithubversions/test_1000_7.dat",RAM); //Ivan's original
      //$readmemh("F:/Academics/Research Clay Wolkin - ARM v4/ARM/test_most_RType/test_most_RType.dat",RAM); //Rtype instr test
      //$readmemh("C:/Users/estor_000/Downloads/test_1000_7.dat",RAM);

  assign rd = RAM[a[22:2]]; // word aligned
endmodule