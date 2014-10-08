// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
// TODO: Note that both the data and instruction cache are 
// currently read only. This behavior will change in the future.
module data_cache (input logic clk, reset, we,  MemtoRegM, valid, 
                   input  logic [31:0] a, wd, memdata,
                   output logic [31:0] rd,
                   output logic stall, memread, memwrite);

    parameter entries = 65536;
    parameter tagbits = 30-$clog2(entries);

    logic rv;
    logic [tagbits-1:0] rtag;
    logic [31:0] cachewd;
    logic cwe;


    data_cache_memory #(entries, tagbits) dcm(.clk(clk), .reset(reset), .wd(cachewd), .a(a), .we(cwe), 
                    .rv(rv), .rtag(rtag), .rd(rd));
    
    data_cache_controller dcc(.clk(clk), .reset(reset), .hit(hit), .ds(ds),
                        .stall(stall), .we(we), .valid(valid),
                        .memread(memread), .cwe(cwe), .memwrite(memwrite),
                        .re(MemtoRegM));

    // Create physical memory
    // dmem dm(.clk(clk), .we(memwrite), .a(a), 
              // .wd(wd), .rd(memdata));

    // Create the logic for a hit. Note that if there is a cache miss,
    // hit stays false until the new data has been retrieved. This way hit
    // can also be used as a stall signal.
    assign hit = rv & (a[31:31-tagbits] == rtag);

    // Create Mux for the cache data input
    assign cachewd = ds ? memdata : wd;

endmodule