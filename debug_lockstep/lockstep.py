import os
import subprocess
import signal
import gdb
import re

from leg import LegSim, AdvanceStuckBug
from qemu_monitor import QemuMonitor, BadInterruptBug
import qemuDump

def build_bug(message, lsim, qmon):
	return message, qmon.get_state_writeback()

def vts(val):
	if isinstance(val, int):
		return "0x{:08x}".format(val)
	else:
		return val

def build_state_msg(state):
	if state is None:
		return "<No previous state>\n"
	pc, instr, cpsr, regs = state
	msg = ""
	msg += "PC:          {}\n".format(vts(pc))
	msg += "Instruction: {}\n".format(vts(pc))
	msg += "CPSR:        {}\n".format(vts(cpsr))
	for i, reg in enumerate(regs):
		msg += "r{:02}:         {}\n".format(i, vts(reg))
	return msg

def build_state_diff(qstate, msstate):
	def min_diff(qval,msval):
		if qval == msval:
			return vts(qval)
		else:
			return "Expected {}, actually {}".format(vts(qval), vts(msval))
	qpc, qinstr, qcpsr, qregs = qstate
	mspc, msinstr, mscpsr, msregs = msstate
	msg = ""
	msg += "PC:          {}\n".format(min_diff(qpc, mspc))
	msg += "Instruction: {}\n".format(min_diff(qinstr, msinstr))
	msg += "CPSR:        {}\n".format(min_diff(qcpsr, mscpsr))
	for i, (qreg,msreg) in enumerate(zip(qregs, msregs)):
		msg += "r{:02}:         {}\n".format(i, min_diff(qreg, msreg))
	return msg

dataParser = re.compile('\\$\\d+ = (.+)')
def getExpr(expr):
	dataMatch = dataParser.match(gdb.execute('p/x {}'.format(expr), to_string=True))
	data = int(dataMatch.group(1),16)
	return data

def build_qemu_msg():
	msg = ""
	msg += "GDB says:\n"
	msg += gdb.execute('info reg', to_string=True)  + "\n"
	msg += gdb.execute('where', to_string=True)  + "\n"
	msg += "\n"
	msg += "Adjacent instructions are\n"
	frompt = '0x0' if getExpr('$pc') < 0x30 else '$pc-0x30'
	msg += gdb.execute('x/15i '+frompt, to_string=True)  + "\n"
	msg += "or in hex,\n"
	msg += gdb.execute('x/15x '+frompt, to_string=True) + "\n"
	return msg

def build_bug_advance_timeout(qmon):
	msg = ""
	msg += "ModelSim Advance Timeout\n"
	msg += "========================\n"
	msg += "\n"
	msg += "The processor appears to be stuck: it is not advancing to the\n"
	msg += "next instruction.\n"
	msg += "\n"
	msg += "Last state to pass through writeback correctly:\n"
	msg += build_state_msg(qmon.get_state_prev_writeback())
	msg += "\n"
	msg += "Last state executed by Qemu (corresponds to execute stage):\n"
	msg += build_state_msg(qmon.get_state_execute())
	msg += "\n"
	msg += build_qemu_msg()
	msg += "\n"
	return msg

def build_bug_writeback_mismatch(qmon, bad_state):
	msg = ""
	msg += "Writeback State Mismatch\n"
	msg += "========================\n"
	msg += "\n"
	msg += "The expected state of the processor was not correct! There were\n"
	msg += "differences between Qemu and ModelSim's state.\n"
	msg += "\n"
	msg += "Previous state (passed through writeback correctly):\n"
	msg += build_state_msg(qmon.get_state_prev_writeback())
	msg += "\n"
	msg += "Current conflict:\n"
	msg += build_state_diff(qmon.get_state_writeback(), bad_state)
	msg += "\n"
	msg += build_qemu_msg()
	msg += "\n"
	return msg

def build_bug_bad_interrupt(qmon, was_fast):
	msg = ""
	msg += "Bad Interrupt\n"
	msg += "=============\n"
	msg += "\n"
	msg += "The processor triggered an interrupt, but Qemu did not perform\n"
	msg += "the interrupt at this time when prompted.\n"
	msg += "\n"
	msg += "Previous state executed:"
	msg += build_state_msg(qmon.get_state_prev_execute())
	msg += "\n"
	msg += "After this state, ModelSim performed an " + ("FIQ" if was_fast else "IRQ") + "\n"
	msg += "Expectation: Qemu would perform same interrupt, and thus CPSR\n"
	msg += "should become " + ("0x11" if is_fast else "0x12") + "\n"
	msg += "However, Qemu's CPSR instead was {}, indicating that it did\n".format(qmon.get_state_execute()[2])
	msg += "not perform the interrupt\n"
	msg += "\n"
	msg += build_qemu_msg()
	msg += "\n"
	return msg

