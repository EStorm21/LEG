module tlb #(parameter tagbits = 16, parameter size = 16) (
    input logic clk, reset, enable, we, // Clock
    input logic [tagbits-1:0] VirtTag,
    inout logic C, B,               // Cacheable and bufferable bits
    inout logic [1:0] AP,             // Access permission bits
    inout logic [3:0] Domain,         // Domain bits
    inout logic [tagbits-1:0] PhysTag, // Physical Tag to write data into TLB
    output logic Miss 
);

//                        phystag + cachable + bufferable + AP + Domain
parameter tlb_word_size = tagbits + 1        + 1          + 2  + 4;

// SRAM signals
tri [tlb_word_size-1:0] RData;
logic                     RRead ;

// CAM signals
logic [$size(VirtTag) - 1:0] CData ;
logic [  $clog2(size) - 1:0] CAdr  ;
logic                        CRead ;

// Shared Signals
logic [size - 1:0] Match;

cam #(tagbits, size) 
tlb_cam(clk, reset, enable, CRead, we, CAdr, CData, Match);

match_ram #(tlb_word_size, size) 
tlb_ram(clk, reset, enable, RRead, we, Match, RData);

tlb_controller #(size, tagbits) tc(.*);

assign RData = we ? {PhysTag, C, B, AP, Domain} : 'bz;
assign CData = VirtTag;
assign {PhysTag, C, B, AP, Domain} = !we ? RData : 'bz;
assign Miss = ~(|Match);

endmodule