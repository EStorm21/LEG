// arm_cache.v
// mwaugaman@hmc.edu 22 September 2014
// Data and Instruction Cache for ARM v4

//------------------------------------------------------
//--------------------CACHE-----------------------------
//------------------------------------------------------
//------------------------------------------------------
// TODO: Note that both the data and instruction cache are 
// currently read only. This behavior will change in the future.
module data_cache (input logic clk, we,
                   input  logic [31:0] a, wd,
                   input  logic validData,
                   output logic [31:0] rd,
                   output logic hit,
                   output logic memread);
    logic write;
    logic rv;
    logic [13:0] rtag;

    data_cache_memory dcm(.clk(clk), .wd(cachewd), .a(a), .we(we), 
                    .rv(rv), .rtag(rtag), .rd(rd));
    data_cache_controller dcc(.clk(clk), .hit(hit), .ds(ds),
                        .stall(stall), .we(we), .memwrite(memwrite));

    // Create the logic for a hit. Note that if there is a cache miss,
    // hit stays false until the new data has been retrieved. This way hit
    // can also be used as a stall signal.
    assign hit = rv & (a[31:10] == rtag);

    // Create Mux for the cache data input
    mux2 #(32) writemux(memdata, wd, ds, cachewd);

    // Create physical memory
    dmem dm(.clk(clk), .we(memwrite), .a(a), 
              .wd(wd), .rd(memdata));
endmodule

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

module data_cache_memory (input logic clk, we,
                     input logic [31:0] wd, // Create 896B Cache (128 entries)
                     input logic [31:0] a,
                     output logic rv,
                     output logic [13:0] rtag,
                     output logic [31:0] rd);
  logic [13:0] tag[917503:0];   // 65536 entries x 14 bits
  logic [65535:0] v;            // 65536 entries x 1 bit
  logic [15:0]  set;            // 65536 entries 16 bit address
  logic [31:0] RAM[2097151:0];  // 65536 entries x 32 bits

  initial
    begin
      $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/1000_test/test_1000_7.dat",RAM);
      for (int i = 0; i <= 65535; i++)
        v[i] = 1; // How do I initialize the valid bits to 1?
    end

  // Read the data from the cache immediately
  assign set = a[17:2];
  assign rtag = a[31:18];
  assign rv = v[set];
  assign rd = RAM[set];

  // Write to the cache
  always_ff @(posedge clk)
    if (we) begin
      RAM[set] <= wd; // write the data
      v[set]    <= 1'b1;  // write the valid bit
      tag[set]  <= rtag;  // write the tag
    end
endmodule

module instr_cache_memory (input logic clk, 
                     input logic [31:0] a,
                     output logic rv,
                     output logic [13:0] rtag,
                     output logic [31:0] rd);
  logic [13:0] tag[917503:0];   // 65536 entries x 14 bits
  logic [65535:0] v;            // 65536 entries x 1 bit
  logic [15:0]  set;            // 65536 entries 16 bit address
  logic [31:0] RAM[2097151:0];  // 65536 entries x 32 bits

  initial
    begin
      $readmemh("D:/Max/Google Drive/Clay-Wolkin/Testing/1000_test/test_1000_7.dat",RAM);
      for (int i = 0; i <= 65535; i++)
        v[i] = 1; // How do I initialize the valid bits to 1?
    end

  // Read the data from the cache immediately
  assign set = a[17:2];
  assign rtag = a[31:18];
  assign rv = v[set];
  assign rd = RAM[set];

endmodule

// Cache controller works according to schematic
module data_cache_controller (input  logic clk,
                         input  logic hit,
                         input  logic ds,
                         input  logic we,
                         output logic stall,
                         output logic memwrite);
  typedef enum logic [1:0] {CACHEREAD, MEMREAD, MEMWRITE} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk) //, posedge reset)
    // if (reset) state <= CACHEREAD;
    state <= nextstate;

  // next state logic
  always_comb
    case (state)
      CACHEREAD: if (hit & ~we) begin      nextstate <= CACHEREAD; end
                 else if(~hit & ~we) begin nextstate <= MEMREAD;   end
      MEMREAD:                        nextstate <= CACHEREAD;
      MEMWRITE:                       nextstate <= CACHEREAD;
      default: nextstate <= CACHEREAD;
    endcase

  // output logic
  assign stall       = (state == MEMREAD) | (state == MEMWRITE) |
                       ((state == CACHEREAD) & (hit | we));
  assign cachewrite  = (state == MEMREAD) | (state == MEMWRITE);
  assign memwrite    = (state == MEMWRITE);
  assign ds          = (state == MEMREAD);

endmodule

// Cache controller works according to schematic
module instr_cache_controller (input  logic clk,
                         // input  logic reset,
                         input  logic hit,
                         input  logic validData,
                         output logic memread);
  typedef enum logic [1:0] {CACHEREAD, MEMREAD, CACHEWRITE} statetype;
  statetype state, nextstate;

  // state register
  always_ff @(posedge clk) //, posedge reset)
    // if (reset) state <= CACHEREAD;
    state <= nextstate;

  // next state logic
  always_comb
    case (state)
      CACHEREAD: if (hit)         nextstate <= CACHEREAD;
                 else             nextstate <= MEMREAD;
      MEMREAD:   if (~validData)  nextstate <= MEMREAD;
                 else             nextstate <= CACHEWRITE;
      CACHEWRITE:if (~hit)        nextstate <= CACHEWRITE;
                 else             nextstate <= CACHEREAD;
      default: nextstate <= CACHEREAD;
    endcase

  // output logic
  assign memread = (state == MEMREAD);

endmodule

//------------------------------------------------------
//------------------------------------------------------
//------------------------------------------------------
//------------------------------------------------------
