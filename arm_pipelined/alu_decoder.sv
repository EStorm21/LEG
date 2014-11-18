module alu_decoder(input  logic       ALUOpE,
           input  logic [24:21] InstrE,
           input  logic [1:0] PreviousCVFlag,
           output   logic [2:0] ALUOperation, CVUpdate,
           output   logic     InvertB, ReverseInputs, ALUCarry, DoNotWriteReg);

  assign ReverseInputs = (ALUOpE & (InstrE[24:21] == 4'b0011 | //RSB
                          InstrE[24:21] == 4'b0111)); //RSC
 
  assign InvertB = (ALUOpE & ((InstrE[24:22] == 3'b001) |   //SUB, RSB
                   (InstrE[24:22] == 3'b011) |   //SBC, RSC
                   (InstrE[24:21] == 4'b1010) |  //CMP
                   (InstrE[24:21] == 4'b1111) |  //MVN
                   (InstrE[24:21] == 4'b1110)));    //BIC
                 
  always_comb
    casex ({ALUOpE, InstrE[24:21]}) 
      5'b10010: ALUCarry = 1'b1;   // SUB, RSB
      5'b10011: ALUCarry = 1'b1;   // SUB, RSB
      5'b10101: ALUCarry = PreviousCVFlag[1];   // ADC
      5'b10110: ALUCarry = PreviousCVFlag[1];   // SBC
      5'b10111: ALUCarry = PreviousCVFlag[1];   // RSC
      5'b11010: ALUCarry = 1'b1;   // CMP
      default: ALUCarry = 1'b0;
    endcase
  
  always_comb
    casex ({ALUOpE, InstrE[24:21]}) // AND(&) = 3'b000,  XOR(^) = 3'b001, SUM = 3'b010, OR(|) = 3'b011, SINGLEInput = 3'b100
      5'b10000: ALUOperation = 3'b000; // AND
      5'b11000: ALUOperation = 3'b000; // TST
      5'b10001: ALUOperation = 3'b001; // EOR
      5'b11001: ALUOperation = 3'b001; // TEQ
      5'b10010: ALUOperation = 3'b010;   // SUB
      5'b10011: ALUOperation = 3'b010;   // RSB
      5'b10100: ALUOperation = 3'b010;   // ADD
      5'b10101: ALUOperation = 3'b010;   // ADC
      5'b10110: ALUOperation = 3'b010;   // SBC
      5'b10111: ALUOperation = 3'b010;   // RSC
      5'b11010: ALUOperation = 3'b010;   // CMP
      5'b11011: ALUOperation = 3'b010;   // CMN
      5'b11100: ALUOperation = 3'b011;  // ORR
      5'b11101: ALUOperation = 3'b100;   // MOV
      5'b11111: ALUOperation = 3'b100;   // MVN
      5'b11110: ALUOperation = 3'b000;   // BIC
      5'b0xxxx: ALUOperation = 3'b010;    // others
      default: ALUOperation = 3'b010; // Add by default
    endcase

  assign DoNotWriteReg = (ALUOpE & (InstrE[24:23] == 2'b10)); // TST, TEQ, CMP, CMN


  // Order is NZCV
  // FLAG HANDLING
  /*
  3'b000:
    carry = shifterCarryOutE;
    overflow = PreviousCVFlag[0];
  3'b101:
    carry = sum[32];
    overflow = (a[31] ^ b[31]) & (a[31] ^ sum[31]);
  3'b110:
    carry = sum[32];
    overflow = keepV ? PreviousCVFlag[0] : ~(a[31] ^ b[31]) & (a[31] ^ sum[31]);
  3'b100:
    carry = sum[32];
    overflow = ~(a[31] ^ b[31]) & (a[31] ^ sum[31]);
  */
  always_comb
    casex ({ALUOpE, InstrE[24:21]}) 
      5'b10000:  CVUpdate = 3'b000; // AND
      5'b11000:  CVUpdate = 3'b000; // TST
      5'b10001:  CVUpdate = 3'b000; // EOR
      5'b11001:  CVUpdate = 3'b000; // TEQ
      5'b10010:  CVUpdate = 3'b101; // SUB
      5'b10011:  CVUpdate = 3'b101; // RSB
      5'b10100:  CVUpdate = 3'b110; // ADD - has KeepV
      5'b10101:  CVUpdate = 3'b100; // ADC
      5'b10110:  CVUpdate = 3'b101; // SBC
      5'b10111:  CVUpdate = 3'b101; // RSC
      5'b11010:  CVUpdate = 3'b101; // CMP
      5'b11011:  CVUpdate = 3'b100; // CMN
      5'b11100:  CVUpdate = 3'b000; // ORR
      5'b11101:  CVUpdate = 3'b000; // MOV
      5'b11111:  CVUpdate = 3'b000; // MVN
      5'b11110:  CVUpdate = 3'b000; // BIC
      //default: Result = 32'bx;
    endcase

/*
  assign ReverseInputs = (InstrE[24:21] == 4'b0011 || //RSB
                          InstrE[24:21] == 4'b0111); //RSC
 
  assign InvertB = (InstrE[24:22] == 3'b001) ||   //SUB, RSB
                   (InstrE[24:22] == 3'b011) ||   //SBC, RSC
                   (InstrE[24:21] == 4'b1010) ||  //CMP
                   (InstrE[24:21] == 4'b1111);    //MVN
                 
  always_comb
    casex (InstrE[24:21]) 
      4'b0010: ALUCarry = 1'b1;   // SUB, RSB
      4'b0011: ALUCarry = 1'b1;   // SUB, RSB
      4'b0101: ALUCarry = PreviousCVFlag[1];   // ADC
      4'b0110: ALUCarry = PreviousCVFlag[1];   // SBC
      4'b0111: ALUCarry = PreviousCVFlag[1];   // RSC
      4'b1010: ALUCarry = 1'b1;   // CMP
      default: ALUCarry = 1'b0;
    endcase
  
  always_comb
    casex (InstrE[24:21]) // AND(&) = 3'b000,  XOR(^) = 3'b001, SUM = 3'b010, OR(|) = 3'b011, 
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