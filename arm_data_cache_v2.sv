// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
// TODO: Note that both the data and instruction cache are 
// currently read only. This behavior will change in the future.
module data_cache (input logic clk, we,  MemtoRegM,
                   input  logic [31:0] a, wd,
                   output logic [31:0] rd,
                   output logic stall);
    logic rv;
    logic [13:0] rtag;
    logic [31:0] cachewd;

    data_cache_memory dcm(.clk(clk), .wd(cachewd), .a(a), .we(we), 
                    .rv(rv), .rtag(rtag), .rd(rd));
    data_cache_controller dcc(.clk(clk), .hit(hit), .ds(ds),
                        .stall(stall), .we(we), .memwrite(memwrite),
                        .re(MemtoRegM));

    logic [31:0] memdata;
    // Create physical memory
    dmem dm(.clk(clk), .we(memwrite), .a(a), 
              .wd(wd), .rd(memdata));

    // Create the logic for a hit. Note that if there is a cache miss,
    // hit stays false until the new data has been retrieved. This way hit
    // can also be used as a stall signal.
    assign hit = rv & (a[31:10] == rtag);

    // Create Mux for the cache data input
    assign cachewd = ds ? memdata : wd;

endmodule