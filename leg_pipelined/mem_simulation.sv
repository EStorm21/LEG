module mem_simulation
            #(parameter waitCycles = 1, blocksize = 4)
           (input  logic clk, we, re,
            input  logic [31:0] a,
            input  logic [31:0] wd,
            output logic [31:0] rd,
            output logic Valid);

  parameter countBits = $clog2(waitCycles) + 1;
  logic [10:0] count;
  logic [31:0] RAM[2097151:0];

  typedef enum logic [1:0] {IDLE, REQUESTED, RETRIEVED} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk) //, posedge reset)
    // if (reset) state <= READY;
    state <= nextstate;

  // next state logic
  always_comb
    case (state)
      IDLE:      if (re | we) begin nextstate <= REQUESTED; end else nextstate <= IDLE;
      REQUESTED: if (count <= waitCycles) begin nextstate <= REQUESTED; end else nextstate <= RETRIEVED;
      RETRIEVED: nextstate <= IDLE;
      default: nextstate <= IDLE;
    endcase

  // output logic
  assign Valid = (state == RETRIEVED);
  assign resetCount = (state == IDLE);

  // Create the counter for the memory wait time
  always_ff @(posedge clk, resetCount)
    begin
      if (resetCount == 1'b1)
      begin
        count = 'b0;
      end
      else
      begin
        count = count + 1'b1;
      end
    end  
  // ------------------ Actual Memory ----------------------
  initial
      // $readmemh("C:/Users/Max/Desktop/Google Drive/Clay-Wolkin/Testing/simTest.dat",RAM);
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/simTest.dat",RAM);
       $readmemh("C:/Users/estor_000/Downloads/simTest.dat",RAM);
      //$readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/1000_test/test_1000_7.dat",RAM);
      // $readmemh("C:/Users/maxwaug/Google Drive/Clay-Wolkin/Testing/1000_test/test_1000_7.dat",RAM);
       // $readmemh("F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat",RAM); //teqrs

  // Write a word
  always_ff @(posedge clk) 
  begin
    if (we) begin 
       RAM[a[22:2]] <= wd; 
    end
    rd <= RAM[a[22:2]];
  end   
endmodule