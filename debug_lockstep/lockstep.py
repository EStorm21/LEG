import os
import subprocess
import signal
import gdb
import re
import pickle
import serial
import time

from leg import LegSim, AdvanceStuckBug, NoDataBug
from qemu_monitor import QemuMonitor, BadInterruptBug, getExpr, getDataAtExpr, getQemuInstrCt, gdbQueryCmd
import qemuDump

NON_LOCKSTEP_INTERRUPTS = False

def build_bug(message, lsim, qmon):
	return message, qmon.get_state_writeback()

def vts(val):
	if isinstance(val, str):
		return val
	else:
		return "0x{:08x}".format(val)

def build_state_msg(state):
	if state is None:
		return "<No previous state>\n"
	pc, instr, cpsr, regs = state
	msg = ""
	msg += "PC:          {}   (instruction:  {})\n".format(vts(pc),vts(instr))
	msg += "CPSR:        {}\n".format(vts(cpsr))
	msg += "\n"
	for i, reg in enumerate(regs):
		msg += "r{:02}:         {}\n".format(i, vts(reg))
	return msg

def getRegStateOuts(pstate,qstate, msstate):
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

def build_state_diff(pstate,qstate, msstate):
	def min_diff(pval, qval, msval, is_cpsr):
		def same(a,b):
			return check_cpsr(a, b) if is_cpsr else a == b
		qval_out = vts(qval)
		msval_out = vts(msval)
		if same(pval, qval):
			if not same(msval, qval):
				msval_out += '  ! (INCORRECT CHANGE)'
		else:
			qval_out += '  * (changed)'
			if same(msval, pval):
				msval_out += '  ~ (didn\'t change)'
			elif same(msval, qval):
				msval_out += '  * (changed)'
			else:
				msval_out += '  ! (INCORRECT CHANGE)'
		return qval_out, msval_out

	def build_part(prefix, ql, msl, pval, qval, msval, is_cpsr=False):
		qval_out, msval_out = min_diff(pval, qval, msval, is_cpsr)
		ql.append(prefix + qval_out)
		msl.append(prefix + msval_out)

	ppc, pinstr, pcpsr, pregs = pstate
	qpc, qinstr, qcpsr, qregs = qstate
	mspc, msinstr, mscpsr, msregs = msstate

	ql = [""]
	msl = [""]

	build_part("PC:          ",ql,msl,		ppc, qpc, mspc)
	build_part("   instr:    ",ql,msl,		pinstr, qinstr, msinstr)
	build_part("CPSR:        ",ql,msl,		pcpsr, qcpsr, mscpsr, True)
	ql.append("-----------------------")
	msl.append("-----------------------")
	for i, (preg,qreg,msreg) in enumerate(zip(pregs,qregs, msregs)):
		build_part("r{:02}:         ".format(i),ql,msl,		preg, qreg, msreg)

	return "Qemu's state:\n" + "\n    ".join(ql) + "\n\nModelsim's state:\n" + "\n    ".join(msl) + "\n"

def build_qemu_msg():
	msg = ""
	msg += "GDB says:\n"
	msg += gdb.execute('info reg', to_string=True)  + "\n"
	msg += gdb.execute('where 20', to_string=True)  + "\n"
	msg += "\n"
	msg += "Adjacent instructions are\n"
	frompt = '0x0' if getExpr('$pc') < 0x30 else '$pc-0x30'
	msg += gdb.execute('x/15i '+frompt, to_string=True)  + "\n"
	msg += "or in hex,\n"
	msg += gdb.execute('x/15x '+frompt, to_string=True) + "\n"
	return msg

def build_bug_advance_timeout(qmon):
	msg = "\n"*4
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

def build_bug_no_data(qmon):
	msg = "\n"*4
	msg += "ModelSim No Data\n"
	msg += "================\n"
	msg += "\n"
	msg += "Modelsim has stopped providing data! It reported No_Data\n"
	msg += "when asked for its state.\n"
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
	interrupt_msg = build_bug_interrupts_notimplemented(qmon, bad_state)
	if interrupt_msg is not None:
		return interrupt_msg
	msg = "\n"*4
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
	if qmon.get_state_writeback() is None:
		msg += "(Warning: ModelSim did not execute the right instruction! Assuming no interrupts)\n"
		qmon.advance_execute()
	msg += build_state_diff(qmon.get_state_prev_writeback(),
							qmon.get_state_writeback(),
							bad_state)
	msg += "\n"
	msg += build_qemu_msg()
	msg += "\n"
	return msg

