module dmem
           (input  logic        clk, we, re, HSEL, 
            input  logic [31:0] a,
            input  logic [31:0] wd,
            output logic [31:0] rd,
            output logic Valid);

  parameter MEM_SIZE = 67108864;
  logic [31:0] RAM[MEM_SIZE:0];
  assign Valid = re | we;

  // ------------------ Actual Memory ----------------------
  integer i;
  initial
  begin
//  for(i = 0; i < MEM_SIZE; i = i + 1) begin
//    RAM[i] = 32'b0;
//  end
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/simTest.dat",RAM);
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/simTest.dat",RAM);
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/simTest.dat",RAM);
      //$readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/simTest.dat",RAM);
       // $readmemh("C:/Users/estor_000/Downloads/simTest.dat",RAM);
  //   $readmemh("F:/Academics/Research Clay Wolkin - ARM v4/LEG/tests/simTest.dat",RAM); //teqrs
       //$readmemh("C:/Users/estor_000/Downloads/simTest.dat",RAM);
     $readmemh("/proj/leg/sim/simTest.dat", RAM);
      // $readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs
       // $readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/mmu/sectionTest.dat",RAM);
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/mmu/python/pagetable.dat",RAM);
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/mmu/python/pagetable.dat",RAM);
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/mmu/sectionTest.dat",RAM);
      // $readmemh("/home/zakinator/LEG/simTest.dat",RAM);
      end
  assign rd = RAM[a[$clog2(MEM_SIZE)+1:2]];

  // Write a word
  always_ff @(posedge clk) 
  begin
    if (we & HSEL) begin 
       RAM[a[$clog2(MEM_SIZE)+1:2]] <= wd; 
    end
  end   


 endmodule
