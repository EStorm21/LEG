module alu(input  logic [31:0] a, b,
           input  logic [3:0]  ALUControl,
           output logic [31:0] Result,
           output logic [3:0]  Flags,
           input logic previousCflag,
           output logic doNotWriteReg);

  logic        neg, zero, carry, overflow, invertB, aluCarry;
  logic [31:0] condinvb;
  logic [32:0] sum;

 
// ---------------------------- MAJOR BLOCK ADDED HERE -----------------------
// checks for bits 4'b001? 
  assign invertB = (ALUControl[3:1] == 3'b001) ||   //SUB, RSB
                   (ALUControl[3:1] == 3'b011) ||   //SBC, RSC
                   (ALUControl[3:0] == 4'b1010) ||  //CMP
                   (ALUControl[3:0] == 4'b1111);    //MVN
                 
  always_comb
    casex (ALUControl[3:0])
      4'b0010: aluCarry = 1'b1;   // SUB, RSB
      4'b0011: aluCarry = 1'b1;   // SUB, RSB
      4'b0101: aluCarry = previousCflag;   // ADC
      4'b0110: aluCarry = previousCflag;   // SBC
      4'b0111: aluCarry = previousCflag;   // RSC
      4'b1010: aluCarry = 1'b1;   // CMP
      default: aluCarry = 1'b0;
    endcase
  
  assign condinvb = invertB ? ~b : b;
  assign sum = a + condinvb + aluCarry;
 
  always_comb
    casex (ALUControl[3:0])
      4'b0000: Result = a & b; // AND, TST
      4'b1000: Result = a & b; // AND, TST
      4'b0001: Result = a ^ b; // EOR, TEQ
      4'b1001: Result = a ^ b; // EOR, TEQ
      4'b0010: Result = sum;   // SUB, RSB
      4'b0011: Result = sum;   // SUB, RSB
      4'b0100: Result = sum;   // ADD, ADC, SBC, RSC
      4'b0101: Result = sum;   // ADD, ADC, SBC, RSC
      4'b0110: Result = sum;   // ADD, ADC, SBC, RSC
      4'b0111: Result = sum;   // ADD, ADC, SBC, RSC
      4'b1010: Result = sum;   // CMP, CMN
      4'b1011: Result = sum;   // CMP, CMN
      4'b1100: Result = a | b; // ORR
      4'b1101: Result = sum;   // MOV, MVN
      4'b1111: Result = sum;   // MOV, MVN
      4'b1110: Result = a & ~b; // BIC
      //default: Result = 32'bx;
    endcase

  assign doNotWriteReg = (ALUControl[3:2] == 2'b10); // TST, TEQ, CMP, CMN


  // Order is NZCV
  assign neg      = Result[31];
  assign zero     = (Result == 32'b0);
  assign carry    = ((ALUControl[3:0] == 4'b0100/*add*/ | ALUControl[3:0] == 4'b0010/*sub*/ | ALUControl[3:0] == 4'b0011/*rsc*/ | ALUControl[3:0] == 4'b0101/*adc*/
          | ALUControl[3:0] == 4'b0110/*sbc*/ | ALUControl[3:0] == 4'b0111/*rsc*/ | ALUControl[3:0] == 4'b1010/*cmp*/ | ALUControl[3:0] == 4'b1011/*cmn*/) & sum[32]);
  assign overflow = (ALUControl[3:0] == 4'b0100/*add*/ | ALUControl[3:0] == 4'b0010/*sub*/ | ALUControl[3:0] == 4'b0011/*rsc*/ | ALUControl[3:0] == 4'b0101/*adc*/
          | ALUControl[3:0] == 4'b0110/*sbc*/ | ALUControl[3:0] == 4'b0111/*rsc*/ | ALUControl[3:0] == 4'b1010/*cmp*/ | ALUControl[3:0] == 4'b1011/*cmn*/) & 
          ~(a[31] ^ b[31] ^ (ALUControl[3:0] == 4'b0010 /*sub*/ | ALUControl[3:0] == 4'b0011/*rsc*/ | ALUControl[3:0] == 4'b0110/*sbc*/ | ALUControl[3:0] == 4'b0111/*rsc*/
          | ALUControl[3:0] == 4'b1010/*cmp*/)) 
          & (a[31] ^ sum[31]); 

  assign Flags = {neg, zero, carry, overflow};
endmodule