def build_bug_interrupts_notimplemented(qmon, bad_state):
	if not NON_LOCKSTEP_INTERRUPTS:
		return
	good_state = qmon.get_state_writeback()
	try:
		if (good_state[2] & 0x1f) in [0x11, 0x12] and good_state[2] != bad_state[2]:
			msg = "\n"*4
			msg += "Interrupts Not Implemented\n"
			msg += "==========================\n"
			msg += "\n"
			msg += "Qemu triggered an interrupt, but we have not enabled\n"
			msg += "interrupts yet in ModelSim. (Note: Disregard the pc\n"
			msg += "and instruction below. They are inaccurate. The\n"
			msg += "actual instruction executed was in the vector table.)\n"
			msg += "\n"
			msg += "Previous state (passed through writeback correctly):\n"
			msg += build_state_msg(qmon.get_state_prev_writeback())
			msg += "\n"
			msg += "Current conflict:\n"
			msg += build_state_diff(qmon.get_state_prev_writeback(),
									qmon.get_state_writeback(),
									bad_state)
			msg += "\n"
			msg += build_qemu_msg()
			msg += "\n"
			return msg
	except:
		pass

def build_bug_bad_interrupt(qmon, was_fast):
	msg = "\n"*4
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
	msg += "should become " + ("0x11" if was_fast else "0x12") + "\n"
	msg += "However, Qemu's CPSR instead was {}, indicating that it did\n".format(vts(qmon.get_state_execute()[2]))
	msg += "not perform the interrupt\n"
	msg += "\n"
	msg += build_qemu_msg()
	msg += "\n"
	return msg

def build_bug_manual(qmon):
	msg = "\n"*4
	msg += "Manual Override\n"
	msg += "===============\n"
	msg += "\n"
	msg += "You requested termination of the lockstep procedure.\n"
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

TEST_PASSED_MSG="""

******************************
****                      ****
****        PASSED        ****
****                      ****
******************************

"""

interruptLocParser = re.compile('Symbol ".+" is at 0x([^ ]+) .+')
def find_interrupt_locs():
	i = 0
	locs = []
	while True:
		try:
			addr = gdb.execute('info address interrupt_{}'.format(i), to_string=True)
		except gdb.error:
			# Not found!
			break
		locmatch = interruptLocParser.match(addr)
		locs.append(int(locmatch.group(1),16))
		i += 1
	return locs


def trigger_interrupt(qemu_proc, qmon):
	ser = serial.Serial(qemu_proc.serial_in)
	ser.write('a')
	ser.flush()
	while qmon.get_irq_lines() == (False, False):
		time.sleep(0.1)
	ser.close()

def check_cpsr(a, b):
	if isinstance(a, str) or isinstance(b, str):
		return False
	return (a & 0xf80000ff) == (b & 0xf80000ff)

def check_states(state_a, state_b, interrupting):
	# Note: If we are interrupting, we ignore the CPSR and registers, since those will be incorrect.
	# We assume we will catch those later if they are buggy
	if state_a is None or state_b is None:
		return False
	if state_a[0:2] != state_b[0:2]:
		return False
	if interrupting:
		return True
	else:
		return check_cpsr(state_a[2], state_b[2]) and state_a[3] == state_b[3]