def build_bug_manual(qmon):
	msg = ""
	msg += "Manual Override\n"
	msg += "===============\n"
	msg += "\n"
	msg += "You requested termination of the lockstep procedure.\n"
	msg += "\n"
	msg += "Last state to pass through writeback correctly:"
	msg += build_state_msg(qmon.get_state_prev_writeback())
	msg += "\n"
	msg += "Last state executed by Qemu (corresponds to execute stage):\n"
	msg += build_state_msg(qmon.get_state_execute())
	msg += "\n"
	msg += build_qemu_msg()
	msg += "\n"
	return msg

TEST_PASSED_MSG="""

******************************
****                      ****
****        PASSED        ****
****                      ****
******************************

"""

LOCKSTEP_BUG_RESUMABLE = 1
LOCKSTEP_BUG_ABORT = 2
LOCKSTEP_FINISHED = 3
def lockstep(lsim, qemu_proc, is_linux):

	qmon = QemuMonitor(qemu_proc)

	should_stop = False
	old_handler = None
	def handler():
		if should_stop:
			print "Press Ctrl-C again to force dirty abort"
			signal.signal(signal.SIGINT, old_handler)
		else:
			should_stop = True
			print "Registered Ctrl-C signal (SIGINT). Preparing to stop gracefully"

	old_handler = signal.signal(signal.SIGINT, handler)
	while True:
		try:
			time, advance_w_state, advance_e_state = lsim.advance()
		except AdvanceStuckBug, e:
			return LOCKSTEP_BUG_RESUMABLE, build_bug_advance_timeout(qmon)

		if advance_w_state is not None:
			expected_state = qmon.get_state_writeback()
			print "Writeback", advance_w_state, expected_state
			if advance_w_state == expected_state:
				# Correct lockstep!
				qmon.advance_writeback()
				print "MATCH: {}".format(expected_state)
			else:
				# Incorrect lockstep!
				return LOCKSTEP_BUG_RESUMABLE, build_bug_writeback_mismatch(qmon,advance_w_state)

		if advance_e_state is not None:
			print "Execute", advance_e_state
			pc, instr = advance_e_state
			expected_pc = qmon.execute_lookahead_pc
			print "Executing {}, expecting {}".format(pc, expected_pc)

			try:
				if pc == expected_pc:
					print "Advancing!"
					ios = qmon.advance_execute()
				elif pc == 0x18:
					ios = qmon.do_interrupt(False)
				elif pc == 0x1c:
					ios = qmon.do_interrupt(True)
				else:
					ios = []
				# else:
				# 	pass (we'll ignore it, its probably a data abort or similar)
			except BadInterruptBug, e:
				return LOCKSTEP_BUG_RESUMABLE, build_bug_bad_interrupt(qmon, e.args[1])

			for ioaddr, ioval in ios:
				lsim.enqueue_io_read(ioaddr, ioval)

			irq, fiq = qmon.get_irq_lines()
			lsim.set_interrupts(irq, fiq)

			if is_linux and qmon.same_instr_ct > 10:
				return LOCKSTEP_BUG_RESUMABLE, TEST_PASSED_MSG

		print '\n'.join([str(x) for x in qmon.states])
		print "WRITEBACK_HEAD", qmon.writeback_head
		print "EXEC_HEAD", qmon.execute_head

		if should_stop:
			signal.signal(signal.SIGINT, old_handler)
			return LOCKSTEP_BUG_ABORT, build_bug_manual(qmon)

global_lsim = None
def debugFromHere(with_gui, qemu, is_linux):
	global global_lsim
	lsim = LegSim(qemuDump.fullDump, with_gui)
	global_lsim = lsim
	if with_gui:
		lsim.gui_control()
	reason, msg = lockstep(lsim, qemu, is_linux)
	if with_gui:
		lsim.gui_control()
	lsim.abort()
	print msg
