module dmem
           (input  logic clk, we, re,
            input  logic [31:0] a,
            input  logic [31:0] wd,
            output logic [31:0] rd,
            output logic Valid);

  logic [31:0] RAM[2097151:0];
  assign Valid = re | we;

  // ------------------ Actual Memory ----------------------
  initial
      //$readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/simTest.dat",RAM);
       $readmemh("C:/Users/estor_000/Downloads/simTest.dat",RAM);
      // $readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs
      // $readmemh("C:/Users/estor_000/Downloads/simTest.dat",RAM);
      // $readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs
       // $readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/mmu/sectionTest.dat",RAM);
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/mmu/python/pagetable.dat",RAM);
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/mmu/python/pagetable.dat",RAM);
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/mmu/sectionTest.dat",RAM);
      // $readmemh("/home/zakinator/LEG/simTest.dat",RAM);

  assign rd = RAM[a[22:2]];

  // Write a word
  always_ff @(posedge clk) 
  begin
    if (we) begin 
       RAM[a[22:2]] <= wd; 
    end
  end   


 endmodule
