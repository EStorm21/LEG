module test_dmem_ahb();

  logic        clk;
  logic        reset;
  logic        HReadyA;

  // Inputs: ahb_arbiter_3way
  logic        HWriteM, HReady;
  logic        HRequestM, HRequestF, HRequestT;
  logic [2:0]  HSizeM;
  logic [31:0] HAddrM, HAddrF, HAddrT;
  logic [31:0] HWDataM;

  // Outputs: ahb_arbiter_3way
  logic HReadyF, HReadyM, HReadyT;
  logic HWrite, HRequest;
  logic [2:0] HSize;
  logic [31:0] HWData, HAddr;

  // Outputs: ahb_lite
  logic [31:0] HRData;
  logic fiq, irq;

  // Asynchronous inputs driven by testbench
  logic [31:0] mHAddrM, mHWDataM;
  logic mHWriteM;

  // Synchronize inputs
  flopr #(32) addrSynchFlop(clk, reset, mHAddrM, HAddrM);
  flopr #(32) hwdataSynchFlop(clk, reset, mHWDataM, HWDataM);
  flopr #(1) writeMSynchFlop(clk, reset, mHWriteM, HWriteM);
  
  // instantiate device to be tested 
  ahb_arbiter_3way dut(.*);

  ahb_lite i_ahb_lite (
    .HCLK    (clk    ),
    .HRESETn (~reset),
    .HREQUEST(HRequest),
    .HSIZE   (HSize),
    .HADDR   (HAddr),
    .HWRITE  (HWrite),
    .HWDATA  (HWData),
    .HRDATA  (HRData),
    .HREADY  (HReady  ),
    .fiq     (fiq     ),
    .irq     (irq     )
  );

  // initialize test
  initial
    begin
      reset <= 1; 

      mHWriteM <= 1'b1;

      HRequestT <= 1'b0;
      HRequestM <= 1'b1;
      HRequestF <= 1'b0;

      HSizeM <= 3'b010;

      mHAddrM <= 32'h000abeef;
      HAddrF <= 32'h000bfeed;
      HAddrT <= 32'h000cdeed;
      mHWDataM <= 32'hdeadbeef;

      # 50; 
      reset <= 0;

      # 10;
      mHWDataM <= 32'hfeedbead;
      mHAddrM <= 32'h00000000;
      # 10;
      mHWDataM <= 32'h11111111;
      mHAddrM <= 32'h00000004;
      # 10;
      mHWDataM <= 32'h22222222;
      mHAddrM <= 32'h00000008;
      # 10;
      mHWDataM <= 32'h33333333;
      mHWriteM <= 1'b0;
      # 10;
      mHAddrM <= 32'h00000004;
      # 10;
      mHAddrM <= 32'h00000000;
      # 10;
      mHAddrM <= 32'h000abeef;
    end

  // generate clock to sequence tests
  always
    begin
      clk <= 1; # 5; clk <= 0; # 5;
    end
      
endmodule
