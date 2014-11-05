module mem_simulation
            #(parameter waitCycles = 2, blocksize = 4)
           (input  logic clk, we, re,
            input  logic [31:0] a, wd,
            output logic [blocksize*32-1:0] rd,
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
      IDLE:                       if (re | we) begin nextstate <= REQUESTED; end else nextstate <= IDLE;
      REQUESTED:                  if (count < waitCycles) begin nextstate <= REQUESTED; end else nextstate <= RETRIEVED;
      RETRIEVED:                  nextstate <= IDLE;
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
      //$readmemh("C:/Users/estor_000/Downloads/simTest.dat",RAM);
      $readmemh("F:/Academics/Research Clay Wolkin - ARM v4/ARM/tests/simTest.dat",RAM); //teqrs
      
  // Return a block
  assign rd = {RAM[{a[22:4], 2'b00}], 
               RAM[{a[22:4], 2'b01}], 
               RAM[{a[22:4], 2'b10}], 
               RAM[{a[22:4], 2'b11}]}; 

  // Write to a word
  always_ff @(posedge clk)
    if (we) RAM[a[22:2]] <= wd;    
endmodule