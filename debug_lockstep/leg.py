import os
import subprocess
import tempfile
import shutil
import time
import select
import re

validStateMatcher = re.compile("[0-9a-f]{8}")
def parseVal(val):
	if not validStateMatcher.match(val):
		return '  '+val
	else:
		return int(val,16)

def rIdxToMSIdx(idx):
	#return 15-idx
	return 14-idx
def msIdxToRIdx(idx):
	#return 15-idx
	return 14-idx

stateWParser = re.compile("(.+) (.+) (.+) {(.*)}")
def parseStateW(msState):
	try:
		stateMatch = stateWParser.match(msState)
		pc = parseVal(stateMatch.group(1))
		instr = parseVal(stateMatch.group(2))
		cpsr = parseVal(stateMatch.group(3))
		regparts = stateMatch.group(4).split(' ')
		regs = [parseVal(regparts[rIdxToMSIdx(i)]) for i in range(15)]
		return pc, instr, cpsr, regs
	except Exception, e:
		print "Invalid writeback state {}".format(msState)
		raise

stateEParser = re.compile("(.+) (.+)")
def parseStateE(msState):
	try:
		stateMatch = stateEParser.match(msState)
		pc = parseVal(stateMatch.group(1))
		instr = parseVal(stateMatch.group(2))
		return pc, instr
	except Exception, e:
		print "Invalid execute state {}".format(msState)
		raise

class AdvanceStuckBug(Exception):
	pass

class NoDataBug(Exception):
	pass

class LegSim(object):
	def __init__(self, dump_fn, reset_mem=True, gui=False):
		try:
			print "    Making temp directory"
			self.dumpdir = tempfile.mkdtemp()
			print self.dumpdir

			print "    Initializing FIFOs"
			toMSFifoFile = os.path.join(self.dumpdir, 'toModelSim.fifo')
			fromMSFifoFile = os.path.join(self.dumpdir, 'fromModelSim.fifo')
			os.mkfifo(toMSFifoFile)
			os.mkfifo(fromMSFifoFile)
			self.toMSFifo = open(toMSFifoFile, 'w+',0)
			self.fromMSFifo = open(fromMSFifoFile, 'w+',0)
		except OSError, e:
			print "Failed to set up FIFOS:", e
			self.cleanup()
			raise
		else:

			# Dump state into this directory
			dump_fn(self.dumpdir)

			print "Starting ModelSim..."
			cmds = ['vsim']
			cmds += ['-do', 'do lockstep.tcl {} {} {}'.format(os.path.abspath(self.dumpdir), "1'b1" if reset_mem else "1'b0", "yes" if gui else "no")]
			cmds += ['-do', 'quit -f']

			self.modelsim = subprocess.Popen(cmds, stdin=(None if gui else open(os.devnull)), preexec_fn = os.setpgrp)

			ready = self._attempt_readline()
			print "Modelsim says: {}".format(ready.__repr__())

	def cleanup(self):
		try:
			self.toMSFifo.close()
		except Exception, e: pass

		try:
			self.fromMSFifo.close()
		except Exception, e: pass

		try:
			shutil.rmtree(self.dumpdir)
		except Exception, e: pass

	def terminate(self):
		self.modelsim.terminate()
		self.cleanup()

	def wait(self):
		self.modelsim.wait()
		self.cleanup()

	def _attempt_readline(self):
		while True:
			try:
				r, w, e = select.select([ self.fromMSFifo ], [], [], 1)
				if self.fromMSFifo in r:
					return self.fromMSFifo.readline().strip() # skip trailing newline
				elif self.modelsim.poll() is not None:
					raise RuntimeError("ModelSim died instead of responding!")
			except select.error, e:
				if e[1]!='Interrupted system call':
					raise

	def abort(self):
		self.toMSFifo.write("abort\n")
		self.wait()

	def gui_control(self):
		self.toMSFifo.write("pause\n")
		print "Waiting for ModelSim to give back control (run 'resume' in ModelSim to resume)"
		status = self._attempt_readline()
		print "Modelsim says: {}".format(status.__repr__())

	def advance(self):
		self.toMSFifo.write("advance\n")
		status = self._attempt_readline()
		if status == "success":
			# Success!
			time = int(self._attempt_readline())
			
			# Check for writeback advance
			if self._attempt_readline() == "advance_w":
				advance_w_state = parseStateW(self._attempt_readline())
			else:
				advance_w_state = None
			
			# Check for execute advance
			if self._attempt_readline() == "advance_e":
				advance_e_state = parseStateE(self._attempt_readline())
			else:
				advance_e_state = None

			return time, advance_w_state, advance_e_state
		elif status == "fail-nodata":
			raise NoDataBug("ModelSim reported No_Data!")
		else: # status == "fail-nochange"
			# Failure!
			raise AdvanceStuckBug("ModelSim did not advance!")

	def enqueue_io_read(self,addr,val):
		self.toMSFifo.write("ioread\n")
		self.toMSFifo.write("32'h{:08x}\n".format(addr))
		self.toMSFifo.write("32'h{:08x}\n".format(val))

	def set_interrupts(self,irq, fiq):
		self.toMSFifo.write("setirq\n")
		self.toMSFifo.write("1'b1\n" if irq else "1'b0\n")
		self.toMSFifo.write("1'b1\n" if fiq else "1'b0\n")

	def checkpoint(self, name):
		print "Creating checkpoint {}".format(name)
		self.toMSFifo.write("checkpoint\n")
		path = os.path.abspath("output/checkpoints/{}.checkpoint".format(name))
		self.toMSFifo.write(path + "\n")
		print "Saved to {}".format(path)
