import gdb
import re
import os
import select
import math

regParser = re.compile("\\w+\\s+(\\w+)\\s+")
def parseQemuRegs(regs):
    lines = regs.split('\n');
    reglines = lines[0:17]
    regs = [int(regParser.match(r).group(1),16) for r in reglines]
    return regs[16], regs[0:15]

def getQemuState():
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

addrParser = re.compile('.*:\t(.+)')
def getDataAtExpr(expr):
	addrMatch = addrParser.match(gdb.execute('x/x {}'.format(expr), to_string=True))
	data = int(addrMatch.group(1),16)
	return data

def getQemuPC():
	return getExpr('$pc')

def getQemuInstr():
	return getDataAtExpr('$pc')

queryRespParser = re.compile('sending: .*\nreceived: "([^"]*)"')
def gdbQueryCmd(cmd):
	queryMatch = queryRespParser.match(gdb.execute("maint packet q"+cmd, to_string=True))
	return queryMatch.group(1)

icountParser = re.compile('.+: (.+)')
def getQemuInstrCt():
	gdb.execute("set mem inaccessible-by-default off")
	countMatch = icountParser.match(gdb.execute('monitor xp/x 0x10000028', to_string=True))
	gdb.execute("set mem inaccessible-by-default on")
	timeval = int(countMatch.group(1),16)
	return int(math.ceil(timeval * 1000. / 24.))

def jumpToState(target_state):
	bpstr = gdb.execute('break *{0:#x}'.format(target_state[0]), to_string=True)
	try:
		while True:
			cont_str = gdb.execute('continue', to_string=True)
			if "SIGINT" in cont_str:
				break
			pc = getExpr('$pc')
			instr = getDataAtExpr('$pc')
			gdb.execute('stepi', to_string=True)
			cpsr, regs = getQemuState()
			current_state = (pc, instr, cpsr, regs)
			print current_state
			if current_state == target_state:
				break
	except KeyboardError, e:
		print "Interrupted!"
	gdb.execute('delete {}'.format(bpstr.split(' ')[1][:-1]))

qemuIoParser = re.compile('IO_ACTION: Reading 0x(\\w*) from 0x(\\w*)')
def parse_qemu_io_log(output):
	ios = []
	line = ""
	while True:
		try:
			r, w, e = select.select([ output ], [], [], 0)
			if output in r:
				line += output.read(1)
				if line[-1] == '\n':
					# print "QEMU: " + line
					ioMatch = qemuIoParser.match(line)
					if ioMatch is not None:
						ios.append((int(ioMatch.group(2),16),int(ioMatch.group(1),16)))
					line = ""
			else:
				# We assume everything ends in a newline. Thus, once we hit end of stream,
				# there is nothing left to process
				if line != '':
					print "Qemu says (ignoring): "+line.__repr__()
				break
		except select.error, e:
			if e[1]!='Interrupted system call':
				raise
	return ios

class BadInterruptBug(Exception):
	pass

class QemuMonitor(object):
	BUFFER_SIZE = 10
	SSTEP_IRQ = "0x1"
	SSTEP_NOIRQ = "0x3"

	def __init__(self, qemu_proc):
		self.qemu = qemu_proc

		self.states = [None]*QemuMonitor.BUFFER_SIZE
		self.states[-1] = ("Unknown (first state)","Unknown (first state)") + getQemuState()

		# Next PC we will execute
		self.execute_lookahead_pc = getQemuPC()
		print self.execute_lookahead_pc
		# Index of state of last execution
		self.execute_head = -1
		# Index of state of previous execution (for debugging)
		self.prev_execute_head = -1
		# Index of state of next un-checked writeback
		self.writeback_head = 0
		# Index of state of last checked writeback (for debugging)
		self.prev_writeback_head = -1

		# Number of times we have had the same state in a row
		self.same_state_ct = 0

		parse_qemu_io_log(self.qemu.stdout)
		gdbQueryCmd("qemu.sstep="+QemuMonitor.SSTEP_NOIRQ)

	def _step(self, pc_to_use):
		instr_to_use = getDataAtExpr(pc_to_use)
		gdb.execute("stepi", to_string=True)
		cpsr, regs = getQemuState()
		state = (pc_to_use, instr_to_use, cpsr, regs)

		self.prev_execute_head = self.execute_head
		self.execute_head = (self.execute_head+1)%QemuMonitor.BUFFER_SIZE
		assert self.states[self.execute_head] is None
		self.states[self.execute_head] = state

		if self.states[self.execute_head] == self.states[self.prev_execute_head]:
			self.same_instr_ct += 1
		else:
			self.same_instr_ct = 0

		self.execute_lookahead_pc = getQemuPC()

		return parse_qemu_io_log(self.qemu.stdout)

	def advance_execute(self):
		return self._step(self.execute_lookahead_pc)

	def advance_writeback(self):
		self.states[self.prev_writeback_head] = None
		self.prev_writeback_head = self.writeback_head
		self.writeback_head = (self.writeback_head+1)%QemuMonitor.BUFFER_SIZE

	def get_state_execute(self):
		return self.states[self.execute_head]

	def get_state_writeback(self):
		return self.states[self.writeback_head]

	def get_state_prev_execute(self):
		return self.states[self.prev_execute_head]

	def get_state_prev_writeback(self):
		return self.states[self.prev_writeback_head]

	def do_interrupt(self, is_fast):
		gdbQueryCmd("qemu.sstep="+QemuMonitor.SSTEP_IRQ)
		interrupt_pc = 0x1c if is_fast else 0x18
		ios = self._step(interrupt_pc)
		gdbQueryCmd("qemu.sstep="+QemuMonitor.SSTEP_NOIRQ)

		mode = getExpr('$cpsr') & 0x1f
		correct_mode = 0x11 if is_fast else 0x12
		if mode != correct_mode:
			raise BadInterruptBug("CPSR 0x{:08x} is not in correct mode 0x{:02x}".format(getExpr('$cpsr'), correct_mode), is_fast)

		return ios

	def get_irq_lines(self):
		CPU_INTERRUPT_HARD = 0x0002
		CPU_INTERRUPT_FIQ  = 0x0008
		pending = int(gdbQueryCmd("qemu.irqpending"), 16)
		return (pending & CPU_INTERRUPT_HARD) != 0, (pending & CPU_INTERRUPT_FIQ) != 0





