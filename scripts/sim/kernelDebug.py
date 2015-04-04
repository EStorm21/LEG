import gdb
import re

regParser = re.compile("\\w+\\s+(\\w+)\\s+")
def parseQemuRegs(regs):
	lines = regs.split('\n');
	reglines = lines[0:15]+[lines[16]]
	regs = [int(regParser.match(r).group(1),16) for r in reglines]
	return regs

def getQemuRegs():
	return parseQemuRegs(gdb.execute('info reg', to_string=True))

instrParser = re.compile('\\$\\d+ = (.+)')
def getQemuInstr():
	instrMatch = instrParser.match(gdb.execute('p/x $pc', to_string=True))
	instr = int(instrMatch.group(1),16)
	return instr

def rIdxToMSIdx(idx):
	return 15-idx
def msIdxToRIdx(idx):
	return 15-idx

stateParser = re.compile("state: (.+) (.+) {(.*)}")
def parseMSState(msState):
	stateMatch = stateParser.match(msState)
	time = int(stateMatch.group(1))
	pc = int(stateMatch.group(2))
	regparts = stateMatch.group(3).split(' ')
	regs = [int(regparts[rIdxToMSIdx(i)],16) for i in range(16)]
	return time, regs

changeParser = re.compile("changes: {(.+)}")
def parseMSChanges(msChanges):
	changeMatch = changeParser.match(msChanges)
	changeParts = changeMatch.group(1).split("} {")
	changes = [tuple(c.split(' ')) for c in changeParts]
	return [{'reg':msIdxToRIdx(int(idx)), 'value':int(val,16)} for idx,val in changes]

def getRegStateOuts(pstate,nstate,astate):
	pstatestr = hexfmt(pstate)
	nstatestr = hexfmt(nstate)
	astatestr = hexfmt(astate)
	for i in range(16):
		if pstate[i] == nstate[i]:
			if astate[i] != nstate[i]:
				astatestr[i] += '  ! (INCORRECT CHANGE)'
		else:
			nstatestr[i] += '  * (changed)'
			if astate[i] == pstate[i]:
				astatestr[i] += '  ~ (didn\'t change)'
			elif astate[i] == nstate[i]:
				astatestr[i] += '  * (changed)'
			else:
				astatestr[i] += '  ! (INCORRECT CHANGE)'
	return '\n'.join(pstatestr), '\n'.join(nstatestr), '\n'.join(astatestr)


def hexfmt(regs):
	return ['{:>6}:   {:>#10x}'.format(('r{}'.format(i) if i!=15 else 'cpsr'),regs[i]) for i in range(16)]
def backtrace(previnstr, prevstate, mstime, msstate, execct):
	trace = []
	trace.append( "Bug occured at simulation time {}ps".format(mstime) )
	trace.append( "after running about {} instructions".format(execct) )
	trace.append( "" )
	pout, nout, aout = getRegStateOuts(prevstate,getQemuRegs(),msstate)
	trace.append( "Previous register state (as of {:#x}):\n{}".format(previnstr,pout))
	instr = getQemuInstr()
	trace.append( "Target register state (at {:#x}):\n{}".format(instr,nout) )
	trace.append( "Actual register state:\n{}".format(aout ))
	trace.append( "" )
	trace.append( "GDB says:" )
	trace.append( gdb.execute('info reg', to_string=True) )
	trace.append( "" )
	trace.append( "Last instructions were" )
	trace.append( gdb.execute('x/15i $pc-0x30', to_string=True) )
	return '\n'.join(trace)
def handleAbort(previnstr, prevstate, mstime, msstate, execct):
	trace = backtrace(previnstr, prevstate, mstime, msstate, execct)
	print "\n\nBUG DETECTED\n------------\n"
	print trace
	with open('/proj/leg/sim/kernelBug.log','w') as f:
		f.write('{:#x}\n'.format(previnstr))
		f.write('{}\n'.format(prevstate))
		f.write('{}\n'.format(mstime))
		f.write('\n\n\n---------------\n\n\n')
		f.write(trace)

gdb.execute('file ../kernel/vmlinux')
gdb.execute('target remote localhost:1234')

while True:
	try:
		with open('/proj/leg/sim/kernelDebugIn.fifo', 'w+',0) as toMSFifo:
			with open('/proj/leg/sim/kernelDebugOut.fifo', 'r') as fromMSFifo:

				INITIAL_INSTRUCTION = 0x10014
				INITIAL_MS_TIME = 987
				INITIAL_EXECUTED_COUNT = 5

				toMSFifo.write("{}\n".format(INITIAL_MS_TIME))

				gdb.execute('set pagination off')
				gdb.execute('break *{0:#x}'.format(INITIAL_INSTRUCTION))
				gdb.execute('continue')
				gdb.execute('delete 1')
				
				state = getQemuRegs()
				execCount = INITIAL_EXECUTED_COUNT

				lastStableInstr = getQemuInstr()

				gdb.execute('p/x $pc')

				print "Getting state from ModelSim"
				msstring = fromMSFifo.readline()
				mstime, msstate = parseMSState(msstring)
				print "Got initial state from ModelSim"

				if(msstate != state):
					toMSFifo.write("ABORT\n")
					handleAbort(lastStableInstr, state, mstime, msstate, execCount)
				else:
					changes = []
					matching = True
					while matching:
						gdb.execute('stepi', to_string=True)
						newState = getQemuRegs()
						if newState == state:
							execCount += 1
							continue
						changes = [{'reg':i,'value':newState[i]} for i in range(16) if state[i] != newState[i]]
						while len(changes)>0:
							#print("Got changes!", changes)
							toMSFifo.write("step\n")
							msstring = fromMSFifo.readline()
							nextchanges = parseMSChanges(msstring)
							#print msstring, nextchanges, changes
							for c in nextchanges:
								if c in changes:
									changes.remove(c)
								else:
									toMSFifo.write("ABORT\n")
									msstring = fromMSFifo.readline()
									mstime, msstate = parseMSState(msstring)
									handleAbort(lastStableInstr, state, mstime, msstate, execCount)
									matching = False
									changes = []
									break
						state = newState;
						lastStableInstr = getQemuInstr()
						execCount += 1
		break
	except IOError, e:
		print "Got an IOError"
		continue

gdb.execute('detach')
gdb.execute('quit')