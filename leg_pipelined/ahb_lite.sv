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

module ahb_lite (
  input  logic        HCLK    ,
  input  logic        HRESETn ,
  input  logic        HREQUEST, 
  input  logic [ 2:0] HSIZE   ,
  input  logic [31:0] HADDR   ,
  input  logic        HWRITE  ,
  input  logic [31:0] HWDATA  ,
  output logic [31:0] HRDATA  ,
  output logic        HREADY, fiq, irq
);

 /***** Brief Description *******
 * First Created by Max Waugaman 2015-2016
 *
 * ahb_lite contains all the peripherals and AHB-Lite bus for the processor
 ******************************/

              
  logic [ 1:0] HSEL, HSELDEL;
  logic [31:0] HRDATA0, HRDATA1; // NOTE: This assumes memory outputs 4 words at a time
  logic        HREADY0, HREADY1;
  logic [31:0] rawFIQVec, rawIRQVecPart, rawIRQVec, rawSICVec;
  logic        SICinterrupt; // says whether an interrupt is pending in the SIC
  logic        HREADYR;

  //Interrupt Vectors
  assign rawFIQVec = 32'b0;
  assign rawIRQVecPart = 32'b0;
  assign rawSICVec = 32'b0;
  assign rawIRQVec = {rawIRQVecPart[31:27], SICinterrupt, rawIRQVecPart[25:0]};

  // Delay enable logic
  mux2 #(1) HREADYmux(HREADY, 1'b1, HRESETn, HREADYR);

  // Delay address for decoder and mux, because AHB is pipelined
  // flopenr #(32) adrreg(HCLK, ~HRESETn, HREADYR, HADDR, HADDRDEL);
  flopenr #(2) selreg(HCLK, ~HResetn, HREADYR, HSEL, HSELDEL);
  
  // Memory map decoding
  ahb_decoder dec (HADDR, HSEL);
  ahb_mux #(32) mux (HSELDEL,HRDATA0,HRDATA1,HRDATA);
  ahb_mux #(1) ready_mux (HSELDEL,HREADY0,HREADY1,HREADY);
  
  dmem_ahb mem (
    .clk     (HCLK    ),
    .HWRITE  (HWRITE  ),
    .HSEL    (HSEL[0] ),
    .HREADY  (HREADY  ),
    .HResetn (HRESETn ),
    .a       (HADDR   ),
    .wd      (HWDATA  ),
    .HSIZE   (HSIZE   ),
    .rd      (HRDATA0 ),
    .Valid   (HREADY0 )
  );

  io_fwd_shim ioShim (    .*,
    .HSEL  (HSEL[1]),
    .HRDATA(HRDATA1),
    .HREADY(HREADY1)
  );

  
endmodule
