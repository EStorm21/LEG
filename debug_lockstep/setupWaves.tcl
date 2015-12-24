add wave -position insertpoint  \
sim:/testbench/dut/leg/c/reset \
sim:/testbench/dut/leg/dp/clk \
sim:/testbench/dut/leg/c/CPSRW \
sim:/testbench/dut/leg/dp/rf/rf

add wave -position insertpoint -group valid \
sim:/testbench/dut/leg/c/validDdebug \
sim:/testbench/dut/leg/c/validEdebug \
sim:/testbench/dut/leg/c/validMdebug \
sim:/testbench/dut/leg/c/validWdebug

add wave -position insertpoint -group PC \
sim:/testbench/dut/leg/dp/PCF \
sim:/testbench/dut/leg/dp/PCD \
sim:/testbench/dut/leg/dp/PCE \
sim:/testbench/dut/leg/dp/PCM \
sim:/testbench/dut/leg/dp/PCW

add wave -position insertpoint -group stall \
sim:/testbench/dut/leg/dp/StallF \
sim:/testbench/dut/leg/dp/StallD \
sim:/testbench/dut/leg/dp/StallE \
sim:/testbench/dut/leg/dp/StallM \
sim:/testbench/dut/leg/dp/StallW

add wave -position insertpoint -group flush \
sim:/testbench/dut/leg/dp/FlushD \
sim:/testbench/dut/leg/dp/FlushE \
sim:/testbench/dut/leg/dp/FlushM \
sim:/testbench/dut/leg/dp/FlushW

add wave -position insertpoint -group instr \
sim:/testbench/dut/leg/dp/InstrF \
sim:/testbench/dut/leg/dp/InstrD \
sim:/testbench/dut/leg/dp/InstrE \
sim:/testbench/dut/leg/dp/instrEdebug \
sim:/testbench/dut/leg/dp/instrMdebug \
sim:/testbench/dut/leg/dp/instrWdebug \ 
sim:/testbench/dut/leg/c/CondExE \ 

add wave -position insertpoint -group uOp \
sim:/testbench/dut/leg/c/uOpFSM/uOpStallD \
sim:/testbench/dut/leg/c/uOpFSM/state \
sim:/testbench/dut/leg/c/uOpFSM/nextState \
sim:/testbench/dut/leg/c/uOpFSM/reset \ 

add wave -position insertpoint -group exception \
sim:/testbench/dut/leg/c/exh/UndefinedInstrE \
sim:/testbench/dut/leg/c/exh/SWIE \
sim:/testbench/dut/leg/c/exh/PrefetchAbortE \
sim:/testbench/dut/leg/c/exh/DataAbort \
sim:/testbench/dut/leg/c/exh/interruptPending \
sim:/testbench/dut/leg/c/exh/IRQ \
sim:/testbench/dut/leg/c/exh/IRQEn_sync \
sim:/testbench/dut/leg/c/exh/FIQ \
sim:/testbench/dut/leg/c/exh/FIQEn_sync \
sim:/testbench/dut/leg/c/exh/state \
sim:/testbench/dut/leg/c/exh/nextState \
sim:/testbench/dut/leg/c/exh/ExceptionSavePC \
sim:/testbench/dut/leg/c/exh/PCVectorAddress \


add wave -position insertpoint -group advancing \
sim:/testbench/dut/leg/c/advancingEdebug \
sim:/testbench/dut/leg/c/advancingWdebug

add wave -position insertpoint -group ioShim \
sim:/testbench/dut/ahb/ioShim/HADDR \
sim:/testbench/dut/ahb/ioShim/HCLK \
sim:/testbench/dut/ahb/ioShim/HRDATA \
sim:/testbench/dut/ahb/ioShim/HRESETn \
sim:/testbench/dut/ahb/ioShim/HSEL \
sim:/testbench/dut/ahb/ioShim/HREQUEST \
sim:/testbench/dut/ahb/ioShim/HWDATA \
sim:/testbench/dut/ahb/ioShim/HWRITE \
sim:/testbench/dut/ahb/ioShim/fiq \
sim:/testbench/dut/ahb/ioShim/irq \
sim:/testbench/dut/ahb/HSEL