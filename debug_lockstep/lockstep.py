import gdb, re, os, ast, math, tempfile, shutil, subprocess, sys, select, signal
import qemuDump

regParser = re.compile("\\w+\\s+(\\w+)\\s+")
def parseQemuRegs(regs):
	lines = regs.split('\n');
	reglines = lines[0:15]
	regs = [int(regParser.match(r).group(1),16) for r in reglines]
	return regs

def getQemuRegs():
	return parseQemuRegs(gdb.execute('info reg', to_string=True))

icountParser = re.compile('.+: (.+)')
def getQemuInstrCt():
	countMatch = icountParser.match(gdb.execute('monitor xp/x 0x10000028', to_string=True))
	timeval = int(countMatch.group(1),16)
	return int(math.ceil(timeval * 1000. / 24.))

dataParser = re.compile('\\$\\d+ = (.+)')
def getExpr(expr):
	dataMatch = dataParser.match(gdb.execute('p/x {}'.format(expr), to_string=True))
	data = int(dataMatch.group(1),16)
	return data

def getQemuInstr():
	return getExpr('$pc')

def rIdxToMSIdx(idx):
	#return 15-idx
	return 14-idx
def msIdxToRIdx(idx):
	#return 15-idx
	return 14-idx

stateParser = re.compile("state: (.+) (.+) {(.*)}")
def parseMSState(msState):
	try:
		#print msState
		stateMatch = stateParser.match(msState)
		time = int(stateMatch.group(1))
		pc = int(stateMatch.group(2), 16)
		regparts = stateMatch.group(3).split(' ')
		regs = [parseVal(regparts[rIdxToMSIdx(i)]) for i in range(15)]
		return time, regs
	except Exception, e:
		print "Invalid state {}".format(msState)
		raise

def parseVal(val):
	if 'x' in val:
		return '  '+val
	else:
		return int(val,16)

changeParser = re.compile("changes: {(.+)}")
def parseMSChanges(msChanges):
	try:
		changeMatch = changeParser.match(msChanges)
		changeParts = changeMatch.group(1).split("} {")
		changes = [tuple(c.split(' ')) for c in changeParts]
		return [{'reg':msIdxToRIdx(int(idx)), 'value':parseVal(val)} for idx,val in changes]
	except Exception, e:
		print "Invalid changes {}".format(msChanges)
		raise

def getRegStateOuts(pstate,nstate,astate):
	pstatestr = hexfmt(pstate)
	nstatestr = hexfmt(nstate)
	astatestr = hexfmt(astate)
	for i in range(15):
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

def hexfmt_one(regval):
	return regval if isinstance(regval, str) else '0x{:08x}'.format(regval)

def hexfmt(regs):
	return ['{:>6}:   {}'.format(('r{}'.format(i) if i!=15 else 'cpsr'),hexfmt_one(regs[i])) for i in range(15)]

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
	trace.append( gdb.execute('where', to_string=True) )
	trace.append( "" )
	trace.append( "Last instructions were" )
	trace.append( gdb.execute('x/15i $pc-0x30', to_string=True) )
	trace.append( "or in hex,")
	trace.append( gdb.execute('x/15x $pc-0x30', to_string=True))
	return '\n'.join(trace)

def backtraceSummary(title, execct, ID):
	trace = []
	trace.append( "Bug {}: {}".format(ID, title) )
	trace.append( "    After about {} instructions".format(execct) )
	trace.append( "    Instruction: ")
	trace.append( "      {}".format(gdb.execute('x/1i $pc-0x4', to_string=True)) )
	return '\n'.join(trace)

def getBugIDAndFile(run_dir):
	bugDir = os.path.join(run_dir,"bugs")
	if not os.path.isdir(bugDir):
		os.mkdir(bugDir)

	bugDirCt = len(os.listdir(bugDir))

	return bugDirCt, os.path.join(bugDir,"{}.buglog".format(bugDirCt))

asmInstrParser = re.compile(".+>:\\s+(.+)")
def handleAbort(title, previnstr, prevstate, mstime, msstate, execct, prevexecct, run_dir, found_bugs):
	trace = backtrace(previnstr, prevstate, mstime, msstate, execct)
	print "\n\n\n{}\n------------\n".format(title)
	print trace

	#Check if we have seen this bug before:
	#instr = getExpr('*((int)($pc-0x4))')
	instr_str = gdb.execute('x/1i $pc-0x4', to_string=True)
	instr_asm_match = asmInstrParser.match(instr_str)
	instr = instr_asm_match.group(1)
	print instr
	if instr not in found_bugs:
		found_bugs.add(instr)

		bugId, bugFn = getBugIDAndFile(run_dir)

		with open(os.path.join(run_dir,'runlog'),'a') as f:
			f.write(backtraceSummary(title, prevexecct, bugId))
			f.write('\n\n')

		with open(bugFn,'w') as f:
			f.write('0x{:08x}\n'.format(previnstr))
			f.write('{}\n'.format(prevstate))
			f.write('{}\n'.format(mstime))
			f.write('{}\n'.format(prevexecct))
			f.write('\n\n\n---------------\n\n\n')
			f.write('{}\n'.format(title))
			f.write(trace)

		print "Wrote this bug to {}".format(bugFn)
	else:
		print "Skipped writing this bug to file (already found)"
	print ""


