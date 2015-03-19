#simulate and retrieve register values

project open "C:/altera/13.0sp1/pipelined_processor.mpf"; list
#compile project

vlog C:/Users/estor_000/Documents/LEG/leg_pipelined/testbench.sv ; list
#vlog "F:/Academics/Research Clay Wolkin - LEG v4/LEG/leg_pipelined/*.sv" ; list

#set testPath "F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/"; list
set testPath "C:/Users/estor_000/Documents/LEG/tests/"; list

#contains the tests to be run
#set testList "F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/tests.list"; list
set testList "C:/Users/estor_000/Documents/LEG/tests/tests.list"; list

set fp [open $testList r]; list
set file_data [read $fp]; list
close $fp
set tests [split $file_data "\n"]; list

set idx [lsearch $tests "#*"]
while {$idx != -1} {
set idx [lsearch $tests "#*"]
set tests [lreplace $tests $idx $idx]
}

#set tests {adc_r and_r bic_r cmn_r cmp_r eor_r mov_r mvn_r orr_r rsb_r rsc_r sbc_r teq_r tst_r ldr_str_ri}
#puts $tests
set passed {}
set failed {}
foreach {test} $tests {
	#puts $simTest.dat
	set simTest $testPath$test
#	file copy -force $simTest.dat "F:/Academics/Research Clay Wolkin - LEG v4/LEG/tests/simTest.dat"; list
	file copy -force $simTest.dat "C:/Users/estor_000/Downloads/simTest.dat"; list
	vsim -quiet -wlf test.wlf work.testbench; list
	add wave -position insertpoint  sim:/testbench/dut/leg/dp/rf/rf; list
		if {$test == "dhry"} {
			run 30000000; list
			set r [examine -time 30000000 -radix hex sim:/testbench/dut/leg/dp/rf/rf]; list
		} elseif {$test == "random3"} {
			run 3000000; list
			set r [examine -time 3000000 -radix hex sim:/testbench/dut/leg/dp/rf/rf]; list
		} else {
			run 120000; list
			set r [examine -time 120000 -radix hex sim:/testbench/dut/leg/dp/rf/rf]; list
		}
	

	#remove braces from string
	set r [string map {\{ {}} $r]; list
	set r [string map {\} {}} $r]; list


	#convert string to list
	set regList [regexp -all -inline {\S+} $r]; list
	set tempList [regexp -all -inline {\S+} $r]; list

	#remove other mode registers
	set regList2 [lrange $regList 19 end]; list
	set tempList [lrange $regList 14 15]; list
	set regList [concat $tempList $regList2]; list


	#open validation results
	set fp [open $simTest.val r]; list
	set file_data [read $fp]; list
	close $fp

	set piRegisters [split $file_data "\n"]; list
	
	# Debugging to print both piRegisters and regList
	#puts "length of pi Registers is:"
	#puts [llength $regList]
	#puts "Pi registers are: "
	#puts $piRegisters
	#puts " "
	#puts "length of reglist is:"
	#puts [llength $regList]
	#puts "elements of reglist are: "
	#puts $regList
	#puts " "

	#check the results of each register
	for {set i 0} {$i < [llength $regList]} {incr i} {
		#puts "i is: "
		#puts $i;
		#puts [lindex $regList $i]
		#puts [lindex $piRegisters $i]
		if {[lindex $regList $i] != [lindex $piRegisters $i]} {
			puts "==================== $test FAILED =========================="
			lappend failed $test; list
			break
		}
	}
	if {$i == [llength $regList]} {
		puts "$test Succeeded"
		lappend passed $test; list
	}
	quit -sim
}
puts [format "Passed %d tests" [llength $passed]]
puts [format "Failed %d tests, shown below" [llength $failed]]
puts $failed
quit