LOCKSTEP_BUG_RESUMABLE = 1
LOCKSTEP_BUG_ABORT = 2
LOCKSTEP_FINISHED = 3
def lockstep(lsim, qemu_proc, is_linux, goal_pc):

	gdb.execute("set mem inaccessible-by-default on")
	qmon = QemuMonitor(qemu_proc, NON_LOCKSTEP_INTERRUPTS)
	interrupt_locs = find_interrupt_locs()

	should_stop = [False, False]
	old_handler = None
	def handler(_,__):
		if should_stop[0]:
			if should_stop[1]:
				signal.signal(signal.SIGINT, old_handler)
				raise RuntimeError("Dirty Keyboard Abort")
			else:
				print "Press Ctrl-C again to force dirty abort"
				should_stop[1] = True
		else:
			should_stop[0] = True
			print "Registered Ctrl-C signal (SIGINT). Preparing to stop gracefully"

	def cleanup():
		gdb.execute("set mem inaccessible-by-default off")
		signal.signal(signal.SIGINT, old_handler)

	old_handler = signal.signal(signal.SIGINT, handler)

	checked_count = 0

	interrupt_ignore_next_w = False
	irq_assert_next_e = False
	fiq_assert_next_e = False

	while True:
		try:
			time, advance_w_state_plus_irq, advance_e_state_plus_irq = lsim.advance()
		except AdvanceStuckBug, e:
			cleanup()
			return (LOCKSTEP_BUG_RESUMABLE if not should_stop[0] else LOCKSTEP_BUG_ABORT,
				qmon.get_state_prev_writeback(),
				qmon.get_state_writeback(),
				build_bug_advance_timeout(qmon))
		except NoDataBug, e:
			cleanup()
			return (LOCKSTEP_BUG_RESUMABLE if not should_stop[0] else LOCKSTEP_BUG_ABORT,
				qmon.get_state_prev_writeback(),
				qmon.get_state_writeback(),
				build_bug_no_data(qmon))

		if advance_w_state_plus_irq is not None:
			if interrupt_ignore_next_w:
				interrupt_ignore_next_w = False
			else:
				advance_w_state, irq_assert, fiq_assert = advance_w_state_plus_irq
				interrupting = irq_assert or fiq_assert

				expected_state = qmon.get_state_writeback()

				if check_states(advance_w_state, expected_state, interrupting):

					# Correct lockstep!
					qmon.advance_writeback()

					# print "Writeback Match: {}".format(expected_state)
					checked_count += 1
					if not is_linux:
						print ".",
					if checked_count % 500 == 0:
						print "\nChecked about {} instructions! Just checked 0x{:x}. Currently executing:".format(checked_count, expected_state[0])
						gdb.execute("where 20")

					if goal_pc == expected_state[0]:
						cleanup()
						return LOCKSTEP_FINISHED, None, None, "\nReached goal PC {}!\n\n".format(goal_pc)
					elif expected_state[0] in interrupt_locs:
						interrupt_locs.remove(expected_state[0])
						print "Triggering interrupt!"
						trigger_interrupt(qemu_proc, qmon)
				else:
					# Incorrect lockstep!
					cleanup()
					return (LOCKSTEP_BUG_RESUMABLE if not should_stop[0] else LOCKSTEP_BUG_ABORT,
						qmon.get_state_prev_writeback(),
						qmon.get_state_writeback(),
						build_bug_writeback_mismatch(qmon,advance_w_state))

		if advance_e_state_plus_irq is not None:
			advance_e_state, irq_assert_trigger, fiq_assert_trigger = advance_e_state_plus_irq
			pc, instr = advance_e_state
			expected_pc = qmon.execute_lookahead_pc

			try:
				if irq_assert_next_e:
					print "Executing IRQ"
					irq_assert_next_e = False
					ios = qmon.do_interrupt(False)
				elif fiq_assert_next_e:
					print "Executing FIQ"
					fiq_assert_next_e = False
					ios = qmon.do_interrupt(True)
				elif irq_assert_trigger or fiq_assert_trigger:
					print "ModelSim interrupting!"
					# Ignore this instruction
					interrupt_ignore_next_w = True
					irq_assert_next_e = irq_assert_trigger
					fiq_assert_next_e = fiq_assert_trigger
					ios = []
				elif pc == expected_pc:
					# print "Executing at 0x{:x}".format(pc)
					ios = qmon.advance_execute()
				else:
					print "Skipping execution of unexpected pc 0x{:x} (expected 0x{:x})".format(pc, expected_pc)
					ios = []
			except BadInterruptBug, e:
				cleanup()
				return (LOCKSTEP_BUG_RESUMABLE if not should_stop[0] else LOCKSTEP_BUG_ABORT,
					qmon.get_state_prev_writeback(),
					qmon.get_state_writeback(),
					build_bug_bad_interrupt(qmon, e.args[1]))

			for ioaddr, ioval in ios:
				print "Enqueuing IO read at 0x{:x} of data 0x{:x}".format(ioaddr, ioval)
				lsim.enqueue_io_read(ioaddr, ioval)

			irq, fiq = qmon.get_irq_lines()
			lsim.set_interrupts(irq, fiq)

			if (not is_linux) and qmon.same_instr_ct > 10:
				cleanup()
				return LOCKSTEP_FINISHED, None, None, TEST_PASSED_MSG

		# print '\n'.join([str(x) for x in qmon.states])
		# print "WRITEBACK_HEAD", qmon.writeback_head
		# print "EXEC_HEAD", qmon.execute_head

		if should_stop[0]:
			cleanup()
			return (LOCKSTEP_BUG_ABORT,
					qmon.get_state_prev_writeback(),
					qmon.get_state_writeback(),
					build_bug_manual(qmon))

