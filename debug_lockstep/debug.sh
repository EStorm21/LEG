#!/bin/sh

COMMAND="['interactive']"

while [[ $# > 0 ]]
do
key="$1"
NOIRQ=""

case $key in
	-t|--test)
	if [ "$2" != "--dump" ]
	then
		TESTFILE="$2"
		shift # past argument
	fi
	;;
	-a|--auto)
	COMMAND="['autorun']"
	;;
	--bugcheckpoint)
	COMMAND="['bugcheckpoint', '$2', '$3']"
	shift # past argument
	shift # past argument
	;;
	--divideandconquer)
	COMMAND="['divideandconquer', '$2', $3, $4]"
	# Handle the dump parameter
	if [ "$5" == "--dump" ]
	then
		COMMAND="['divideandconquer', '$2', $3, $4, '$5', '$6']"
		shift
		shift
	fi
	shift # past argument
	shift # past argument
	shift # past argument
	;;
	--noirq)
	echo "debug.sh: noirq selected. divide and conquer functionality not implemented"
	;;
	-h|--help)
	echo "Usage:"
	echo "  -t TEST, --test TEST             Load a test (.bin) from the given path"
	echo "  -a, --auto                       Automatically run the test noninteractively"
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
