// arm_multi.v
// David_Harris@hmc.edu 25 December 2013
// Multi-cycle implementation of a subset of ARMv7

// 16 32-bit registers
// Data-processing instructions
//   ADD, SUB, AND, ORR
//   OP <cond> <S> <Rd>, <Rn>, #immediate
//   OP <cond> <S> <Rd>, <Rn>, <Rm>
//    Rd <- <Rn> OP <Rm>	    if (S) Update Status Flags
//    Rd <- <Rn> OP immediate	if (S) Update Status Flags
//   Instr[31:28] = cond
//   Instr[27:26] = Op = 00
//   Instr[25:20] = Funct
//                  [25]:    1 for immediate, 0 for register
//                  [24:21]: 0100 (ADD) / 0010 (SUB) /
//                           0000 (AND) / 1100 (ORR)
//                  [20]:    S (1 = update CPSR status Flags)
//   Instr[19:16] = Rn
//   Instr[15:12] = Rd
//   Instr[11:8]  = 0000
//   Instr[7:0]   = immed_8  (for #immediate type) / 
//                  0000<Rm> (for register type)
//   
// Load/Store instructions
//   LDR, STR
//   OP <Rd>, <Rn>, #offset
//    LDR: Rd <- Mem[<Rn>+offset]
//    STR: Mem[<Rn>+offset] <- Rd
//   Instr[31:28] = cond
//   Instr[27:26] = Op = 01 
//   Instr[25:20] = Funct
//                  [25]:    0 (A)
//                  [24:21]: 1100 (P/U/B/W)
//                  [20]:    L (1 for LDR, 0 for STR)
//   Instr[19:16] = Rn
//   Instr[15:12] = Rd
//   Instr[11:0]  = imm (zero extended)
//
// Branch instruction (PC <= PC + offset, PC holds 8 bytes past Branch Instr)
//   B
//   OP <target>
//    PC <- PC + 8 + imm << 2
//   Instr[31:28] = cond
//   Instr[27:25] = Op = 10
//   Instr[25:24] = Funct
//                  [25]: 1 (Branch)
//                  [24]: 0 (link)
//   Instr[23:0]  = offset (sign extend, shift left 2)
//   Note: no Branch delay slot on ARM
//
// Other:
//   R15 reads as PC+8
//   Conditional Encoding
//    cond  Meaning                       Flag
//    0000  Equal                         Z = 1
//    0001  Not Equal                     Z = 0
//    0010  Carry Set                     C = 1
//    0011  Carry Clear                   C = 0
//    0100  Minus                         N = 1
//    0101  Plus                          N = 0
//    0110  Overflow                      V = 1
//    0111  No Overflow                   V = 0
//    1000  Unsigned Higher               C = 1 & Z = 0
//    1001  Unsigned Lower/Same           C = 0 | Z = 1
//    1010  Signed greater/equal          N = V
//    1011  Signed less                   N != V
//    1100  Signed greater                N = V & Z = 0
//    1101  Signed less/equal             N != V | Z = 1
//    1110  Always                        any
//   Writes to register 15 (PC) are ignored 

module testbench();

  logic        clk;
  logic        reset;

  logic [31:0] WriteData, Adr;
  logic        MemWrite;

  // instantiate device to be tested
  top dut(clk, reset, WriteData, Adr, MemWrite);
  
  // initialize test
  initial
    begin
      reset <= 1; # 22; reset <= 0;
    end

  // generate clock to sequence tests
  always
    begin
      clk <= 1; # 5; clk <= 0; # 5;
    end

  // check results
  always @(negedge clk)
    begin
      if(MemWrite) begin
        if(Adr === 100 & WriteData === 7) begin
          $display("Simulation succeeded");
          $stop;
        end else if (Adr !== 96) begin
          $display("Simulation failed");
          $stop;
        end
      end
    end
endmodule

module top(input  logic        clk, reset, 
           output logic [31:0] WriteData, Adr, 
           output logic        MemWrite);

  logic [31:0] PC, Instr, ReadData;
  
  // instantiate processor and shared memory
  arm arm(clk, reset, MemWrite, Adr, 
          WriteData, ReadData);
  mem mem(clk, MemWrite, Adr, WriteData, ReadData);
endmodule

module mem(input  logic        clk, we,
           input  logic [31:0] a, wd,
           output logic [31:0] rd);

  logic [31:0] RAM[63:0];

  initial
      $readmemh("memfile.dat",RAM);

  assign rd = RAM[a[31:2]]; // word aligned

  always_ff @(posedge clk)
    if (we) RAM[a[31:2]] <= wd;
