/*
   LEG Processor for Education
   Copyright (C) 2016  Max Waugaman

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

// `define USE_DEFAULT_MEMORY 10

module dmem (
  input  logic        clk, we, re, HSEL,
  input  logic [31:0] a    , wd,
  input  logic [ 2:0] HSIZE,
  output logic [31:0] rd   ,
  output logic        Valid
);

/***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * dmem is the RAM used by the LEG processor. This RAM
 * can be reset to zero and loaded from a .dat file for
 * lockstep testing.
 ******************************/

  parameter MEM_SIZE = 67108864;
  logic [31:0] RAM[MEM_SIZE:0];
  assign Valid = re | we;

  // ------------------ Actual Memory ----------------------
  integer i;
  initial
    begin
      `ifdef USE_DEFAULT_MEMORY
        string default_memory = "/path/to/default/memory/simTest.dat";
        $display("Using default memory %s", default_memory);
        $readmemh(default_memory, RAM);
      `endif
    end
  assign rd = RAM[a[$clog2(MEM_SIZE)+1:2]];

  // Write a byte, halfword, or word
  always_ff @(posedge clk)
    begin
      if (we & HSEL) begin
        case (HSIZE[1:0])

          // Byte Write
          2'b00:begin
            case (a[1:0])
              2'b00: RAM[a[$clog2(MEM_SIZE)+1:2]] <= {rd[31:8], wd[7:0]};
              2'b01: RAM[a[$clog2(MEM_SIZE)+1:2]] <= {rd[31:16], wd[15:8], rd[7:0]};
              2'b10: RAM[a[$clog2(MEM_SIZE)+1:2]] <= {rd[31:24], wd[23:16], rd[15:0]};
              2'b11: RAM[a[$clog2(MEM_SIZE)+1:2]] <= {wd[31:24], rd[23:0]};
            endcase // a[1:0]
          end

          // Halfword Write
          2'b01: begin
            case (a[1])
              1'b0: RAM[a[$clog2(MEM_SIZE)+1:2]] <= {rd[31:16], wd[15:0]};
              1'b1: RAM[a[$clog2(MEM_SIZE)+1:2]] <= {wd[31:16], rd[15:0]};
            endcase // a[1]
          end

          // Word Write
          2'b10: RAM[a[$clog2(MEM_SIZE)+1:2]] <= wd;
          default: $display("dmem unknown HSIZE[1:0] = %b, at %d", HSIZE[1:0], $time);
        endcase
      end

    end

  // Called from ModelSim using
  // call sim:/testbench/dut/ahb/mem/m/loadMemory simFile clearFirst
  function void loadMemory(string simFile, bit clearFirst);
      if (clearFirst) begin
        $display("Resetting memory to zero");
        for(i = 0; i < MEM_SIZE; i = i + 1) begin
          RAM[i] = 32'b0;
        end
      end
      $display("Loading memory data from %s",simFile);
      $readmemh(simFile, RAM);
  endfunction

  // call sim:/testbench/dut/ahb/mem/m/viewMemory viewAddr
  function void viewMemory(logic[31:0] viewAddr);
      $display("%h stored at %h @ time %d", RAM[viewAddr[$clog2(MEM_SIZE)+1:2]], viewAddr, $time);
  endfunction

endmodule
