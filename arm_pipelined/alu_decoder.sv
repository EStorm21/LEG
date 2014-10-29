module alu_decoder(input 	logic [24:21] InstrD,
				   input 	logic [1:0] PreviousCVFlag,
				   output 	logic [1:0] ALUOperation,
				   output 	logic  		InvertB, ReverseInputs, ALUCarry, DoNotWriteReg,
				   output 	logic [2:0] CVUpdate);

/*
  assign ReverseInputs = (InstrD[24:21] == 4'b0011 || //RSB
                          InstrD[24:21] == 4'b0111); //RSC
 
  assign InvertB = (InstrD[24:22] == 3'b001) ||   //SUB, RSB
                   (InstrD[24:22] == 3'b011) ||   //SBC, RSC
                   (InstrD[24:21] == 4'b1010) ||  //CMP
                   (InstrD[24:21] == 4'b1111);    //MVN
                 
  always_comb
    casex (InstrD[24:21]) 
      4'b0010: ALUCarry = 1'b1;   // SUB, RSB
      4'b0011: ALUCarry = 1'b1;   // SUB, RSB
      4'b0101: ALUCarry = PreviousCVFlag[1];   // ADC
      4'b0110: ALUCarry = PreviousCVFlag[1];   // SBC
      4'b0111: ALUCarry = PreviousCVFlag[1];   // RSC
      4'b1010: ALUCarry = 1'b1;   // CMP
      default: ALUCarry = 1'b0;
    endcase
  
  always_comb
    casex (InstrD[24:21]) // AND(&) = 3'b000,  XOR(^) = 3'b001, SUM = 3'b010, OR(|) = 3'b011, 
      4'b0000: ALUOperation = a & b; // AND, TST
      4'b1000: ALUOperation = a & b; // AND, TST
      4'b0001: ALUOperation = a ^ b; // EOR, TEQ
      4'b1001: ALUOperation = a ^ b; // EOR, TEQ
      4'b0010: ALUOperation = sum;   // SUB, RSB
      4'b0011: ALUOperation = sum;   // SUB, RSB
      4'b0100: ALUOperation = sum;   // ADD, ADC, SBC, RSC
      4'b0101: ALUOperation = sum;   // ADD, ADC, SBC, RSC
      4'b0110: ALUOperation = sum;   // ADD, ADC, SBC, RSC
      4'b0111: ALUOperation = sum;   // ADD, ADC, SBC, RSC
      4'b1010: ALUOperation = sum;   // CMP, CMN
      4'b1011: ALUOperation = sum;   // CMP, CMN
      4'b1100: ALUOperation = a | b; // ORR
      4'b1101: ALUOperation = b;   // MOV
      4'b1111: ALUOperation = ~b;   // MOV, MVN
      4'b1110: ALUOperation = a & ~b; // BIC
      //default: ALUOperation = 32'bx;
    endcase

  assign DoNotWriteReg = (ALUControl[3:2] == 2'b10); // TST, TEQ, CMP, CMN


  // Order is NZCV
  assign neg      = Result[31];
  assign zero     = (Result == 32'b0);
  // FLAG HANDLING
  always_comb
    casex (ALUControl[3:0])
      4'b0000:  begin // AND
                  carry = shifterCarryOutE;
                  overflow = PreviousCVFlag[0];
                end 
      4'b1000:  begin // TST
                  carry = shifterCarryOutE;
                  overflow = PreviousCVFlag[0];
                end 
      4'b0001:  begin // EOR
                  carry = shifterCarryOutE;
                  overflow = PreviousCVFlag[0];
                end 
      4'b1001:  begin // TEQ
                  carry = shifterCarryOutE;
                  overflow = PreviousCVFlag[0];
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
                  overflow = keepV ? PreviousCVFlag[0] : ~(a[31] ^ b[31]) & (a[31] ^ sum[31]);
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
                  overflow = PreviousCVFlag[0];
                end 
      4'b1101:  begin // MOV
                  carry = shifterCarryOutE;
                  overflow = PreviousCVFlag[0];
                end 
      4'b1111:  begin // MVN
                  carry = shifterCarryOutE;
                  overflow = PreviousCVFlag[0];
                end 
      4'b1110:  begin // BIC
                  carry = shifterCarryOutE;
                  overflow = PreviousCVFlag[0];
                end 
      //default: Result = 32'bx;
    endcase*/
endmodule 