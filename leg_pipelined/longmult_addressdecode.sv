module longmult_addressdecode(input  logic [3:0]  RdLow_4b,
                    input  logic [11:0] StatusRegisterE,
                    output logic [31:0] RdLoE_32b
          			);

 /***** Brief Description *******
 *
 * Decodes a 4 bit address to a 32 bit address for ONLY
 * the Multiply Long instruction
 *
 ******************************/

 logic user_sys, fiq, irq, svc, abort, undef, system;
 logic [5:0] Mode;

 assign user_sys= (StatusRegisterE[4:0] == 5'b10000 | StatusRegisterE[4:0] == 5'b11111);
 assign fiq     = (StatusRegisterE[4:0] == 5'b10001);
 assign irq     = (StatusRegisterE[4:0] == 5'b10010);
 assign svc     = (StatusRegisterE[4:0] == 5'b10011);
 assign abort   = (StatusRegisterE[4:0] == 5'b10111);
 assign undef   = (StatusRegisterE[4:0] == 5'b11011);
 assign Mode    = {user_sys, fiq, irq, svc, abort, undef};

/* READ PORT RA1 */
  always_comb 
    casez ({Mode, RdLow_4b})  // Bits {6 , 4}
      11'b??????_0000: RdLoE_32b = 32'h00000001; // R0
      11'b??????_0001: RdLoE_32b = 32'h00000002;
      11'b??????_0010: RdLoE_32b = 32'h00000004;
      11'b??????_0011: RdLoE_32b = 32'h00000008;
      11'b??????_0100: RdLoE_32b = 32'h00000010; // R4
      11'b??????_0101: RdLoE_32b = 32'h00000020;
      11'b??????_0110: RdLoE_32b = 32'h00000040;
      11'b??????_0111: RdLoE_32b = 32'h00000080;
      // Make sure it is not in FIQ mode
      11'b?0????_1000: RdLoE_32b = 32'h00000100; // R8
      11'b?0????_1001: RdLoE_32b = 32'h00000200;
      11'b?0????_1010: RdLoE_32b = 32'h00000400;
      11'b?0????_1011: RdLoE_32b = 32'h00000800;
      11'b?0????_1100: RdLoE_32b = 32'h00001000; // R12
      11'b??????_1101: RdLoE_32b = 32'h00002000;
      11'b??????_1110: RdLoE_32b = 32'h00004000;
      11'b??????_1111: RdLoE_32b = 32'h00008000; // R15 or PC

      // Banked Registers for Supervisor Mode (R13_SVC --> R16 and R14_SVC --> R17)
      11'b000100_1101: RdLoE_32b = 32'h00010000; // R16
      11'b000100_1110: RdLoE_32b = 32'h00020000;

      // Banked Registers for Abort Mode (R13_ABORT --> R18 and R14_ABORT --> R19)
      11'b000010_1101: RdLoE_32b = 32'h00040000; // R18
      11'b000010_1110: RdLoE_32b = 32'h00080000;

      // Banked Registers for Undefined Mode (R13_UNDEF --> R20 and R14_UNDEF --> R21)
      11'b000001_1101: RdLoE_32b = 32'h00100000; // R20
      11'b000001_1110: RdLoE_32b = 32'h00200000;      

      // Banked Registers for Interrupt Mode (R13_IRQ --> R22 and R14_IRQ --> R23)
      11'b001000_1101: RdLoE_32b = 32'h00400000; // R22
      11'b001000_1110: RdLoE_32b = 32'h00800000;      

      // Banked Registers for Fast Int Mode (R8_FIQ --> R24 ..... R14_FIQ --> R30)
      11'b010000_1000: RdLoE_32b = 32'h01000000; // R24
      11'b010000_1001: RdLoE_32b = 32'h02000000;
      11'b010000_1010: RdLoE_32b = 32'h04000000;
      11'b010000_1011: RdLoE_32b = 32'h08000000;
      11'b010000_1100: RdLoE_32b = 32'h10000000; // R28
      11'b010000_1101: RdLoE_32b = 32'h20000000;
      11'b010000_1110: RdLoE_32b = 32'h40000000;

      // Shadow Register Rz (R31) used for Micro-Ops
      // 11'b1_??????_1111: RdLoE_32b = 32'h80000000;
      default: RdLoE_32b = 32'h0;
    endcase 

endmodule 