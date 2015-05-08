#simulate and retrieve register values

project open "/proj/leg/sim/pipelined_processor.mpf"; list
#compile project

vlog +acc /proj/leg/LEG/leg_pipelined/*.sv ; list

# set dumpDir $1 (essentialy)
set dumpDataName "qemu_mem_dump"
set dumpDataFile $dumpDir$dumpDataName.dat
set dumpStateName "qemu_state_dump"
set dumpStateFile $dumpDir$dumpStateName

set ignoredLogName "wlffile.wlf"
set ignoredLogFile $dumpDir$ignoredLogName

file copy -force $dumpDataFile "/proj/leg/sim/simTest.dat"; list
vsim -quiet -wlf ignoredLogFile -wlftlim {1 ns} work.testbench; list

nolog -all
transcript off
set temp_t 0

add wave -position insertpoint  sim:/testbench/dut/leg/dp/rf/rf; list
add wave -position insertpoint  sim:/testbench/dut/leg/c/CPSRW; list
add wave -position insertpoint  sim:/testbench/dut/leg/dp/PCF; list
add wave -position insertpoint  sim:/testbench/dut/leg/c/cpsr_W/spsr; list
add wave -position insertpoint  sim:/testbench/dut/cp15/rf; list
add wave -position insertpoint  \
	sim:/testbench/dut/leg/dp/InstrD \
	sim:/testbench/dut/leg/dp/InstrE \
	sim:/testbench/dut/leg/dp/InstrF; list

run 223ps

set dumpfile [open $dumpStateFile r]

# PCF
set pcf [gets $dumpfile]
change /testbench/dut/leg/dp/PCF $pcf

# CPSR
set cpsr [gets $dumpfile]
change /testbench/dut/leg/c/CPSRW $cpsr

gets $dumpfile

# SPSRs
for { set i 0 } { $i <= 4 } { incr i } {
	set spsr [gets $dumpfile]
	change /testbench/dut/leg/c/cpsr_W/spsr\[$i\] $spsr
}

gets $dumpfile

# Regs
for { set i 0 } { $i <= 31 } { incr i } {
	set reg [gets $dumpfile]
	change /testbench/dut/leg/dp/rf/rf\[$i\] $reg
}

gets $dumpfile

# CP15 regs
set cpreg [gets $dumpfile]
change {/testbench/dut/cp15/rf[1]} $cpreg
set cpreg [gets $dumpfile]
change {/testbench/dut/cp15/rf[2]} $cpreg
set cpreg [gets $dumpfile]
change {/testbench/dut/cp15/rf[3]} $cpreg
set cpreg [gets $dumpfile]
change {/testbench/dut/cp15/rf[5]} $cpreg
set cpreg [gets $dumpfile]
change {/testbench/dut/cp15/rf[6]} $cpreg

run 4ps