def preex_fn_stop_interrupt():
    # Ignore the SIGINT signal by setting the handler to the standard
    # signal handler SIG_IGN.
    signal.signal(signal.SIGINT, signal.SIG_IGN)

def doLockstep(toMSFifo, fromMSFifo, run_dir, found_bugs):
	gdb.execute('set pagination off')
	
	state = getQemuRegs()
	execCount = getQemuInstrCt()
	lastStableExecCount = execCount

	lastStableInstr = getQemuInstr()

	
	def logInstr(c, lastLoggedCt = [execCount]):
		#sys.stdout.write(c)
		#sys.stdout.flush()
		if(execCount - lastLoggedCt[0] > 500):
			print "Executed {} instructions (currently at {:#x})".format(
				execCount, getQemuInstr())
			gdb.execute('where')
			lastLoggedCt[0] = execCount

	gdb.execute('p/x $pc')

	print "Getting state from ModelSim"
	msstring = fromMSFifo.readline()
	mstime, msstate = parseMSState(msstring)
	print "Got initial state from ModelSim"
	print "Beginning execution:"

	try:
		if(msstate != state):
			toMSFifo.write("ABORT\n")
			handleAbort('Invalid Initial State',lastStableInstr, state, mstime, msstate, execCount, lastStableExecCount, run_dir, found_bugs)
		else:
			changes = []
			matching = True

			while matching:
				gdb.execute('stepi', to_string=True)
				newState = getQemuRegs()
				if newState == state:
					execCount = getQemuInstrCt()
					logInstr('.')
					# lastLoggedCt = execCount
					continue
				changes = [{'reg':i,'value':newState[i]} for i in range(15) if state[i] != newState[i]]
				#print("\nGot changes!", changes)
				while len(changes)>0:
					toMSFifo.write("step\n")
					msstring = fromMSFifo.readline()

					pingTimes = 0
					while msstring[0:4] == "ping" and pingTimes < 100:
						pingTimes += 1
						toMSFifo.write("step\n")
						msstring = fromMSFifo.readline()

					if pingTimes == 100:
						print "Too long without an update! Aborting"

						toMSFifo.write("ABORT\n")
						msstring = fromMSFifo.readline()
						mstime, msstate = parseMSState(msstring)
						handleAbort('Timeout (Aborted)',lastStableInstr, state, mstime, msstate, execCount, lastStableExecCount, run_dir, found_bugs)
						matching = False
						changes = []
						break
							

					nextchanges = parseMSChanges(msstring)
					#print msstring, nextchanges, changes
					for c in nextchanges:
						if c in changes:
							changes.remove(c)
						else:
							toMSFifo.write("ABORT\n")
							msstring = fromMSFifo.readline()
							mstime, msstate = parseMSState(msstring)
							handleAbort('Register Mismatch',lastStableInstr, state, mstime, msstate, execCount, lastStableExecCount, run_dir, found_bugs)
							matching = False
							changes = []
							break

				state = newState;
				lastStableInstr = getQemuInstr()
				execCount = getQemuInstrCt()
				lastStableExecCount = execCount
				logInstr('!')
				# lastLoggedCt = execCount
	except KeyboardInterrupt, e:
		print "\nKeyboard interrupt detected!"
		toMSFifo.write("ABORT\n")
		msstring = "xxxxx"
		while msstring[0:5] != "state":
			msstring = fromMSFifo.readline()
		mstime, msstate = parseMSState(msstring)
		handleAbort('Keyboard Interrupt',lastStableInstr, state, mstime, msstate, execCount, lastStableExecCount, run_dir, found_bugs)
		return True
	return False

def debugFromHere(run_dir, found_bugs):
	print "Preparing to lockstep with ModelSim..."

	wasInterrupted = False

	try:
		# Initialize our temp directory
		print "    Making temp directory"

		
		tmpdir = tempfile.mkdtemp()
		# tmpdir = "tmp"
		# os.mkdir(tmpdir)

		# Make our fifos
		print "    Initializing FIFOs"
		toMSFifoFile = os.path.join(tmpdir, 'toModelSim.fifo')
		fromMSFifoFile = os.path.join(tmpdir, 'fromModelSim.fifo')

		os.mkfifo(toMSFifoFile)
		os.mkfifo(fromMSFifoFile)
	except OSError, e:
		print "Failed to create FIFO:", e
	else:
		print "    Dumping qemu's current state..."
		# Dump our current state
		qemuDump.fullDump(tmpdir)

		# Start ModelSim and sync it
		print "Starting ModelSim..."
		modelsim = subprocess.Popen(['vsim', '-do', 'do debug.tcl {}'.format(os.path.abspath(tmpdir))], stdin=open(os.devnull), preexec_fn = os.setpgrp)

		try:
			with open(toMSFifoFile, 'w+',0) as toMSFifo:
				with open(fromMSFifoFile, 'r') as fromMSFifo:
					wasInterrupted = doLockstep(toMSFifo, fromMSFifo, run_dir, found_bugs)

		except IOError, e:
			print "Failed to open FIFOS:", e

		# Stop ModelSim
		modelsim.terminate()

	print "Cleaning up..."
	# Clean up files
	shutil.rmtree(tmpdir)

	return wasInterrupted
