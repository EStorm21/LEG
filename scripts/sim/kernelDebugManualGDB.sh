#!/bin/sh
qemu-system-arm -M integratorcp -m 256M -nographic -kernel /proj/leg/kernel/system.bin -S -s &
QEMUPID=$!

PYTHONPATH=/proj/leg/debugutils/python2.7/install/lib/ PYTHONHOME=/proj/leg/debugutils/python2.7/install/ LD_LIBRARY_PATH=/proj/leg/debugutils/python2.7/install/lib/ /proj/leg/debugutils/gcc-arm-none-eabi-4_9-2015q1/bin/arm-none-eabi-gdb-py -q -x kernelDebugManual.py

kill $QEMUPID