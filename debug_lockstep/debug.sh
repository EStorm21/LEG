#!/bin/sh

RUNTEST=False

while [[ $# > 0 ]]
do
key="$1"

case $key in
	-t|--test)
	TESTFILE="$2"
	shift # past argument
	;;
	-a|--automatic)
	RUNTEST=True
	;;
	-h|--help)
	echo "Usage:"
	echo "  -t TEST, --test TEST             Load a test from /proj/leg/qemu/TEST.bin"
	echo "  -a, --auto                       Automatically run the test noninteractively"
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
	-ex "python RUN_TESTS=$RUNTEST" \
	-x debug.py
