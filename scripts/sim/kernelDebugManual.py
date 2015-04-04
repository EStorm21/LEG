import gdb
import re
import ast

regParser = re.compile("\\w+\\s+(\\w+)\\s+")
def parseQemuRegs(regs):
	lines = regs.split('\n');
	reglines = lines[0:15]+[lines[16]]
	regs = [int(regParser.match(r).group(1),16) for r in reglines]
	return regs
def getQemuRegs():
	return parseQemuRegs(gdb.execute('info reg', to_string=True))

gdb.execute('file ../kernel/vmlinux')
gdb.execute('target remote localhost:1234')

with open('/proj/leg/sim/kernelBug.log','r') as f:
	instr = int(f.readline(),16)
	state = ast.literal_eval(f.readline())


gdb.execute('break *{0:#x}'.format(instr), to_string=True)
while True:
	gdb.execute('continue', to_string=True)
	if getQemuRegs() == state:
		break

gdb.execute('delete 1')
print "\nLocation:"
gdb.execute('where')
print "\nRegisters:"
gdb.execute('info reg')
print "\nInstructions:"
gdb.execute('x/15i $pc')