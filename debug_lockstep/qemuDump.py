import gdb
import re
import os
import ast
import binascii
import array
import shutil
import sys
import subprocess

regParser = re.compile("\\w+\\s+(\\w+)\\s+")
def parseQemuRegs(regs):
	lines = regs.split('\n');
	reglines = lines[0:15]
	regs = [int(regParser.match(r).group(1),16) for r in reglines]
	return regs

def getQemuRegs():
	return parseQemuRegs(gdb.execute('info reg', to_string=True))

def dumpParseQemuRegs(regs):
	lines = regs.split('\n');
	reglines = lines[:-1]
	regs = [int(regParser.match(r).group(1),16) for r in reglines]
	return regs
def dumpQemuRegs():
	return dumpParseQemuRegs(gdb.execute('info reg', to_string=True))

def dumpQemuFile(path):
	datfilename = os.path.join(path, 'qemu_mem_dump.dat')
	rawfilename = os.path.join(path, 'qemu_mem_dump.raw')

	gdb.execute('monitor pmemsave 0x0 0x10000000 "{}"'.format(rawfilename))
	
	subprocess.call(['util/convertBinToDat', rawfilename, datfilename])
			

def setCPSRMode(modebits):
	gdb.execute('set $cpsr = $cpsr & (~0x1f) | {:#x}'.format(modebits), to_string=True)


def runCmdWithR1AndGetR1(instr, r1val):
	old_pc = getExpr('$pc')
	old_r1 = getExpr('$r1')
	old_instr = getExpr('*((int)$pc)')

	setExpr('*((int)$pc)', instr)
	setExpr('$r1', r1val)

	gdb.execute('stepi', to_string=True)
	result = getExpr('$r1')

	setExpr('$pc', old_pc)
	setExpr('$r1', old_r1)
	setExpr('*((int)$pc)', old_instr)

	return result

def runCmdAndGetR1(instr):
	return runCmdWithR1AndGetR1(instr,0)

def dumpCurSPSR():
	# Command we want:
	# MRS r1, SPSR
	# 1110 00010 1 00 1111 0001 000000000000
	# 11100001010011110001000000000000
	# e14f1000
	instr = 0xe14f1000
	return runCmdAndGetR1(instr)

def dumpAllSPSRs():
	spsrs = []

	#10011 - Supervisor mode
	setCPSRMode(0x13)
	spsrs.append(dumpCurSPSR())

	#10111 - Abort mode
	setCPSRMode(0x17)
	spsrs.append(dumpCurSPSR())

	#11011 - Undefined mode
	setCPSRMode(0x1b)
	spsrs.append(dumpCurSPSR())

	#10010 - IRQ mode
	setCPSRMode(0x12)
	spsrs.append(dumpCurSPSR())

	#10001 - FIQ mode
	setCPSRMode(0x11)
	spsrs.append(dumpCurSPSR())

	return spsrs


def dumpAllModeRegs():
	registers = []

	# Go through all the modes, dumping the necessary registers from all of them

	#10000 - User mode
	# 0-14
	setCPSRMode(0x10) 
	registers += dumpQemuRegs()[0:15]

	# 15 seems to be unused?
	registers += [0]

	#10011 - Supervisor mode
	# (0-12,) 16-17
	setCPSRMode(0x13)
	registers += dumpQemuRegs()[13:15]

	#10111 - Abort mode
	# (0-12,) 18-19
	setCPSRMode(0x17)
	registers += dumpQemuRegs()[13:15]

	#11011 - Undefined mode
	# (0-12,) 20-21
	setCPSRMode(0x1b)
	registers += dumpQemuRegs()[13:15]

	#10010 - IRQ mode
	# (0-12,) 22-23
	setCPSRMode(0x12)
	registers += dumpQemuRegs()[13:15]

	#10001 - FIQ mode
	# (0-7,)  24-30
	setCPSRMode(0x11)
	registers += dumpQemuRegs()[8:15]

	# 31 seems to be unused?
	registers += [0]

	return registers