def backtraceSummary(title, instr, ID):
	trace = []
	trace.append( "Bug {}: {}".format(ID, title) )
	trace.append( "    After about {} instructions".format(getQemuInstrCt()) )
	trace.append( "    Instruction: ")
	trace.append( "      {}".format(instr) )
	return '\n'.join(trace)

def getBugIDAndFiles(run_dir):
	bugDir = os.path.join(run_dir,"bugs")
	if not os.path.isdir(bugDir):
		os.mkdir(bugDir)

	bugDirCt = len(os.listdir(bugDir))

	return bugDirCt, os.path.join(bugDir,"{}.buglog".format(bugDirCt)), os.path.join(bugDir,"{}.checkpoint".format(bugDirCt))

def markWorking(run_dir, working):
	flagfile = os.path.join(run_dir,'working')
	if working:
		with open(flagfile, 'w') as f:
			f.write("WORKING\n")
	else:
		try:
			os.remove(flagfile)
		except OSError:
			pass

asmInstrParser = re.compile(".+:\\s+(.+)")
def handleBug(prev_state, state, bug_msg, found_bugs, run_dir, test_file):
	if state is None:
		print "Skipped writing this bug to file (not enough information)"
		return

	bug_pc = state[0]
	bug_instr = state[1]

	if bug_instr not in found_bugs:
		found_bugs.add(bug_instr)

		# Check to make sure we haven't overwritten the buggy instr already
		if getDataAtExpr(bug_pc) == bug_instr:
			try:
				instr_str = gdb.execute('x/1i {}'.format(bug_pc), to_string=True)
				instr_asm_match = asmInstrParser.match(instr_str)
				instr_name = instr_asm_match.group(1)
			except gdb.MemoryError:
				instr_name = "{}".format(bug_instr)
		else:
			instr_name = "{}".format(bug_instr)

		bugId, bugFn, bugCheckpt = getBugIDAndFiles(run_dir)
		title = bug_msg.strip().split('\n')[0]

		with open(os.path.join(run_dir,'runlog'),'a') as f:
			f.write(backtraceSummary(title, instr_name, bugId))
			f.write('\n\n')

		autocheckpt_cmd = ['./debug.sh']
		if test_file != "":
			autocheckpt_cmd += ['-t', test_file]
		autocheckpt_cmd += ['--bugcheckpoint', os.path.abspath(bugFn), os.path.abspath(bugCheckpt)]

		with open(bugFn,'w') as f:
			f.write(pickle.dumps(prev_state))
			f.write('\n\n\n---------------\n\n\n')
			f.write(bug_msg)
			f.write('\n\nTo generate a checkpoint for this bug, run\n$ ' + ' '.join(autocheckpt_cmd) + '\n')

		print "Wrote this bug to {}".format(bugFn)
	else:
		print "Skipped writing this bug to file (already found)"

def debugFromHere(with_gui, qemu, test_file, found_bugs, run_dir, goal_pc=None):
	lsim = LegSim(qemuDump.fullDump, test_file=="", with_gui)
	if with_gui:
		print "Giving ModelSim control to do initial wave configuration"
		lsim.gui_control()

	markWorking(run_dir, True)
	try:
		reason, prev_state, state, msg = lockstep(lsim, qemu, test_file=="", goal_pc)
		print msg
		if reason != LOCKSTEP_FINISHED:
			handleBug(prev_state, state, msg, found_bugs, run_dir, test_file)
	except Exception, e:
		print e
		import traceback
		traceback.print_exc()
		reason = LOCKSTEP_BUG_ABORT
		print "Terminated due to exception."
	markWorking(run_dir, False)

	if with_gui:
		print "Giving ModelSim control for debugging"
		lsim.gui_control()
	lsim.abort()
	return reason != LOCKSTEP_BUG_RESUMABLE