endmodule

module arm(input  logic        clk, reset,
           output logic        MemWrite,
           output logic [31:0] Adr, WriteData,
           input  logic [31:0] ReadData);

  logic [31:0] Instr;
  logic [3:0]  Flags;
  logic        PCWrite, RegWrite, FlagWrite, IRWrite;
  logic        AdrSrc;
  logic [1:0]  RegSrc, ALUSrcA, ALUSrcB, ImmSrc, ALUControl, ResultSrc;

  controller c(clk, reset, Instr[31:12], Flags, 
               PCWrite, MemWrite, RegWrite, FlagWrite, IRWrite,
               AdrSrc, RegSrc, ALUSrcA, ALUSrcB, ResultSrc,
               ImmSrc, ALUControl);
  datapath dp(clk, reset, Adr, WriteData, ReadData, Instr, Flags,
              PCWrite, RegWrite, FlagWrite, IRWrite,
              AdrSrc, RegSrc, ALUSrcA, ALUSrcB, ResultSrc,
              ImmSrc, ALUControl);
endmodule

module controller(input  logic         clk,
                  input  logic         reset,
                  input  logic [31:12] Instr,
                  input  logic [3:0]   Flags,
                  output logic         PCWrite,
                  output logic         MemWrite,
                  output logic         RegWrite,
                  output logic         FlagWrite,
                  output logic         IRWrite,
                  output logic         AdrSrc,
                  output logic [1:0]   RegSrc,
                  output logic [1:0]   ALUSrcA,
                  output logic [1:0]   ALUSrcB,
                  output logic [1:0]   ResultSrc,
                  output logic [1:0]   ImmSrc,
                  output logic [1:0]   ALUControl);
                  
  logic PCW, RegW, MemW, Branch, ALUOp, CondEx;

  mainfsm fsm(clk, reset, Instr, IRWrite, AdrSrc, 
              ALUSrcA, ALUSrcB, ResultSrc,
              PCW, RegW, MemW, Branch, ALUOp);
  conditional cond(Instr[31:28], Flags, CondEx);
  instrdec id(Instr, CondEx, PCW, RegW, MemW, Branch, ALUOp,
              PCWrite, MemWrite, RegWrite, FlagWrite,
              RegSrc, ImmSrc, ALUControl);
endmodule

module mainfsm(input  logic         clk,
               input  logic         reset,
               input  logic [31:12] Instr,
               output logic         IRWrite,
               output logic         AdrSrc,
               output logic [1:0]   ALUSrcA, ALUSrcB, ResultSrc,
               output logic         PCW, RegW, MemW, Branch, ALUOp);  
              
  typedef enum logic [3:0] {FETCH, DECODE, MEMADR, MEMRD, MEMWB, 
                            MEMWR, DATAR, DATAI, DATAWB, BRANCH, UNKNOWN} statetype;
  
  statetype state, nextstate;
  logic [12:0] controls;
  
  // state register
  always @(posedge clk or posedge reset)
    if (reset) state <= FETCH;
    else state <= nextstate;
  
  // next state table
  always_comb
    casex(state)
      FETCH:                     nextstate = DECODE;
      DECODE: case(Instr[27:26])
                2'b00: 
                  if (Instr[25]) nextstate = DATAI;
                  else           nextstate = DATAR;
                2'b01:           nextstate = MEMADR;
                2'b10:           nextstate = BRANCH;
                default:         nextstate = UNKNOWN;
              endcase
      DATAR:                     nextstate = DATAWB;
      DATAI:                     nextstate = DATAWB;
      MEMADR: 
        if (Instr[20])           nextstate = MEMRD;
        else                     nextstate = MEMWR;
      MEMRD:                     nextstate = MEMWB;
      default:                   nextstate = FETCH;
    endcase
    
  // state-dependent output logic
  always_comb
    case(state)
      FETCH:   controls = 13'b10001_010_01100; 
      DECODE:  controls = 13'b00000_010_01100;      
      DATAR:   controls = 13'b00000_000_00001;
      DATAI:   controls = 13'b00000_000_00011;
      DATAWB:  controls = 13'b00010_000_00000;
      MEMADR:  controls = 13'b00000_000_00010;
      MEMWR:   controls = 13'b00100_100_00000;
      MEMRD:   controls = 13'b00000_100_00000;
      MEMWB:   controls = 13'b00010_001_00000;
      BRANCH:  controls = 13'b01000_010_10010;
      default: controls = 13'bxxxxx_xxx_xxxxx;
    endcase
  assign {PCW, Branch, MemW, RegW, IRWrite,
          AdrSrc, ResultSrc,   
          ALUSrcA, ALUSrcB, ALUOp} = controls;
