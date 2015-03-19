module imem(input  logic [31:0] a,
            output logic [31:0] rd);

  logic [31:0] RAM[2097151:0];

  initial
      //$readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/and_rstest/and_rs.dat",RAM); //andrs
      //$readmemh("C:/Users/estor_000/Downloads/simTest.dat",RAM);
      // $readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs
      $readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs
      //$readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/orr_i/orr_i.dat",RAM); //ori
      //$readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/1000_test/test_1000_7.dat",RAM);
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/1000_test/test_1000_7.dat",RAM);
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/ldr_strtest/ldr_str_ri.dat",RAM);
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/memwrite_test/memrewrite.dat", RAM);
 

  assign rd = RAM[a[22:2]]; // word aligned
endmodule