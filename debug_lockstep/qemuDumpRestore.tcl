#simulate and retrieve register values

transcript off

project open "../sim/pipelined_processor.mpf"; list

# set dumpDir $1 (essentialy)
set dumpDataName "qemu_mem_dump"
set dumpDataFile $dumpDir$dumpDataName.dat
set dumpStateName "qemu_state_dump"
set dumpStateFile $dumpDir$dumpStateName

set ignoredLogName "wlffile.wlf"
set ignoredLogFile $dumpDir$ignoredLogName

# Read vopt configuration variable
set cfg "configuration.py"
set fp [open $cfg r]; list
set file_data [read $fp]; list
close $fp
regexp {hasVopt=([01])} $file_data -> hasVopt

# file copy -force $dumpDataFile "../sim/simTest.dat"; list
if ($hasVopt==1) {
	vsim -quiet -wlf "$ignoredLogFile" -wlftlim {1 ns} work.testbench_opt; list
} else {
	vsim -quiet -wlf "$ignoredLogFile" -wlftlim {1 ns} work.testbench; list
}

call sim:/testbench/dut/ahb/mem/m/loadMemory "$dumpDataFile" $shouldResetMem

nolog -all
set temp_t 0

# source ../debug_lockstep/setup_waves.tcl

# add wave -position insertpoint  sim:/testbench/dut/leg/dp/rf/rf; list
# add wave -position insertpoint  sim:/testbench/dut/leg/c/CPSRW; list
# add wave -position insertpoint  sim:/testbench/dut/leg/dp/PCF; list
# add wave -position insertpoint  sim:/testbench/dut/leg/c/cpsr_W/spsr; list
# add wave -position insertpoint  sim:/testbench/dut/cp15/rf; list
# add wave -position insertpoint  \
# 	sim:/testbench/dut/leg/dp/InstrD \
# 	sim:/testbench/dut/leg/dp/InstrE \
# 	sim:/testbench/dut/leg/dp/InstrF; list

run 221ps

set dumpfile [open $dumpStateFile r]

# PCF
set pcf [gets $dumpfile]
change /testbench/dut/leg/dp/PCF $pcf

# CPSR
set cpsr [gets $dumpfile]
change /testbench/dut/leg/c/cpsr_W/cpsr $cpsr
change /testbench/dut/leg/c/FlagsNextW [examine {/testbench/dut/leg/c/cpsr_W/cpsr[31:28]}]

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
set cpreg [gets $dumpfile]
change {/testbench/dut/cp15/rf[7]} $cpreg

run 4ps

