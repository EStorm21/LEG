/*
   LEG Processor for Education
   Copyright (C) 2016  Max Waugaman

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

module alu(input  logic [31:0] AIn, BIn,
           input  logic [2:0]  ALUOperation,
           input logic         InvertB, ReverseInputs, ALUCarryIn,
           output logic [31:0] Result,
           output logic [3:0]  Flags);

 /***** Brief Description *******
 * First Created by Ivan Wong 2014-2015
 * ALU receives all control signals from Controller.
 * To be implemented in 32-bit datapath.
 ******************************/
  logic        Neg, Zero, Carry, Overflow;
  logic [31:0] Condinvb, A, B;
  logic [32:0] Sum;


  mux2 #(32)  alu_inA(AIn, BIn, ReverseInputs, A); 
  mux2 #(32)  alu_inB(BIn, AIn, ReverseInputs, B); 

  assign Condinvb = InvertB ? ~B : B;
  assign Sum = A + Condinvb + ALUCarryIn;
 
  always_comb
    casex (ALUOperation[2:0]) 
      3'b000: Result = A & Condinvb;
      3'b001: Result = A ^ Condinvb;
      3'b010: Result = Sum;
      3'b011: Result = A | Condinvb;
      3'b100: Result = Condinvb;
      3'b101: Result = {Condinvb[31:1], 1'b0};
      default: Result = Sum;
    endcase

  // Order is NZCV
  assign Neg      = Result[31];
  assign Zero     = (Result == 32'b0);
  assign Carry    = Sum[32]; 
  assign Overflow = ~(A[31] ^ Condinvb[31]) & (A[31] ^ Sum[31]);

  assign Flags = {Neg, Zero, Carry, Overflow};
endmodule

