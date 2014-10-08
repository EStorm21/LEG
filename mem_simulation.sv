module mem_simulation(input  logic clk, we, re,
            input  logic [31:0] a, wd,
            output logic [31:0] rd,
            output logic valid);

  parameter waitCycles = 2; // How many cycles to wait for memory to be retireved
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
      IDLE:                       if (re | we) begin nextstate <= REQUESTED; end else nextstate <= IDLE;
      REQUESTED:                  if (count < waitCycles) begin nextstate <= REQUESTED; end else nextstate <= RETRIEVED;
      RETRIEVED:                  nextstate <= IDLE;
      default: nextstate <= IDLE;
    endcase

  // output logic
  assign valid = (state == RETRIEVED);
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
  
  initial
      $readmemh("C:/Users/Max/Desktop/Google Drive/Clay-Wolkin/Testing/ldr_strtest/ldr_str_ri.dat",RAM);
      // $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/ldr_strtest/ldr_str_ri.dat",RAM);
      // $readmemh("F:/Academics/Research Clay Wolkin - ARM v4/ARM/tests/orr_i/orr_i.dat",RAM); //adc
      //$readmemh("F:/Academics/Research Clay Wolkin - ARM v4/NewGithubversions/test_1000_7.dat",RAM); //Ivan's original
      //$readmemh("F:/Academics/Research Clay Wolkin - ARM v4/ARM/test_most_RType/test_most_RType.dat",RAM); //Rtype instr test
      //$readmemh("C:/Users/estor_000/Downloads/test_1000_7.dat",RAM);
      
  assign rd = RAM[a[22:2]]; // word aligned

  always_ff @(posedge clk)
    if (we) RAM[a[22:2]] <= wd;
      
endmodule