set dumpDir $1/

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

proc inspect {t} {
	set r [examine -time $t -radix hex sim:/testbench/dut/leg/dp/rf/rf]; list
	set r [string map {\{ {}} $r]; list
	set r [string map {\} {}} $r]; list
	set regList [regexp -all -inline {\S+} $r]; list

	# #remove other mode registers
	# set regList2 [lrange $regList 19 end]; list
	# set tempList [lrange $regList 14 15]; list
	# set regList [concat $tempList $regList2]; list

	set cpsr [examine -time $t -radix hex sim:/testbench/dut/leg/c/CPSRW]; list

	set curRegList [extractRegisters $regList $cpsr]

	set pc [examine -time $t -radix hex sim:/testbench/dut/leg/dp/PCF]; list

	#return [list $pc [concat $cpsr $regList]]
	# return [list $pc $regList]
	return [list $pc $curRegList]
}

proc changed {old new} {
	return [expr {[lindex $old 1] ne [lindex $new 1]}]
}

proc sendState {state time} {
	global outFifo
	puts $outFifo "state: $time $state"
}
proc sendChanges {ch time} {
	global outFifo
	puts $outFifo "changes: $ch"
}
proc sendStop {} {
	global outFifo
	puts $outFifo "STOP"
}
proc sendPing {} {
	global outFifo
	puts $outFifo "ping"
}

proc changes {old new} {
	set oldregs [lindex $old 1]; list
	set newregs [lindex $new 1]; list

	set changes {}; list
	for {set i 0} {$i<15} {incr i} {
		set oldreg [lindex $oldregs $i]; list
		set newreg [lindex $newregs $i]; list
		if {$newreg ne $oldreg} {
			lappend changes [list $i $newreg]
		}
	}
	return $changes
}

proc consult {state time} {
	global inFifo
	gets $inFifo cmd
	set ABORT "ABORT"; list
	if {[expr {"$cmd" == $ABORT}]} {
		sendState $state $time
		return 1
	} else {
		return 0
	}
}

set STEPSIZE 10; list
set RUNSIZE 50000; list
set FFWDSIZE 4000000; list


puts "Ready to begin!"

set time 227; list
set cacheEndTime [expr {$time+50}]

run @$cacheEndTime ps

set state [inspect $time]; list
sendState $state $time
puts "Sent initial state!"

set aborting 0; list

if {[consult $state $time]} then {
	puts "Aborted!"
	checkpoint kernelBugCheckpoint
	quit -sim
} else {
	while {1} {
		while {$time < $cacheEndTime} {
			incr time $STEPSIZE
			set newstate [inspect $time]; list
			if {[changed $state $newstate]} {
				#puts "Found a change"
				set diff [changes $state $newstate]; list
			#	if {$time > 122264390} {
			#		puts "OLD: $state"
			#		puts "NEW: $newstate"
			#		puts "CHANGES: $diff"
			#		puts "--"
			#	}
				sendChanges $diff $time
				set state $newstate
				if {[consult $state $time]} {
					puts "Aborted!"
					checkpoint kernelBugCheckpoint
					set aborting 1; list
					break
				}
			}
		}
		
		sendPing
		if {[consult $state $time]} {
			puts "Aborted!"
			checkpoint kernelBugCheckpoint
			set aborting 1; list
			break
		}

		if {$aborting} {
			break
		}
		puts "\nSimulating more time... (currently at $time ps)"
		dataset clear
		run $RUNSIZE ps
		incr cacheEndTime $RUNSIZE; list
	#dataset clear
	}
}

quit
