module addressdecode(input  logic [3:0]  RA1_4b_D, RA2_4b_D, DestRegD,
                    input  logic [2:0]  RegFileRzD,			  
                    input  logic [11:0] StatusRegisterInput,
                    output logic [31:0] RA1D, RA2D, WA3D);
 /***** Brief Description *******
 *
 * Decodes a 4 bit address to a 32 bit address using the following
 * additional information:
 * 1) Current Status Mode
 * 2) Whether the MicroOps FSM requires a shadow register Rz
 *
 ******************************/
 logic user_sys, fiq, irq, svc, abort, undef, system;
 logic [5:0] Mode;

 assign user_sys= (StatusRegisterInput[4:0] == 5'b10000 | StatusRegisterInput[4:0] == 5'b11111);
 assign fiq     = (StatusRegisterInput[4:0] == 5'b10001);
 assign irq     = (StatusRegisterInput[4:0] == 5'b10010);
 assign svc     = (StatusRegisterInput[4:0] == 5'b10011);
 assign abort   = (StatusRegisterInput[4:0] == 5'b10111);
 assign undef   = (StatusRegisterInput[4:0] == 5'b11011);
 assign Mode    = {user_sys, fiq, irq, svc, abort, undef};

/* READ PORT RA1 */
  always_comb 
    casez ({RegFileRzD[0], Mode, RA1_4b_D})  // Bits {1 , 6 , 4}
      11'b0_??????_0000: RA1D = 32'h00000001; // R0
      11'b0_??????_0001: RA1D = 32'h00000002;
      11'b0_??????_0010: RA1D = 32'h00000004;
      11'b0_??????_0011: RA1D = 32'h00000008;
      11'b0_??????_0100: RA1D = 32'h00000010; // R4
      11'b0_??????_0101: RA1D = 32'h00000020;
      11'b0_??????_0110: RA1D = 32'h00000040;
      11'b0_??????_0111: RA1D = 32'h00000080;
      // Make sure it is not in FIQ mode
      11'b0_?0????_1000: RA1D = 32'h00000100; // R8
      11'b0_?0????_1001: RA1D = 32'h00000200;
      11'b0_?0????_1010: RA1D = 32'h00000400;
      11'b0_?0????_1011: RA1D = 32'h00000800;
      11'b0_?0????_1100: RA1D = 32'h00001000; // R12
      11'b0_100000_1101: RA1D = 32'h00002000; // Mode bits should be ?00000 i think!
      11'b0_100000_1110: RA1D = 32'h00004000;
      11'b0_??????_1111: RA1D = 32'h00008000; // R15 or PC

      // Banked Registers for Supervisor Mode (R13_SVC --> R16 and R14_SVC --> R17)
      11'b0_000100_1101: RA1D = 32'h00010000; // R16
      11'b0_000100_1110: RA1D = 32'h00020000;

      // Banked Registers for Abort Mode (R13_ABORT --> R18 and R14_ABORT --> R19)
      11'b0_000010_1101: RA1D = 32'h00040000; // R18
      11'b0_000010_1110: RA1D = 32'h00080000;

      // Banked Registers for Undefined Mode (R13_UNDEF --> R20 and R14_UNDEF --> R21)
      11'b0_000001_1101: RA1D = 32'h00100000; // R20
      11'b0_000001_1110: RA1D = 32'h00200000;      

      // Banked Registers for Interrupt Mode (R13_IRQ --> R22 and R14_IRQ --> R23)
      11'b0_001000_1101: RA1D = 32'h00400000; // R22
      11'b0_001000_1110: RA1D = 32'h00800000;      

      // Banked Registers for Fast Int Mode (R8_FIQ --> R24 ..... R14_FIQ --> R30)
      11'b0_010000_1000: RA1D = 32'h01000000; // R24
      11'b0_010000_1001: RA1D = 32'h02000000;
      11'b0_010000_1010: RA1D = 32'h04000000;
      11'b0_010000_1011: RA1D = 32'h08000000;
      11'b0_010000_1100: RA1D = 32'h10000000; // R28
      11'b0_010000_1101: RA1D = 32'h20000000;
      11'b0_010000_1110: RA1D = 32'h40000000;

      // Shadow Register Rz (R31) used for Micro-Ops
      11'b1_??????_1111: RA1D = 32'h80000000;
      default: RA1D = 32'h0;
    endcase 

/* READ PORT RA2 */
  always_comb 
    casez ({RegFileRzD[1], Mode, RA2_4b_D})  // Bits {1 , 6 , 4}
      11'b0_??????_0000: RA2D = 32'h00000001; // R0
      11'b0_??????_0001: RA2D = 32'h00000002;
      11'b0_??????_0010: RA2D = 32'h00000004;
      11'b0_??????_0011: RA2D = 32'h00000008;
      11'b0_??????_0100: RA2D = 32'h00000010; // R4
      11'b0_??????_0101: RA2D = 32'h00000020;
      11'b0_??????_0110: RA2D = 32'h00000040;
      11'b0_??????_0111: RA2D = 32'h00000080;
      // Make sure it is not in FIQ mode
      11'b0_?0????_1000: RA2D = 32'h00000100; // R8
      11'b0_?0????_1001: RA2D = 32'h00000200;
      11'b0_?0????_1010: RA2D = 32'h00000400;
      11'b0_?0????_1011: RA2D = 32'h00000800;
      11'b0_?0????_1100: RA2D = 32'h00001000; // R12
      11'b0_100000_1101: RA2D = 32'h00002000; // Mode bits should be ?00000 i think!
      11'b0_100000_1110: RA2D = 32'h00004000;
      11'b0_??????_1111: RA2D = 32'h00008000; // R15 or PC

      // Banked Registers for Supervisor Mode (R13_SVC --> R16 and R14_SVC --> R17)
      11'b0_000100_1101: RA2D = 32'h00010000; // R16
      11'b0_000100_1110: RA2D = 32'h00020000;

      // Banked Registers for Abort Mode (R13_ABORT --> R18 and R14_ABORT --> R19)
      11'b0_000010_1101: RA2D = 32'h00040000; // R18
      11'b0_000010_1110: RA2D = 32'h00080000;

      // Banked Registers for Undefined Mode (R13_UNDEF --> R20 and R14_UNDEF --> R21)
      11'b0_000001_1101: RA2D = 32'h00100000; // R20
      11'b0_000001_1110: RA2D = 32'h00200000;      

      // Banked Registers for Interrupt Mode (R13_IRQ --> R22 and R14_IRQ --> R23)
      11'b0_001000_1101: RA2D = 32'h00400000; // R22
      11'b0_001000_1110: RA2D = 32'h00800000;      

      // Banked Registers for Fast Int Mode (R8_FIQ --> R24 ..... R14_FIQ --> R30)
      11'b0_010000_1000: RA2D = 32'h01000000; // R24
      11'b0_010000_1001: RA2D = 32'h02000000;
      11'b0_010000_1010: RA2D = 32'h04000000;
      11'b0_010000_1011: RA2D = 32'h08000000;
      11'b0_010000_1100: RA2D = 32'h10000000; // R28
      11'b0_010000_1101: RA2D = 32'h20000000;
      11'b0_010000_1110: RA2D = 32'h40000000;

      // Shadow Register Rz (R31) used for Micro-Ops
      11'b1_??????_1111: RA2D = 32'h80000000;
      default: RA2D = 32'h0;
    endcase 

  always_comb 
    casez ({RegFileRzD[2], Mode, DestRegD})  // Bits {1 , 6 , 4}
      11'b0_??????_0000: WA3D = 32'h00000001; // R0
      11'b0_??????_0001: WA3D = 32'h00000002;
      11'b0_??????_0010: WA3D = 32'h00000004;
      11'b0_??????_0011: WA3D = 32'h00000008;
      11'b0_??????_0100: WA3D = 32'h00000010; // R4
      11'b0_??????_0101: WA3D = 32'h00000020;
      11'b0_??????_0110: WA3D = 32'h00000040;
      11'b0_??????_0111: WA3D = 32'h00000080;
      // Make sure it is not in FIQ mode
      11'b0_?0????_1000: WA3D = 32'h00000100; // R8
      11'b0_?0????_1001: WA3D = 32'h00000200;
      11'b0_?0????_1010: WA3D = 32'h00000400;
      11'b0_?0????_1011: WA3D = 32'h00000800;
      11'b0_?0????_1100: WA3D = 32'h00001000; // R12
      11'b0_100000_1101: WA3D = 32'h00002000; // Mode bits should be ?00000 i think!
      11'b0_100000_1110: WA3D = 32'h00004000;
      11'b0_??????_1111: WA3D = 32'h00008000; // R15 or PC

      // Banked Registers for Supervisor Mode (R13_SVC --> R16 and R14_SVC --> R17)
      11'b0_000100_1101: WA3D = 32'h00010000; // R16
      11'b0_000100_1110: WA3D = 32'h00020000;

      // Banked Registers for Abort Mode (R13_ABORT --> R18 and R14_ABORT --> R19)
      11'b0_000010_1101: WA3D = 32'h00040000; // R18
      11'b0_000010_1110: WA3D = 32'h00080000;

      // Banked Registers for Undefined Mode (R13_UNDEF --> R20 and R14_UNDEF --> R21)
      11'b0_000001_1101: WA3D = 32'h00100000; // R20
      11'b0_000001_1110: WA3D = 32'h00200000;      

      // Banked Registers for Interrupt Mode (R13_IRQ --> R22 and R14_IRQ --> R23)
      11'b0_001000_1101: WA3D = 32'h00400000; // R22
      11'b0_001000_1110: WA3D = 32'h00800000;      

      // Banked Registers for Fast Int Mode (R8_FIQ --> R24 ..... R14_FIQ --> R30)
      11'b0_010000_1000: WA3D = 32'h01000000; // R24
      11'b0_010000_1001: WA3D = 32'h02000000;
      11'b0_010000_1010: WA3D = 32'h04000000;
      11'b0_010000_1011: WA3D = 32'h08000000;
      11'b0_010000_1100: WA3D = 32'h10000000; // R28
      11'b0_010000_1101: WA3D = 32'h20000000;
      11'b0_010000_1110: WA3D = 32'h40000000;

      // Shadow Register Rz (R31) used for Micro-Ops
      11'b1_??????_1111: WA3D = 32'h80000000;
      default: WA3D = 32'h0;
    endcase 

endmodule 