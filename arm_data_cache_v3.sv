// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
module data_cache #(parameter blocksize = 4, parameter entries = 65536)
                  (input logic clk, reset, MemWriteM, MemtoRegM, valid, 
                   input  logic [31:0] a, 
                   input  logic [blocksize*32-1:0] memdata,
                   output logic [31:0] rd,
                   output logic stall, memread, memwrite);

    // tagbits = 32 - byte offset - block offset - set bits
    parameter tagbits = 30-$clog2(blocksize)-$clog2(entries);

    logic rv;
    logic [tagbits-1:0] rtag;
    logic cwe;
    logic [blocksize*32-1:0] blockout;

    data_cache_memory #(entries, tagbits, blocksize) dcm(.clk(clk), .reset(reset), .wd(memdata), .a(a), .we(cwe), 
                    .rv(rv), .rtag(rtag), .rd(blockout));
    
    data_cache_controller dcc(.clk(clk), .reset(reset), .hit(hit), .ds(ds), .MemWriteM(MemWriteM),
                        .stall(stall), .valid(valid),
                        .memread(memread), .cwe(cwe), .memwrite(memwrite),
                        .re(MemtoRegM));

    // Create physical memory
    // dmem dm(.clk(clk), .we(memwrite), .a(a), 
              // .wd(wd), .rd(memdata));

    // Create the logic for a hit.
    assign hit = rv & (a[31:31-tagbits+1] == rtag);

    // Create Mux to select the word from the block
    // TODO: Make this mux parameterized
    //DEBUGGING INTERNAL
    logic [1:0] bo;
    assign bo = a[3:2];
    always_comb
    case (a[3:2])
        2'b11 : rd = blockout[31:0];
        2'b10 : rd = blockout[2*32-1 : 32];
        2'b01 : rd = blockout[3*32-1 : 2*32];
        2'b00 : rd = blockout[4*32-1 : 3*32];
        default : rd = blockout[31:0]; 
    endcase

endmodule