module tlb #(parameter tbits = 16, parameter size = 16, 
parameter tlb_word_size = tbits   + 1        + 1          + 2  + 4      + 1)
//                        phystag + cachable + bufferable + AP + Domain + valid
(
	// TODO: Separate out the valid bits
    input logic clk, reset, enable, we, // Clock
    input logic [tbits-1:0] VirtTag,
    inout logic [tlb_word_size-1:0] TableEntry, // Physical Tag to write data into TLB
    output logic PAReady
);

//                        phystag + cachable + bufferable + AP + Domain
// parameter tlb_word_size = tbits + 1        + 1          + 2  + 4;

// SRAM signals
tri [tlb_word_size-1:0] RData;
logic                     RRead ;

// CAM signals
logic [$size(VirtTag) - 1:0] CData ;
logic [  $clog2(size) - 1:0] CAdr  ;
logic                        CRead ;

// Shared Signals
logic [size - 1:0] Match;

// Valid signal for controller
logic valid;

cam #(tbits, size) 
tlb_cam(clk, reset, enable, CRead, we, CAdr, CData, Match);

match_ram #(tlb_word_size, size) 
tlb_ram(clk, reset, enable, RRead, we, Match, RData);

tlb_controller #(size, tbits) tc(.*);

// assign RData = we ? {PhysTag, C, B, AP, Domain} : 'bz;
assign valid = TableEntry[0];
assign RData = we ? TableEntry : 'bz;
assign CData = VirtTag;
// assign {PhysTag, C, B, AP, Domain} = !we ? RData : 'bz;
assign TableEntry = !we ? RData : 'bz;
assign Miss = ~(|Match);

endmodule