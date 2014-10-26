module alu(input  logic [31:0] aIn, bIn,
           input  logic [3:0]  ALUControl,
           output logic [31:0] Result,
           output logic [3:0]  Flags,
           input logic [1:0] previousCVflag, // [1] = C flag, [0] = V flag
           output logic doNotWriteReg,
           input  logic shifterCarryOut_cycle2E, shifterCarryOut_cycle1E, RselectE, prevRSRstateE);

  logic        neg, zero, carry, overflow, invertB, aluCarry, reverseInputs, shifterCarryOutE;
  logic [31:0] condinvb, a, b;
  logic [32:0] sum;

  always_comb 
  begin
    if(prevRSRstateE)
      shifterCarryOutE = shifterCarryOut_cycle2E;
    else
      shifterCarryOutE = shifterCarryOut_cycle1E;
  end
  /*
  always_comb
    casex({prevRSRstateE,RselectE})
      2'b00: shifterCarryOutE = shifterCarryOut_cycle1E;
      2'b01: shifterCarryOutE = shifterCarryOut_cycle1E;
      2'b11: shifterCarryOutE = shifterCarryOut_cycle2E;
      default: shifterCarryOutE = shifterCarryOut_cycle1E;
    endcase*/
  //assign shifterCarryOutE = RSRselectE ? shifterCarryOut_cycle2E : shifterCarryOut_cycle1E;
  //assign shifterCarryOutE = RselectE ? shifterCarryOut_cycle1E : shifterCarryOut_cycle2E;
  //assign shifterCarryOutE = shifterCarryOut_cycle2E;

  assign reverseInputs = (ALUControl[3:0] == 4'b0011 || //RSB
                          ALUControl[3:0] == 4'b0111); //RSC

  mux2 #(32)  alu_inA(aIn, bIn, reverseInputs, a); 
  mux2 #(32)  alu_inB(bIn, aIn, reverseInputs, b); 

 
// ---------------------------- MAJOR BLOCK ADDED HERE -----------------------
// checks for bits 4'b001? 
  assign invertB = (ALUControl[3:1] == 3'b001) ||   //SUB, RSB
                   (ALUControl[3:1] == 3'b011) ||   //SBC, RSC
                   (ALUControl[3:0] == 4'b1010) ||  //CMP
                   (ALUControl[3:0] == 4'b1111);    //MVN
                 
  always_comb
    casex (ALUControl[3:0]) // -------------------------rename to FUNCT
      4'b0010: aluCarry = 1'b1;   // SUB, RSB
      4'b0011: aluCarry = 1'b1;   // SUB, RSB
      4'b0101: aluCarry = previousCVflag[1];   // ADC
      4'b0110: aluCarry = previousCVflag[1];   // SBC
      4'b0111: aluCarry = previousCVflag[1];   // RSC
      4'b1010: aluCarry = 1'b1;   // CMP
      default: aluCarry = 1'b0;
    endcase
  
  assign condinvb = invertB ? ~b : b;
  assign sum = a + condinvb + aluCarry;
 
  always_comb
    casex (ALUControl[3:0]) // ------------------------ change to 2 bit type of operation
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
      4'b1101: Result = b;   // MOV
      4'b1111: Result = ~b;   // MOV, MVN
      4'b1110: Result = a & ~b; // BIC
      //default: Result = 32'bx;
    endcase

  assign doNotWriteReg = (ALUControl[3:2] == 2'b10); // TST, TEQ, CMP, CMN


  // Order is NZCV
  assign neg      = Result[31];
  assign zero     = (Result == 32'b0);
  // FLAG HANDLING
  always_comb
    casex (ALUControl[3:0])
      4'b0000:  begin // AND
                  carry = shifterCarryOutE;
                  overflow = previousCVflag[0];
                end 
      4'b1000:  begin // TST
                  carry = shifterCarryOutE;
                  overflow = previousCVflag[0];
                end 
      4'b0001:  begin // EOR
                  carry = shifterCarryOutE;
                  overflow = previousCVflag[0];
                end 
      4'b1001:  begin // TEQ
                  carry = shifterCarryOutE;
                  overflow = previousCVflag[0];
                end 
      4'b0010:  begin // SUB
                  carry = sum[32];
                  overflow = (a[31] ^ b[31]) & (a[31] ^ sum[31]);
                end
      4'b0011:  begin // RSB
                  carry = sum[32];
                  overflow = (a[31] ^ b[31]) & (a[31] ^ sum[31]);
                end
      4'b0100:  begin // ADD
                  carry = sum[32];
                  overflow = ~(a[31] ^ b[31]) & (a[31] ^ sum[31]);
                end
      4'b0101:  begin // ADC
                  carry = sum[32]; 
                  overflow = ~(a[31] ^ b[31]) & (a[31] ^ sum[31]);
                end
      4'b0110:  begin // SBC
                  carry = sum[32];
                  overflow = (a[31] ^ b[31]) & (a[31] ^ sum[31]);
                end
      4'b0111:  begin // RSC
                  carry = sum[32];
                  overflow = (a[31] ^ b[31]) & (a[31] ^ sum[31]);
                end
      4'b1010:  begin // CMP
                  carry = sum[32];
                  overflow = (a[31] ^ b[31]) & (a[31] ^ sum[31]);
                end
      4'b1011:  begin // CMN
                  carry = sum[32];
                  overflow = ~(a[31] ^ b[31]) & (a[31] ^ sum[31]);
                end
      4'b1100:  begin // ORR
                  carry = shifterCarryOutE;
                  overflow = previousCVflag[0];
                end 
      4'b1101:  begin // MOV
                  carry = shifterCarryOutE;
                  overflow = previousCVflag[0];
                end 
      4'b1111:  begin // MVN
                  carry = shifterCarryOutE;
                  overflow = previousCVflag[0];
                end 
      4'b1110:  begin // BIC
                  carry = shifterCarryOutE;
                  overflow = previousCVflag[0];
                end 
      //default: Result = 32'bx;
    endcase


  //assign carry    = ((ALUControl[3:0] == 4'b0100/*add*/ | ALUControl[3:0] == 4'b0010/*sub*/ | ALUControl[3:0] == 4'b0011/*rsc*/ | ALUControl[3:0] == 4'b0101/*adc*/
  //        | ALUControl[3:0] == 4'b0110/*sbc*/ | ALUControl[3:0] == 4'b0111/*rsc*/ | ALUControl[3:0] == 4'b1010/*cmp*/ | ALUControl[3:0] == 4'b1011/*cmn*/) & sum[32]);
  //assign overflow = (ALUControl[3:0] == 4'b0100/*add*/ | ALUControl[3:0] == 4'b0010/*sub*/ | ALUControl[3:0] == 4'b0011/*rsc*/ | ALUControl[3:0] == 4'b0101/*adc*/
  //        | ALUControl[3:0] == 4'b0110/*sbc*/ | ALUControl[3:0] == 4'b0111/*rsc*/ | ALUControl[3:0] == 4'b1010/*cmp*/ | ALUControl[3:0] == 4'b1011/*cmn*/) & 
  //        ~(a[31] ^ b[31] ^ (ALUControl[3:0] == 4'b0010 /*sub*/ | ALUControl[3:0] == 4'b0011/*rsc*/ | ALUControl[3:0] == 4'b0110/*sbc*/ | ALUControl[3:0] == 4'b0111/*rsc*/
  //        | ALUControl[3:0] == 4'b1010/*cmp*/)) 
  //        & (a[31] ^ sum[31]); 

  assign Flags = {neg, zero, carry, overflow};
endmodule