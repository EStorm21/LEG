module addressdecode(input  logic [3:0]  RA1_4b_D, RA2_4b_D, DestRegD,
                    input  logic [2:0]  RegFileRzD,			  
                    input  logic [11:0] StatusRegisterInput,
                    output logic [31:0] RA1D, RA2D, WA3D
          					);
 /***** Brief Description *******
 *
 * Decodes a 4 bit address + extra 1 bit using mode to get one hot high
 *
 ******************************/
 logic user, fiq, irq, svc, abort, undef, system;
 assign user    = (StatusRegisterInput[4:0] == 5'b10000);
 assign fiq     = (StatusRegisterInput[4:0] == 5'b10001);
 assign irq     = (StatusRegisterInput[4:0] == 5'b10010);
 assign svc     = (StatusRegisterInput[4:0] == 5'b10011);
 assign abort   = (StatusRegisterInput[4:0] == 5'b10111);
 assign undef   = (StatusRegisterInput[4:0] == 5'b11011);
 assign system  = (StatusRegisterInput[4:0] == 5'b11111);

/*
  always_comb begin
    casex () // ------------------------ change to 3 bit type of operation
  end
*/

endmodule 