endmodule              

module instrdec(input  logic [31:12] Instr,
                input  logic         CondEx,
                input  logic         PCW, RegW, MemW, Branch, ALUOp,
                output logic         PCWrite,
                output logic         MemWrite,
                output logic         RegWrite,
                output logic         FlagWrite,
                output logic [1:0]   RegSrc,
                output logic [1:0]   ImmSrc,
                output logic [1:0]   ALUControl);

  logic FlagW, R15W;
  
  // instruction-dependent output logic    
  always_comb
    if (ALUOp) begin                 // which Data-processing Instr?
      case(Instr[24:21]) 
  	    4'b0100: ALUControl = 2'b00; // ADD
  	    4'b0010: ALUControl = 2'b01; // SUB
        4'b0000: ALUControl = 2'b10; // AND
  	    4'b1100: ALUControl = 2'b11; // ORR
  	    default: ALUControl = 2'bx;  // unimplemented
      endcase
      FlagW      = Instr[20]; // update Flags if S bit is set
    end else begin
      ALUControl = 2'b00; // ADD
      FlagW      = 0;     // don't update Flags
    end
  assign ImmSrc    = Instr[27:26];
  assign RegSrc[0] = (Instr[27:26] == 2'b10); // read PC on Branch
  assign RegSrc[1] = (Instr[27:26] == 2'b01); // read Rd on STR
  assign R15W      = (Instr[15:12] == 4'b1111) & RegW;

  // write controls are conditional
  assign FlagWrite = FlagW & CondEx;
  assign RegWrite  = RegW  & CondEx;
  assign MemWrite  = MemW  & CondEx;
  assign PCWrite   = ((R15W | Branch) & CondEx) | PCW;
endmodule

module conditional(input  logic [3:0] cond,
                   input  logic [3:0] Flags,
                   output logic       CondEx);
  
  logic neg, zero, carry, overflow, ge;
  
  assign {neg, zero, carry, overflow} = Flags;
  assign ge = (neg == overflow);
                  
  always_comb
    case(cond)
      4'b0000: CondEx = zero;             // EQ
      4'b0001: CondEx = ~zero;            // NE
      4'b0010: CondEx = carry;            // CS
      4'b0011: CondEx = ~carry;           // CC
      4'b0100: CondEx = neg;              // MI
      4'b0101: CondEx = ~neg;             // PL
      4'b0110: CondEx = overflow;         // VS
      4'b0111: CondEx = ~overflow;        // VC
      4'b1000: CondEx = carry & ~zero;    // HI
      4'b1001: CondEx = ~(carry & ~zero); // LS
      4'b1010: CondEx = ge;               // GE
      4'b1011: CondEx = ~ge;              // LT
      4'b1100: CondEx = ~zero & ge;       // GT
      4'b1101: CondEx = ~(~zero & ge);    // LE
      4'b1110: CondEx = 1'b1;             // Always
      default: CondEx = 1'bx;             // undefined
    endcase
endmodule

module datapath(input  logic        clk, reset,
                output logic [31:0] Adr, WriteData,
                input  logic [31:0] ReadData,
                output logic [31:0] Instr,
                output logic [3:0]  Flags,
                input  logic        PCWrite, RegWrite,
                input  logic        FlagWrite, IRWrite,
                input  logic        AdrSrc, 
                input  logic [1:0]  RegSrc, 
                input  logic [1:0]  ALUSrcA, ALUSrcB, ResultSrc,
                input  logic [1:0]  ImmSrc, ALUControl);

  logic [31:0] PCNext, PC;
  logic [31:0] ExtImm, SrcA, SrcB, Result;
  logic [31:0] Data, RD1, RD2, A, ALUResult, ALUOut;
  logic [3:0]  RA1, RA2;
  logic [3:0]  FlagsNext;

  // next PC logic
  flopenr #(32) pcreg(clk, reset, PCWrite, Result, PC);
  
  // memory logic
  mux2 #(32)    adrmux(PC, ALUOut, AdrSrc, Adr);
  flopenr #(32) ir(clk, reset, IRWrite, ReadData, Instr);
  flopr   #(32) datareg(clk, reset, ReadData, Data);
  
  // register file logic
  mux2 #(4)   ra1mux(Instr[19:16], 4'b1111, RegSrc[0], RA1);
  mux2 #(4)   ra2mux(Instr[3:0], Instr[15:12], RegSrc[1], RA2);
  regfile     rf(clk, RegWrite, RA1, RA2,
                 Instr[15:12], Result, Result, 
                 RD1, RD2);
  flopr #(32) srcareg(clk, reset, RD1, A);
  flopr #(32) wdreg(clk, reset, RD2, WriteData);
  extend      ext(Instr[23:0], ImmSrc, ExtImm);
  flopenr #(4)flagreg(clk, reset, FlagWrite, FlagsNext, Flags);

  // ALU logic
  mux3 #(32)  srcamux(A, PC, ALUOut, ALUSrcA, SrcA);
  mux3 #(32)  srcbmux(WriteData, ExtImm, 32'd4, ALUSrcB, SrcB);
  alu         alu(SrcA, SrcB, ALUControl, ALUResult, FlagsNext);
  flopr #(32) aluoutreg(clk, reset, ALUResult, ALUOut);
  mux3 #(32)  resmux(ALUOut, Data, ALUResult, ResultSrc, Result);
endmodule

module regfile(input  logic        clk, 
               input  logic        we3, 
               input  logic [3:0]  ra1, ra2, wa3, 
               input  logic [31:0] wd3, r15,
               output logic [31:0] rd1, rd2);

  logic [31:0] rf[14:0];

  // three ported register file
  // read two ports combinationally
  // write third port on rising edge of clock
  // register 15 reads PC+8 instead

  always_ff @(posedge clk)
    if (we3) rf[wa3] <= wd3;	

  assign rd1 = (ra1 == 4'b1111) ? r15 : rf[ra1];
  assign rd2 = (ra2 == 4'b1111) ? r15 : rf[ra2];
endmodule

module extend(input  logic [23:0] Instr,
              input  logic [1:0]  ImmSrc,
              output logic [31:0] ExtImm);
 
  always_comb
    case(ImmSrc) 
      2'b00:   ExtImm = {24'b0, Instr[7:0]};  // 8-bit unsigned immediate
      2'b01:   ExtImm = {20'b0, Instr[11:0]}; // 12-bit unsigned immediate 
      2'b10:   ExtImm = {{6{Instr[23]}}, Instr[23:0], 2'b00}; // Branch
      default: ExtImm = 32'bx; // undefined
    endcase             
endmodule

module alu(input  logic [31:0] a, b,
           input  logic [1:0]  ALUControl,
           output logic [31:0] Result,
           output logic [3:0]  Flags);

  logic        neg, zero, carry, overflow;
  logic [31:0] condinvb;
  logic [32:0] sum;

  assign condinvb = ALUControl[0] ? ~b : b;
  assign sum = a + condinvb + ALUControl[0];

  always_comb
    casex (ALUControl[1:0])
      2'b0?: Result = sum;
      2'b10: Result = a & b;
      2'b11: Result = a | b;
    endcase

  assign neg      = Result[31];
  assign zero     = (Result == 32'b0);
  assign carry    = (ALUControl[1] == 1'b0) && sum[32];
  assign overflow = (ALUControl[1] == 1'b0) && ~(a[31] ^ b[31] ^ ALUControl[0]) && 
                                                (a[31] ^ sum[31]); 
  assign Flags = {neg, zero, carry, overflow};
endmodule

module adder #(parameter WIDTH=8)
              (input  logic [WIDTH-1:0] a, b,
               output logic [WIDTH-1:0] y);
             
  assign y = a + b;
endmodule

module flopenr #(parameter WIDTH = 8)
                (input  logic             clk, reset, en,
                 input  logic [WIDTH-1:0] d, 
                 output logic [WIDTH-1:0] q);

  always_ff @(posedge clk, posedge reset)
    if (reset)   q <= 0;
    else if (en) q <= d;
endmodule

module flopr #(parameter WIDTH = 8)
              (input  logic             clk, reset,
               input  logic [WIDTH-1:0] d, 
               output logic [WIDTH-1:0] q);

  always_ff @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else       q <= d;
endmodule

module mux2 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, 
              input  logic             s, 
              output logic [WIDTH-1:0] y);

  assign y = s ? d1 : d0; 
endmodule

module mux3 #(parameter WIDTH = 8)
             (input  logic [WIDTH-1:0] d0, d1, d2,
              input  logic [1:0]       s, 
              output logic [WIDTH-1:0] y);

  assign y = s[1] ? d2 : (s[0] ? d1 : d0); 
endmodule