dataParser = re.compile('\\$\\d+ = (.+)')
def getExpr(expr):
	dataMatch = dataParser.match(gdb.execute('p/x {}'.format(expr), to_string=True))
	data = int(dataMatch.group(1),16)
	return data

def setExpr(expr, val):
	gdb.execute('set {} = {:#x}'.format(expr,val), to_string=True)

def dumpCoprocessorReg(reg):
	# Command we want:
	# MRC p15, 0, r1, crX, 0, 0
	# 1110 1110 000 1 XXXX 0001 1111 000 1 0000
	# 111011100001XXXX0001111100010000
	# ee1X1f10
	instr = 0xee101f10 | reg << 16
	return runCmdAndGetR1(instr)

def dumpAllCoprocessorRegs():
	# Dump the coprocessor registers that have data
	cpregs = []
	# cr0: ID register. No writes allowed, so we will ignore
	# 
	# cr1: Control register. 
	cpregs.append(dumpCoprocessorReg(1)) # & 0x00001fff)
	# cr2: Translation table base. 
	cpregs.append(dumpCoprocessorReg(2)) # & 0xffffe000)
	# cr3: Domain access control
	cpregs.append(dumpCoprocessorReg(3))
	# cr4: Reserved. We will ignore
	# 
	# cr5: Fault status. 
	cpregs.append(dumpCoprocessorReg(5)) # & 0x000001ff)
	# cr6: Fault address
	cpregs.append(dumpCoprocessorReg(6))
	# cr7: Controls cache and buffers. Cannot be read, so we will ignore
	# 
	# cr8: Controls Translation Lookaside Buffers. Cannot be read, so we will ignore
	# 
	# cr9 - cr15: Reserved. We will ignore
	# 
	return cpregs

def fullDump(path):
	gdb.execute("disable breakpoints")

	# TODO UNCOMMENT
	dumpQemuFile(path)
	#shutil.copyfile('qemu_mem_dump.dat', os.path.join(path, 'qemu_mem_dump.dat'))

	pc = getExpr('$pc')
	cpsr = getExpr('$cpsr')

	spsrs = dumpAllSPSRs()

	regs = dumpAllModeRegs()

	# For further dumping, we will change to supervisor mode
	#10011 - Supervisor mode
	setCPSRMode(0x13)

	cpregs = dumpAllCoprocessorRegs()

	# Restore cpsr
	setExpr('$cpsr', cpsr)

	statefilename = os.path.join(path, 'qemu_state_dump')

	with open(statefilename, 'w') as f:
		f.write("32'h{:08x}\n".format(pc))
		f.write("32'h{:08x}\n\n".format(cpsr))
		for spsr in spsrs:
			f.write("32'h{:08x}\n".format(spsr))
		f.write('\n')
		for reg in regs:
			f.write("32'h{:08x}\n".format(reg))
		f.write('\n')
		for cpreg in cpregs:
			f.write("32'h{:08x}\n".format(cpreg))

	# with open("qemu_state_dump_{}".format(id), 'r') as f:
	# 	print f.read()

	gdb.execute("enable breakpoints")



# gdb.execute('file ../kernel/vmlinux')
# gdb.execute('target remote localhost:1234')

# # with open('/proj/leg/sim/kernelBug.log','r') as f:
# # 	instr = int(f.readline(),16)
# # 	state = ast.literal_eval(f.readline())

# # gdb.execute('break *{0:#x}'.format(instr), to_string=True)
# # while True:
# # 	gdb.execute('continue', to_string=True)
# # 	if getQemuRegs() == state:
# # 		break
# gdb.execute('break start_kernel')
# gdb.execute('continue')

# gdb.execute('delete 1')

# gdb.execute('set pagination off')
# fullDump('test0')

# # print "\nLocation:"
# # gdb.execute('where')
# # print "\nRegisters:"
# # gdb.execute('info reg')
# # print "\nInstructions:"
# # gdb.execute('x/15i $pc')

# gdb.execute('detach')
# gdb.execute('quit')