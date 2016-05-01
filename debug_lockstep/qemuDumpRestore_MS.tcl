# simulate and retrieve register values
# This version is modified for use in a separate ModelSim project.

transcript off

project open "./msdebug.mpf"; list

set dumpDir "./"
set dumpDataName "qemu_mem_dump"
set dumpDataFile $dumpDir$dumpDataName.dat
set dumpStateName "qemu_state_dump"
set dumpStateFile $dumpDir$dumpStateName

set ignoredLogName "wlffile.wlf"
set ignoredLogFile $dumpDir$ignoredLogName

#vlog *.sv

# file copy -force $dumpDataFile "../sim/simTest.dat"; list
vsim -quiet -wlf "$ignoredLogFile" -wlftlim {1 ns} work.testbench; list
set shouldResetMem 1
call sim:/testbench/dut/ahb/mem/m/loadMemory "$dumpDataFile" $shouldResetMem

nolog -all
set temp_t 0

do "./addAll.do"

run 223ps

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
