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

module leg #(parameter dLines, parameter dbsize) // parameters needed for cache clearing micro ops
          (input  logic        clk, reset,
           output logic [31:0] PCF,
           input  logic [31:0] InstrF, 
           output logic        MemWriteM,
           output logic [31:0] ALUOutM, WriteDataM,
           input  logic [31:0] ReadDataM,
           // Added for memory
           input logic         DStall, IStall,
           output logic        MemtoRegM,
           output logic [3:0]  ByteMaskM,
           // Added for exceptions
           input logic         PrefetchAbort, DataAbort, IRQ, FIQ,
           // Added for Coprocessor Instructions
           output logic        CoProc_WrEnM, CoProc_EnM, 
           output logic [3:0]  CoProc_AddrM, CoProc_CRmM, 
           output logic [2:0]  CoProc_Op2M, 
           output logic [31:0] CPUWriteData, 
           input logic  [31:0] CP15rd_M,
           input logic         HighVec, // high exception vectors. To dp
           // Added for MMU
           output logic uOpStallD, StallD, FlushD, FlushE);

/***** Brief Description *******
 * leg contains the hazard unit, datapath, controller, and addresspath of the 
 * LEG processor. It excludes the memory system which is instatiated in top.sv.
 ******************************/

  /// Output from Hazard Unit
  logic [1:0]  ForwardAE, ForwardBE;
  logic        StallE, StallF, StallM, FlushM, FlushW, StallW, StalluOp;
  logic        ExceptionSavePC;

  /// Output from Datapath
  logic [3:0]  ALUFlagsE;
  logic [1:0]  MultFlagsE;
  logic [31:0] InstrD, DefaultInstrD, ALUOutW;
  logic        MultStallD, MultStallE;
  logic        WriteMultLoE, WriteMultLoKeptE;
  logic        ZeroRotateD, CarryHiddenE;
  logic  [1:0] R1_D;
  logic  [1:0] R2_D;
  logic        sh_a0E, sh_a31E, sh_rot0E, sh_rot31E;
  logic  [7:0] SrcA70E;

  

  /// Output from Controller
  logic [1:0]  RegSrcD, ImmSrcD;
  logic [3:0]  ALUControlE;
  logic        ALUSrcE, ALUSrcD, BranchTakenE, MemtoRegW, PCSrcW, RegWriteW, Reg_usr_D, RSRselectE;
  logic [6:4]  ShiftOpCode_E;
  logic [31:0] InstrE, ALUResultE;
  logic        RegWriteM, MemtoRegE, PCWrPendingF, WriteByteE, StrHalfwordE, LdrHalfwordW, HalfwordOffsetW;
  logic        Ldr_SignBW, Ldr_SignHW;
  logic        DoNotWriteRegE, PrevRSRstateD, PrevRSRstateE, CPSRtoRegW;
  logic        LDMSTMforwardD, LDMSTMforwardE, MultSelectD, RselectE;
  logic [3:0]  FlagsE; // [1] is C, [0] is V
  logic [1:0]  ByteOffsetW;
  logic [1:0]  MultControlE;
  logic        KeepVE, noRotateD, InstrMuxD;
  logic [31:0] uOpInstrD;
  logic [2:0]  ALUOperationE, CVUpdateE;
  logic        InvertBE, ReverseInputsE, ALUCarryInE, MultEnableE, ZFlagKeptE, LoadLengthW;
  logic [3:0]  RegFileRzD;
  logic        ShifterCarryOut_cycle2E, CoProc_En, AddZeroE, ClzSelectE;
  logic [7:0]  CPSR8_W;
  logic [31:0] PSR_W;
  logic RegtoCPSR_EMW, CPSRtoReg_EMW, CoProc_En_EMW;
  logic        ExceptionFlushD, ExceptionFlushE, ExceptionFlushM, ExceptionFlushW, ExceptionStallD;
  logic [ 4:0] shamtE;
  logic [ 4:0] shctl_5E;
  logic [ 7:0] shctl_8E;
  logic        rrx_inE, longshiftE, leftE, shiftE, arithE;

  /// Output from AddressPath
  logic        Match_1E_M, Match_1E_W, Match_2E_M, Match_2E_W, Match_1D_E, Match_2D_E, ExceptionVectorSelectW;
  logic [31:0]  WA3W, WA3E, RA1D, RA2D;
  logic [3:0]  DestRegD;

  // Exceptions
  logic       UndefinedInstr;
  logic       SWI;
  logic       RegtoCPSR, CPSRtoReg;
  logic [1:0] PCInSelect;
  logic [2:0] VectorPCnextF;

  controller #(dLines,dbsize) c(.*);
  datapath dp (.*); 
  hazard h(.*);
  addresspath ap(.*);

endmodule
