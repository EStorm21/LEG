# Note: By the time this script is run, we expect the variable
# TEST_FILE to be set either to "", if we are debugging Linux,
# or to the name of a test (.bin), relative to the current
# directory.
# We also expect the variable COMMAND to be set. It can have the
# following values:
# 	["interactive"] - Start the normal, interactive GDB prompt
# 	["autorun"] - Run the test automatically, and quit when done.
# 	["bugcheckpoint", bugfile, cppath] - Jump to the given bug,
# 		then make a checkpoint there. Finally, quit.
# 	["divideandconquer", rundir, start_pc, goal_pc] - Use the
# 		given run directory. Jump to the start_pc, then debug
# 		until reaching goal_pc. Finally, quit.

import gdb
import pdb
import re
import os
import ast
import math
import subprocess
import shutil
import traceback
import signal
import time
import datetime
import atexit
import pickle
import argparse

import lockstep
import checkpoint
import qemu_monitor
import qemuDump
import leg

OUTPUT_DIR = "output"

def setup():
	if not os.path.isdir(OUTPUT_DIR):
		os.mkdir(OUTPUT_DIR)
	cpdir = os.path.join(OUTPUT_DIR, "checkpoints")
	if not os.path.isdir(cpdir):
		os.mkdir(cpdir)
	if not os.path.isfile('util/convertBinToDat'):
		subprocess.call(['make', '-C', 'util'])

	gdb.execute("mem 0 0xffffffff wo")
	gdb.execute("disable mem 1")
	gdb.execute("set mem inaccessible-by-default off")

def get_open_port():
	import socket
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.bind(("",0))
	# s.listen(1)
	port = s.getsockname()[1]
	s.close()
	return port

def get_run_directory():
	dt = datetime.datetime.today()
	teststr = os.path.basename(TEST_FILE)[:-4] if TEST_FILE != '' else "linux"
	timestr = dt.strftime("%Y-%m-%d_%H:%M:%S")
	dirname = teststr + "_" + timestr
	if os.path.isdir(os.path.join(OUTPUT_DIR, dirname)):
		dirname = dt.strftime("%Y-%m-%d_%H:%M:%S_%f")
	dirpath = os.path.join(OUTPUT_DIR, dirname)
	os.mkdir(dirpath)
	return dirpath

def preex_fn_stop_interrupt():
    # Ignore the SIGINT signal by setting the handler to the standard
    # signal handler SIG_IGN.
    signal.signal(signal.SIGINT, signal.SIG_IGN)

qemuSerialParser = re.compile('char device redirected to ([^ ]+) \(label .+')
def initialize_qemu():
	openport = get_open_port()

	qemu_cmd = ['/proj/leg/debugutils/qemu/arm-softmmu/qemu-system-arm', '-M', 'integratorcp', '-m', '256M', '-nographic', '-serial', 'pty', '-icount', '0', '-S', '-gdb', 'tcp::{}'.format(openport)]
	
	if TEST_FILE is "":
		qemu_cmd += ['-kernel', '/proj/leg/kernel/system.bin']
	
	print "Starting qemu with port {}".format(openport)
	qemu = subprocess.Popen(qemu_cmd, stdin=open(os.devnull), stdout=subprocess.PIPE, stderr=subprocess.PIPE, preexec_fn = os.setpgrp)

	print "Connecting to qemu..."
	while True:
		try:
			gdb.execute('target remote localhost:{}'.format(openport))
			break
		except gdb.error, e:
			print e
			print "Port connect error. Retrying..."
	if TEST_FILE is "":
		gdb.execute('file /proj/leg/kernel/vmlinux')
	else:
		print "Loading script {}".format(TEST_FILE)
		gdb.execute('restore {} binary'.format(TEST_FILE))
		symfile = TEST_FILE[:-4] + '.elf'
		print "Looking for symbol file {}".format(symfile)
		try:
			gdb.execute('file {}'.format(symfile))
		except gdb.error:
			print "Symbol file {} not found".format(symfile)

	serialmatch = qemuSerialParser.match(qemu.stderr.readline())
	qemu.serial_in = serialmatch.group(1)
	print "QEMU is redirecing UART output to {}".format(qemu.serial_in)

	return qemu

