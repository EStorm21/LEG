import gdb
import re
import os
import ast
import binascii
import array
import shutil
import sys
import subprocess

def dumpQemuFile(path):
	datfilename = os.path.join(path, 'qemu_mem_dump.dat')
	rawfilename = os.path.join(path, 'qemu_mem_dump.raw')

	gdb.execute('monitor pmemsave 0x0 0x10000000 "{}"'.format(rawfilename))
	
	subprocess.call(['util/convertBinToDat', rawfilename, datfilename])

def dumpQemuState(path):
	gdb.execute("maint packet qqemu.dumpstate {}".format(os.path.join(path, 'qemu_state_dump')))

def fullDump(path):
	print "Dumping Qemu state"
	dumpQemuFile(path)
	dumpQemuState(path)
