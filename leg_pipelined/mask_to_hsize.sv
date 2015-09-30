module mask_to_hsize (
	input logic [3:0] ByteMask,
	output logic [2:0] HSIZE
);

// FIXME: Remove this file - Extract byteOrWord from controller.sv to top.sv
// 		  Add memory_mask.sv to data cache

/***** Brief Description *******
 * Created by Max Waugaman for Clay Wolkin 2015-2016
 * Determine HSIZE from ByteMask and lower address bits.
 *
 ******************************/

 // Byte, halfword, or word acess depends on bytemask
 // Count 1's to determine bytemask
 // HSIZE = 3'b001 : Byte Write
 // HSIZE = 3'b010 : Halfword Write
 // HSIZE = 3'b011 : Word Write
 // HSIZE = 3'b111 : Undefined behavior
 always_comb
 case(ByteMask)
 	4'b0001: HSIZE = 3'b000;
 	4'b0010: HSIZE = 3'b000;
 	4'b0100: HSIZE = 3'b000;
 	4'b1000: HSIZE = 3'b000;
 	4'b0011: HSIZE = 3'b001;
 	4'b1100: HSIZE = 3'b001;
 	4'b1111: HSIZE = 3'b010;
 	default: begin
 		HSIZE = 3'b111;
 		// FIXME: Remove debugging statement
 		$display("HSIZE set to 3'b111. ByteMask = %h at time %d", ByteMask, $time);
 	end
 endcase // ByteMask

endmodule	