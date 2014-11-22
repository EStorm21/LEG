module alu_decoder(input  logic       ALUOpE,
           input  logic [24:21] ALUControlE,
           input  logic [1:0] PreviousCVFlag,
           output   logic [2:0] ALUOperation, CVUpdate,
           output   logic     InvertB, ReverseInputs, ALUCarry, DoNotWriteReg);

  assign ReverseInputs = (ALUOpE & (ALUControlE[24:21] == 4'b0011 | //RSB
                          ALUControlE[24:21] == 4'b0111)); //RSC
 
  assign InvertB = (ALUOpE & ((ALUControlE[24:22] == 3'b001) |   //SUB, RSB
                   (ALUControlE[24:22] == 3'b011) |   //SBC, RSC
                   (ALUControlE[24:21] == 4'b1010) |  //CMP
                   (ALUControlE[24:21] == 4'b1111) |  //MVN
                   (ALUControlE[24:21] == 4'b1110)));    //BIC
                 
  always_comb
    casex ({ALUOpE, ALUControlE[24:21]}) 
      5'b10010: ALUCarry = 1'b1;   // SUB, RSB
      5'b10011: ALUCarry = 1'b1;   // SUB, RSB
      5'b10101: ALUCarry = PreviousCVFlag[1];   // ADC
      5'b10110: ALUCarry = PreviousCVFlag[1];   // SBC
      5'b10111: ALUCarry = PreviousCVFlag[1];   // RSC
      5'b11010: ALUCarry = 1'b1;   // CMP
      default: ALUCarry = 1'b0;
    endcase
  
  always_comb
    casex ({ALUOpE, ALUControlE[24:21]}) // AND(&) = 3'b000,  XOR(^) = 3'b001, SUM = 3'b010, OR(|) = 3'b011, SINGLEInput = 3'b100
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

  assign DoNotWriteReg = (ALUOpE & (ALUControlE[24:23] == 2'b10)); // TST, TEQ, CMP, CMN

  always_comb
    casex ({ALUOpE, ALUControlE[24:21]}) 
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

endmodule 