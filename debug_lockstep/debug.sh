#!/bin/bash

COMMAND="['interactive']"
noirq="false"
dump="false"
dumpdir=""

while [[ $# > 0 ]]
do
key="$1"

echo "debug.sh: key = $key"

case $key in
	-t|--test)
	TESTFILE="$2"
	shift # past argument
	;;
	-a|--auto)
	COMMAND="['autorun']"
	;;
	--bugcheckpoint)
	COMMAND="['bugcheckpoint', '$2', '$3']"
	shift # past argument
	shift # past argument
	;;
	-d|--dump)
	dump="true"
	dumpdir="$2"
	shift
	;;
	--divideandconquer)
	echo "debug.sh: Divide and conquer - dump = $dump, noirq = $noirq"
	if [ "$noirq" = "false" ] && [ "$dump" = "false" ]; then
			#         command to debug.py, start_pc, goal_pc, noirq
		echo "case of noirq false and dump false"
		COMMAND="['divideandconquer', '$2', $3, $4]"
	elif [ "$noirq" = "false" ] && [ "$dump" = "true" ]; then
		echo "case of noirq false and dump true"
		COMMAND="['divideandconquer', '$2', $3, $4, '--dump', 'dumpdir']"
	elif [ "$noirq" = "true" ] && [ "$dump" = "true" ]; then
		echo "case of noirq true and dump true"
		COMMAND="['divideandconquer', '$2', $3, $4, '--dump', '$dumpdir', '--noirq']"
	else 
		echo "case of noirq true and dump false"
		COMMAND="['divideandconquer', '$2', $3, $4, '--noirq']"
	fi
	shift # past argument
	shift # past argument
	shift # past argument
	;;
	--noirq)
	noirq="true"
	;;
	-h|--help)
	echo "Usage:"
	echo "  -t TEST, --test TEST             Load a test (.bin) from the given path"
	echo "  -a, --auto                       Automatically run the test noninteractively"
	echo "  --dump, --dump [file]			 Dump qemu state to file for loading in modelsim"
	echo "  --noirq 						 Run test with IRQ interrupts disabled"
	# Hidden option:
	# echo "  --bugcheckpoint BUGFILE DEST   Automatically create a checkpoint for BUGFILE."
	# echo "  --divideandconquer RUNDIR START END   Automatically run a divide-and-conquer section from START to END"
	exit 0
	;;
	*)
	echo "Unknown option: $key"
	exit 1
	;;
esac
shift # past argument or value
done

PYTHONPATH=./:/proj/leg/debugutils/python2.7/install/lib/ \
	PYTHONHOME=/proj/leg/debugutils/python2.7/install/ \
	LD_LIBRARY_PATH=/proj/leg/debugutils/python2.7/install/lib/ \
	/proj/leg/debugutils/gcc-arm-none-eabi-4_9-2015q1/bin/arm-none-eabi-gdb-py -q \
	-ex "python TEST_FILE=\"$TESTFILE\"" \
	-ex "python COMMAND=$COMMAND" \
	-x debug.py

rm transcript
