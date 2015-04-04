#simulate and retrieve register values

project open "/proj/leg/sim/pipelined_processor.mpf"; list
#compile project

vlog /proj/leg/LEG/leg_pipelined/*.sv ; list
#vlog "F:/Academics/Research Clay Wolkin - LEG v4/LEG/leg_pipelined/*.sv" ; list

#set testPath "F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/"; list
set testPath "/proj/leg/LEG/tests/"; list

set test "linux"

#puts $simTest.dat
set simTest $testPath$test
file copy -force $simTest.dat "/proj/leg/sim/simTest.dat"; list
vsim -quiet -wlf test.wlf work.testbench; list
add wave -position insertpoint  sim:/testbench/dut/leg/dp/rf/rf; list
add wave -position insertpoint  sim:/testbench/dut/leg/c/CPSRW; list
add wave -position insertpoint  sim:/testbench/dut/leg/dp/PCF; list


set inFifo [open "kernelDebugIn.fifo" r]
fconfigure $inFifo -blocking 1
set outFifo [open "kernelDebugOut.fifo" w]
fconfigure $outFifo -blocking off
fconfigure $outFifo -buffering none


proc inspect {t} {
	set r [examine -time $t -radix hex sim:/testbench/dut/leg/dp/rf/rf]; list
	set r [string map {\{ {}} $r]; list
	set r [string map {\} {}} $r]; list
	set regList [regexp -all -inline {\S+} $r]; list
	#remove other mode registers
	set regList2 [lrange $regList 19 end]; list
	set tempList [lrange $regList 14 15]; list
	set regList [concat $tempList $regList2]; list

	set cpsr [examine -time $t -radix hex sim:/testbench/dut/leg/c/CPSRW]; list

	set pc [examine -time $t -radix hex sim:/testbench/dut/leg/dp/PCF]; list

	return [list $pc [concat $cpsr $regList]]
}

proc changed {old new} {
	return [expr {[lindex $old 1] != [lindex $new 1]}]
}

proc sendState {state time} {
	global outFifo
	puts $outFifo "state: $time $state"
}
proc sendChanges {ch time} {
	global outFifo
	puts $outFifo "changes: $ch"
}

proc changes {old new} {
	set oldregs [lindex $old 1]; list
	set newregs [lindex $new 1]; list

	set changes {}; list
	for {set i 0} {$i<16} {incr i} {
		set oldreg [lindex $oldregs $i]; list
		set newreg [lindex $newregs $i]; list
		if {$newreg != $oldreg} {
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
set RUNSIZE 5000; list

while {1} {
puts "Ready to begin!"
gets $inFifo time
puts "Got input from fifo!"
#set time 500; list
run [expr {$time+50}] ps
set state [inspect $time]; list
sendState $state $time
puts "Sent initial state!"

set aborting 0; list

if {[consult $state $time]} then {
	puts "Aborted!"
	quit -sim
} else {
	while {1} {
		puts "Simulating more time..."
		run $RUNSIZE ps
		set cacheEndTime [expr {$time + $RUNSIZE}]; list
		while {$time < $cacheEndTime} {
			incr time $STEPSIZE
			set newstate [inspect $time]; list
			if {[changed $state $newstate]} {
				#puts "Found a change"
				set diff [changes $state $newstate]; list
				sendChanges $diff $time
				set state $newstate
				if {[consult $state $time]} {
					puts "Aborted!"
					set aborting 1; list
					break
				}
			}
		}
		
		if {$aborting} {
			break
		}
	}
}

break
# puts "Restarting..."
# restart -f
}
quit