def cleanup():
	print "Shutting down qemu"
	qemu.terminate()
	if should_cleanup_dir and not os.path.isfile(os.path.join(run_dir, "runlog")):
		print "Cleaning up empty output directory"
		shutil.rmtree(run_dir)

class LegLockstepCommand (gdb.Command):
	""" Start lockstepping from here """

	def __init__ (self):
		super (LegLockstepCommand, self).__init__ ("leg-lockstep", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		print "Starting lockstep from here"
		try:
			lockstep.debugFromHere(False, qemu, TEST_FILE, found_bugs, run_dir)
		except:
			print traceback.format_exc()

LegLockstepCommand()

class LegLockstepGuiCommand (gdb.Command):
	""" Start lockstepping from here with the ModelSim GUI, and stop for debugging. """

	def __init__ (self):
		super (LegLockstepGuiCommand, self).__init__ ("leg-lockstep-gui", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		print "Starting lockstep from here, with GUI"
		try:
			lockstep.debugFromHere(True, qemu, TEST_FILE, found_bugs, run_dir)
		except:
			print traceback.format_exc()

LegLockstepGuiCommand()


class LegAutoCommand (gdb.Command):
	""" Repeatedly lockstep and restart after bugs """

	def __init__ (self):
		super (LegAutoCommand, self).__init__ ("leg-lockstep-auto", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		while True:
			print "Starting lockstep from:"
			gdb.execute("where 20")
			reason = lockstep.debugFromHere(False, qemu, TEST_FILE, found_bugs, run_dir)
			if reason == lockstep.LOCKSTEP_BUG_RESUMABLE:
				print "Stopping automatic lockstep (run leg-lockstep-auto again to resume)"
				break
			print "Got a bug. Skipping over it"

LegAutoCommand()


class LegLockstepToGoalCommand (gdb.Command):
	"""
	Repeatedly lockstep and restart after bugs, and stop once we reach a defined goal.
	Note that this is not a function users should call directly.
	Usage: leg-lockstep-goal PCADDRESS (i.e. 0xdeadbeef)
	"""

	def __init__ (self):
		super (LegLockstepToGoalCommand, self).__init__ ("leg-lockstep-goal", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		if arg == "":
			print "Please pass a location"
		else:
			while True:
				print "Starting lockstep from:"
				gdb.execute("where 20")
				print "Seeking goal {}, or {}".format(arg, hex(int(arg,0)))
				reason = lockstep.debugFromHere(False, qemu, TEST_FILE, found_bugs, run_dir, int(arg, 0))
				if reason == lockstep.LOCKSTEP_BUG_RESUMABLE:
					print "Stopping automatic lockstep (run leg-lockstep-goal again to resume)"
					break
				print "Got a bug. Skipping over it"

LegLockstepToGoalCommand()

class LegJumpCommand (gdb.Command):
	""" Shortcut to skip to a function or address """

	def __init__ (self):
		super (LegJumpCommand, self).__init__ ("leg-jump", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		if arg == "":
			print "Please pass a location"
		else:
			bpstr = gdb.execute('break {}'.format(arg), to_string=True)
			gdb.execute('continue', to_string=True)
			gdb.execute('delete {}'.format(bpstr.split(' ')[1][:-1]))
			print "Jumped to"
			gdb.execute("where 20")

LegJumpCommand()

# Callable function used by ArgumentParser to parse hexadecimal values
def auto_int(x):
	return int(x, 0)

class LegMemwatchCommand (gdb.Command):
	""" Shortcut to skip to a function or address """

	def __init__ (self):
		super (LegMemwatchCommand, self).__init__ ("leg-memwatch", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		if arg == "":
			print "Please pass a location and a memory address"
		else:
			addrs_str = arg.split()

			if(len(addrs_str) < 3):
				print "Please pass three addreses to leg-memwatch"
				print "leg-memwatch STARTADDR STOPADDR WATCHADDR1 [WATCHADDR2 ...]"
			else:
				startA = addrs_str[0]
				stopA = addrs_str[1]
				watchA = addrs_str[2:]

				gdb.execute('leg-jump {}'.format(startA))
				
				# Set one watch point for each watch address
				for a in watchA:
					gdb.execute('awatch {}'.format(a))

				gdb.execute('continue')
				#pdb.set_trace()

LegMemwatchCommand()


class LegStopCommand (gdb.Command):
	""" Shut down the debug session gracefully """

	def __init__ (self):
		super (LegStopCommand, self).__init__ ("leg-stop", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		print "Stopping the debug session"
		gdb.execute('detach')
		gdb.execute('quit')

LegStopCommand()

class LegRecordCommand (gdb.Command):
	""" Shut down the debug session gracefully """

	def __init__ (self):
		super (LegRecordCommand, self).__init__ ("leg-rec", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):

		args = arg.split()
		

		if(len(args) >= 2):
			N = int(args[0])
			if(N > 0):
				fname = 'output/recinstr/' + args[1]
				print "Recording {} instructions to {}".format(args[0], fname)
				f = open(fname, 'w')
				for i in range(N):
					output = gdb.execute('stepi', to_string=True)
					f.write(output)
				f.close()
			else:
				print "leg-rec N FILENAME: N must be a value greater than zero"
		else:
			print "leg-rec N FILENAME"

LegRecordCommand()

class LegBugSearchCommand (gdb.Command):
	""" Shut down the debug session gracefully """

	def __init__ (self):
		super (LegBugSearchCommand, self).__init__ ("leg-bugsearch", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		args = arg.split()
		finame = args[0]
		print "filename = ", 'output/bugsearch/' + finame
		tpath = 'output/bugsearch/tmp/'

		if(len(args) >= 1):
			gdb.execute('leg-restart')
			fin = open('output/bugsearch/' + finame, 'r')
			foutnames = [] # Collect a list fo the file out namtes
			for line in fin:
				print 'starting new lockstep'
				foutname = finame + '.' + line.rstrip() + '.txt'
				foutnames.append(foutname)
				fout = open(tpath + foutname, 'w')
				
				print 'jumping to ' + line.rstrip()
				gdb.execute('leg-jump {}'.format(line.rstrip()))
				output = gdb.execute('leg-lockstep', to_string=True)
				fout.write(output)
				fout.close()
				gdb.execute('leg-restart')
			fin.close() 
			print foutnames
			# After compare the output of each lockstep
			# TODO: Implement - right now this is a manual process
		else:
			print "leg-bugsearch FILENAME"

LegBugSearchCommand()


class LegInstrCtCommand (gdb.Command):
	""" Print the current instruction count """

	def __init__ (self):
		super (LegInstrCtCommand, self).__init__ ("leg-count", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		print "Qemu has executed about {} instructions.".format(lockstep.getQemuInstrCt())

LegInstrCtCommand()

class LegQemuStateCommand (gdb.Command):
	""" Print qemu's current state """

	def __init__ (self):
		super (LegQemuStateCommand, self).__init__ ("leg-qemu-state", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		print qemuDump.showQemuState()

LegQemuStateCommand()

class LegVirtToPhysCommand (gdb.Command):
	""" Translate a virtual address to a physical one """

	def __init__ (self):
		super (LegVirtToPhysCommand, self).__init__ ("leg-virt-to-phys", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		gdb.execute('maint packet qqemu.virttophys {}'.format(arg))

LegVirtToPhysCommand()

class LegCheckpointCommand (gdb.Command):
	""" Create a ModelSim checkpoint corresponding to the current state """

	def __init__ (self):
		super (LegCheckpointCommand, self).__init__ ("leg-checkpoint", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		if arg == "":
			print "Please pass a checkpoint name"
		else:
			checkpoint.makeCheckpointHere(arg)

LegCheckpointCommand()

class LegRestartCommand (gdb.Command):
	""" Restart qemu """

	def __init__ (self):
		super (LegRestartCommand, self).__init__ ("leg-restart", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		global qemu

		print "Stopping qemu"
		gdb.execute('detach')
		qemu.terminate()
		qemu.wait()
		print "Qemu stopped"
		qemu = initialize_qemu();
		print "Reattached to qemu"

LegRestartCommand()

class LegFromBugCommand (gdb.Command):
	""" Jump to the last matching state before a bug """

	def __init__ (self):
		super (LegFromBugCommand, self).__init__ ("leg-frombug", gdb.COMMAND_USER)

	def complete(self, text, word):
		return gdb.COMPLETE_FILENAME
	
	def invoke(self, arg, from_tty):
		if arg == "":
			print "Please pass a bug file"
			return
		
		if not os.path.isfile(arg):
			print "Please pass a valid bug file"
			return
		
		print "Jumping to right before {}".format(arg)
		with open(arg, 'r') as f:
			initial_state = pickle.load(f)
		print initial_state
		if isinstance(initial_state[0], str):
			print "Sorry, cannot state from that bug! Not enough information"
			return

		qemu_monitor.jumpToState(initial_state)

		print "Current location:"
		gdb.execute('where 20')

LegFromBugCommand()

### Things to run ###

atexit.register(cleanup)

setup()

qemu = initialize_qemu()

gdb.execute('set pagination off')

if COMMAND[0]=="divideandconquer":		
	should_cleanup_dir = False
	run_dir = COMMAND[1]
else:
	should_cleanup_dir = True
	run_dir = get_run_directory()
	leg.compile()

with open(os.path.join(run_dir,'pid'), 'w') as f:
	f.write(str(os.getpid()) + '\n')
	
found_bugs = set()

print "Connected!"
if TEST_FILE and COMMAND[0]=="autorun":
	# Non-interactive mode!
	print "Automatically starting lockstepping"
	gdb.execute("leg-lockstep")
	print "Output saved in {}".format(run_dir)
	gdb.execute("leg-stop")
elif COMMAND[0]=="bugcheckpoint":
	print "Automatically creating bug checkpoint"
	try:
		gdb.execute("leg-frombug {}".format(COMMAND[1]))
		gdb.execute("leg-checkpoint temp_bug_checkpoint")
		os.rename("output/checkpoints/temp_bug_checkpoint.checkpoint", COMMAND[2])
		print "Moved checkpoint to {}".format(COMMAND[2])
	except:
		import traceback
		traceback.print_exc()
	gdb.execute("leg-stop")
elif COMMAND[0]=="divideandconquer":
	start_pc = COMMAND[2]
	goal_pc = COMMAND[3]
	if start_pc != 0:
		gdb.execute("leg-jump *{}".format(start_pc))
	gdb.execute("leg-lockstep-goal {}".format(goal_pc))
	gdb.execute("leg-stop")
else:
	print ""
	print "Welcome to the interactive LEG debugger!"
	print "You can run:"
	print "    leg-lockstep: Start lockstepping from here"
	print "    leg-lockstep-auto: Repeatedly lockstep and restart after bugs"
	print "    leg-lockstep-gui: Start lockstepping from here with the ModelSim GUI, and stop for debugging."
	print "    leg-lockstep-goal PCADDRESS: Like leg-lockstep-auto, but stop when we reach PCADDRESS"
	print "    leg-jump BREAK_LOC: Shortcut to skip to a function or address using breakpoints"
	print "    leg-frombug BUGFILE: Jump to the last matching state before a bug "
	print "    leg-count: Print the current instruction "
	print "    leg-memwatch STOP_LOC WATCH_ADDR(S): Run qemu with memory watchpoints"
	print "    leg-qemu-state: Print qemu's current state"
	print "    leg-virt-to-phys VIRTUAL_ADDRESS: Translate a virtual address to a physical "
	print "    leg-checkpoint NAME: Create a ModelSim checkpoint corresponding to the current state"
	print "    leg-restart: Restart qemu"
	print "    leg-stop: Shut down the debug session gracefully"
	print ""
	print "You can also run any GDB command to step through the kernel normally."
	print ""
	print "All output from this session will be collected in {}".format(run_dir)
