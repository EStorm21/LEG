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


module addressdecode(input  logic [3:0]  Reg_4b,
                     input  logic RegFileRzD,			  
                     input  logic [5:0] ModeOneHot, // mode should be {user_sys, fiq, irq, svc, abort, undef}
                     output logic [31:0] RegOneHot);
 /***** Brief Description *******
 * First Created by Ivan Wong 2014-2015
 * Decodes a 4 bit address to a 32 bit address using the following
 * additional information:
 * 1) Current Status Mode
 * 2) Whether the MicroOps FSM requires a shadow register Rz
 *
 ******************************/


  always_comb 
    casez ({RegFileRzD, ModeOneHot, Reg_4b})  // Bits {1 , 6 , 4}
      11'b0_??????_0000: RegOneHot = 32'h00000001; // R0
      11'b0_??????_0001: RegOneHot = 32'h00000002;
      11'b0_??????_0010: RegOneHot = 32'h00000004;
      11'b0_??????_0011: RegOneHot = 32'h00000008;
      11'b0_??????_0100: RegOneHot = 32'h00000010; // R4
      11'b0_??????_0101: RegOneHot = 32'h00000020;
      11'b0_??????_0110: RegOneHot = 32'h00000040;
      11'b0_??????_0111: RegOneHot = 32'h00000080;
      // Make sure it is not in FIQ mode
      11'b0_?0????_1000: RegOneHot = 32'h00000100; // R8
      11'b0_?0????_1001: RegOneHot = 32'h00000200;
      11'b0_?0????_1010: RegOneHot = 32'h00000400;
      11'b0_?0????_1011: RegOneHot = 32'h00000800;
      11'b0_?0????_1100: RegOneHot = 32'h00001000; // R12
      11'b0_100000_1101: RegOneHot = 32'h00002000; 
      11'b0_100000_1110: RegOneHot = 32'h00004000;
      11'b0_??????_1111: RegOneHot = 32'h00008000; // R15 or PC

      // Banked Registers for Supervisor Mode (R13_SVC --> R16 and R14_SVC --> R17)
      11'b0_000100_1101: RegOneHot = 32'h00010000; // R16
      11'b0_000100_1110: RegOneHot = 32'h00020000;

      // Banked Registers for Abort Mode (R13_ABORT --> R18 and R14_ABORT --> R19)
      11'b0_000010_1101: RegOneHot = 32'h00040000; // R18
      11'b0_000010_1110: RegOneHot = 32'h00080000;

      // Banked Registers for Undefined Mode (R13_UNDEF --> R20 and R14_UNDEF --> R21)
      11'b0_000001_1101: RegOneHot = 32'h00100000; // R20
      11'b0_000001_1110: RegOneHot = 32'h00200000;      

      // Banked Registers for Interrupt Mode (R13_IRQ --> R22 and R14_IRQ --> R23)
      11'b0_001000_1101: RegOneHot = 32'h00400000; // R22
      11'b0_001000_1110: RegOneHot = 32'h00800000;      

      // Banked Registers for Fast Int Mode (R8_FIQ --> R24 ..... R14_FIQ --> R30)
      11'b0_010000_1000: RegOneHot = 32'h01000000; // R24
      11'b0_010000_1001: RegOneHot = 32'h02000000;
      11'b0_010000_1010: RegOneHot = 32'h04000000;
      11'b0_010000_1011: RegOneHot = 32'h08000000;
      11'b0_010000_1100: RegOneHot = 32'h10000000; // R28
      11'b0_010000_1101: RegOneHot = 32'h20000000;
      11'b0_010000_1110: RegOneHot = 32'h40000000;

      // Shadow Register Rz (R31) used for Micro-Ops
      11'b1_??????_1111: RegOneHot = 32'h80000000;
      default: RegOneHot = 32'h0;
    endcase 
endmodule 
