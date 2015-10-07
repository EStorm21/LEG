set dumpDir $1/
set guiEnabled $2

source qemuDumpRestore.tcl

set toModelSimFn "toModelSim.fifo"
set fromModelSimFn "fromModelSim.fifo"
set inFifo [open $dumpDir$toModelSimFn r]
fconfigure $inFifo -blocking 1
set outFifo [open $dumpDir$fromModelSimFn w]

fconfigure $outFifo -blocking off
fconfigure $outFifo -buffering none

proc extractRegisters {regList cpsr} {
	set mode [expr 0x$cpsr & 0x1f]; list
	if {$mode == 0x10} { 
		#10000 - User mode
		# 0-14
		# (reversed becomes 17-31)
		return [lrange $regList 17 31]
	} elseif {$mode == 0x11} {
		#10001 - FIQ mode
		# 0-7,  24-30
		# (reversed becomes 1-7, 24-31)
		return [concat [lrange $regList 1 7] [lrange $regList 24 31]]
	} elseif {$mode == 0x12} {
		#10010 - IRQ mode
		# 0-12, 22-23
		# (reversed becomes 8-9, 19-31)
		return [concat [lrange $regList 8 9] [lrange $regList 19 31]]
	} elseif {$mode == 0x13} {
		#10011 - Supervisor mode
		# 0-12, 16-17
		# (reversed becomes 14-15, 19-31)
		return [concat [lrange $regList 14 15] [lrange $regList 19 31]]
	} elseif {$mode == 0x17} {
		#10111 - Abort mode
		# 0-12, 18-19
		# (reversed becomes 12-13, 19-31)
		return [concat [lrange $regList 12 13] [lrange $regList 19 31]]
	} elseif {$mode == 0x1b} {
		#11011 - Undefined mode
		# 0-12, 20-21
		# (reversed becomes 10-11, 19-31)
		return [concat [lrange $regList 10 11] [lrange $regList 19 31]]
	} elseif {$mode == 0x1f} {
		#11111 - System mode
		# 0-14
		# (reversed becomes 17-31)
		return [lrange $regList 17 31]
	} else {
		#Invalid mode!
		return [lrepeat 15 "xxxxxxxx"]
	}
}

proc check_advancing_e {t} {
	return [examine -time $t -radix hex sim:/testbench/dut/leg/dp/advancingEdebug]
}
proc inspect_e {t} {
	set pc_e [examine -time $t -radix hex sim:/testbench/dut/leg/dp/PCE]; list
	set instr_e [examine -time $t -radix hex sim:/testbench/dut/leg/dp/instrEdebug]; list

	return [list $pc_e $instr_e]
}

proc check_advancing_w {t} {
	return [examine -time $t -radix hex sim:/testbench/dut/leg/dp/advancingWdebug]
}
proc inspect_w {t} {
	set pc_w [examine -time $t -radix hex sim:/testbench/dut/leg/dp/PCW]; list
	set instr_w [examine -time $t -radix hex sim:/testbench/dut/leg/dp/instrWdebug]; list
	set cpsr_w [examine -time $t -radix hex sim:/testbench/dut/leg/c/CPSRW]; list

	set r [examine -time $t -radix hex sim:/testbench/dut/leg/dp/rf/rf]; list
	set r [string map {\{ {}} $r]; list
	set r [string map {\} {}} $r]; list
	set allRegsList [regexp -all -inline {\S+} $r]; list
	set registers_w [extractRegisters $allRegsList $cpsr_w]; list

	return [list $pc_w $instr_w $cpsr_w $registers_w]
}

############# RUNNING ##############

if { $guiEnabled } {
	source ../debug_lockstep/setupWaves.tcl
} else {
	nolog -all
}

set STEPSIZE 10; list
set MAX_STEPS_BEFORE_ABORT 1000; list
set CLEAR_INTERVAL 1000; list

puts $outFifo "Ready!"

set nextClearTime 10000

set time 227; list
run @$time ps

while {1} {
	gets $inFifo cmd
	switch $cmd {
		"pause" {
			pause
			# After user runs "resume" in ModelSim console
			puts $outFifo "Ready!"
		}
		"abort" {
			puts "Aborting"
			break
		}
		"advance" {
			for { set i 0 } { $i < $MAX_STEPS_BEFORE_ABORT } { incr i } {
				if { $time > $nextClearTime } {
					dataset clear
					incr nextClearTime $CLEAR_INTERVAL
				}
				incr time $STEPSIZE
				run @$time ps

				set advance_e [check_advancing_e $time]; list
				set advance_w [check_advancing_w $time]; list

				if {$advance_e || $advance_w} {
					puts $outFifo "success"
					puts $outFifo $time
					if {$advance_w} {
						puts $outFifo "advance_w"
						puts $outFifo [inspect_w $time]
					} else {
						puts $outFifo "no advance_w"
					}
					if {$advance_e} {
						puts $outFifo "advance_e"
						puts $outFifo [inspect_e $time]
					} else {
						puts $outFifo "no advance_e"
					}
					break;
				}
			}

			if { $i >= $MAX_STEPS_BEFORE_ABORT } {
				puts "Too many ticks without advance."
				puts $outFifo "fail"
			}
		}
		"ioread" {
			gets $inFifo readAddr
			gets $inFifo readValue
			call sim:/testbench/dut/ahb/ioShim/pushRead $readAddr $readValue
		}
		"setirq" {
			gets $inFifo irq
			gets $inFifo fiq
			call sim:/testbench/dut/ahb/ioShim/setInterrupts $irq $fiq
		}
		"checkpoint" {
			gets $inFifo path
			checkpoint $path
		}
		default {
			puts {!!!!!!! Invalid command "$cmd" !!!!!!!}
		}
	}
}