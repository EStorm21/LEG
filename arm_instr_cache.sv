module instr_cache (input logic clk, 
                   input  logic [31:0] a, 
                   input  logic validData,
                   output logic [31:0] rd,
                   output logic hit,
                   output logic memread);
    logic write;
    logic rv;
    logic [13:0] rtag;

    instr_cache_memory icm(.clk(clk), .a(a),  
                    .rv(rv), .rtag(rtag), .rd(rd));
    instr_cache_controller icc(.clk(clk), .hit(hit), .validData(validData),
                         .memread(memread));

    // Create the logic for a hit. Note that if there is a cache miss,
    // hit stays false until the new data has been retrieved. This way hit
    // can also be used as a stall signal.
    assign hit = rv & (a[31:10] == rtag);


endmodule