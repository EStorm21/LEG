#simulate and retrieve register values

project open "/proj/leg/sim/pipelined_processor.mpf"; list
#compile project

vlog /proj/leg/LEG/leg_pipelined/*.sv ; list

set testPath "/proj/leg/LEG/tests/"; list

set test "linux"

#puts $simTest.dat
set simTest $testPath$test
file copy -force $simTest.dat "/proj/leg/sim/simTest.dat"; list
vsim -quiet -wlf test.wlf work.testbench; list
add wave -position insertpoint  sim:/testbench/dut/leg/dp/rf/rf; list
add wave -position insertpoint  sim:/testbench/dut/leg/c/CPSRW; list
add wave -position insertpoint  sim:/testbench/dut/leg/dp/PCF; list
add wave -position insertpoint  sim:/testbench/dut/leg/dp/InstrF; list
add wave -position insertpoint  sim:/testbench/dut/leg/dp/InstrD; list
add wave -position insertpoint  sim:/testbench/dut/leg/dp/InstrE; list

set buglog [open "kernelBug.log" r]
gets $buglog
gets $buglog
gets $buglog time

run [expr {$time+500}] ps
wave cursor time -time "$time ps" 1