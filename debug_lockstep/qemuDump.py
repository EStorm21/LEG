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

def showQemuState():
	gdb.execute("maint packet qqemu.dumpstate output/tmp_qemu_state_dump")
	cr7 = gdb.execute("leg-get-cp-reg 7 14 0 3") # basically mrc 15, 0, xx, cr7, cr14, {3}
	line_headers = [
		'PC: ',
		'CPSR: ',
		'--------------',
		'spsr[0] (SWI): ',
		'spsr[1] (Abort): ',
		'spsr[2] (Undef): ',
		'spsr[3] (IRQ): ',
		'spsr[4] (FIQ): ',
		'--------------',
		'rf[0]: ',
		'rf[1]: ',
		'rf[2]: ',
		'rf[3]: ',
		'rf[4]: ',
		'rf[5]: ',
		'rf[6]: ',
		'rf[7]: ',
		'rf[8]: ',
		'rf[9]: ',
		'rf[10]: ',
		'rf[11]: ',
		'rf[12]: ',
		'rf[13]: ',
		'rf[14]: ',
		'rf[15]: ',
		'rf[16]: ',
		'rf[17]: ',
		'rf[18]: ',
		'rf[19]: ',
		'rf[20]: ',
		'rf[21]: ',
		'rf[22]: ',
		'rf[23]: ',
		'rf[24]: ',
		'rf[25]: ',
		'rf[26]: ',
		'rf[27]: ',
		'rf[28]: ',
		'rf[29]: ',
		'rf[30]: ',
		'rf[31]: ',
		'--------------',
		'coproc[0] not set\ncoproc[1] (): ',
		'coproc[2] (): ',
		'coproc[3] (): ',
		'coproc[4] not set\ncoproc[5] (): ',
		'coproc[6] (): ',
	]
	with open('output/tmp_qemu_state_dump','r') as f:
		msg = ''.join(a+b for a,b in zip(line_headers, f))
	return msg

