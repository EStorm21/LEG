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

import lockstep, checkpoint, qemu_monitor

OUTPUT_DIR = "output"

def setup():
	if not os.path.isdir(OUTPUT_DIR):
		os.mkdir(OUTPUT_DIR)
	cpdir = os.path.join(OUTPUT_DIR, "checkpoints")
	if not os.path.isdir(cpdir):
		os.mkdir(cpdir)
	if not os.path.isfile('util/convertBinToDat'):
		subprocess.call(['make', '-C', 'util'])

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

def initialize_qemu():
	openport = get_open_port()

	qemu_cmd = ['/proj/leg/debugutils/qemu/arm-softmmu/qemu-system-arm', '-M', 'integratorcp', '-m', '256M', '-nographic', '-serial', 'pty', '-icount', '0', '-S', '-gdb', 'tcp::{}'.format(openport)]
	
	if TEST_FILE is "":
		qemu_cmd += ['-kernel', '/proj/leg/kernel/system.bin']
	
	print "Starting qemu with port {}".format(openport)
	qemu = subprocess.Popen(qemu_cmd, stdin=open(os.devnull), stdout=subprocess.PIPE, preexec_fn = os.setpgrp)

	print "Connecting to qemu..."
	gdb.execute('target remote localhost:{}'.format(openport))
	if TEST_FILE is "":
		gdb.execute('file /proj/leg/kernel/vmlinux')
	else:
		print "Loading script {}".format(TEST_FILE)
		gdb.execute('restore {} binary'.format(TEST_FILE))

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
			gdb.execute("where")
			preventRestart = lockstep.debugFromHere(False, qemu, TEST_FILE, found_bugs, run_dir)
			if preventRestart:
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
				gdb.execute("where")
				print "Seeking goal {}, or {}".format(arg, hex(int(arg,0)))
				preventRestart = lockstep.debugFromHere(False, qemu, TEST_FILE, found_bugs, run_dir, int(arg, 0))
				if preventRestart:
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
			gdb.execute("where")

LegJumpCommand()

class LegStopCommand (gdb.Command):
	""" Shut down the debug session gracefully """

	def __init__ (self):
		super (LegStopCommand, self).__init__ ("leg-stop", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		print "Stopping the debug session"
		gdb.execute('detach')
		gdb.execute('quit')

LegStopCommand()

class LegInstrCtCommand (gdb.Command):
	""" Print the current instruction count """

	def __init__ (self):
		super (LegInstrCtCommand, self).__init__ ("leg-count", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		print "Qemu has executed about {} instructions.".format(lockstep.getQemuInstrCt())

LegInstrCtCommand()

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

	def invoke (self, arg, from_tty):
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
			print "Sorry, cannot start from that bug! Not enough information."
			return

		qemu_monitor.jumpToState(initial_state)

		print "Current location:"
		gdb.execute('where')

LegFromBugCommand()

### Things to run ###

atexit.register(cleanup)

setup()

qemu = initialize_qemu()

gdb.execute('set pagination off')

run_dir = get_run_directory()
should_cleanup_dir = True

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
	except:
		import traceback
		traceback.print_exc()
	gdb.execute("leg-stop")
elif COMMAND[0]=="divideandconquer":
	shutil.rmtree(run_dir)
	should_cleanup_dir = False
	run_dir = COMMAND[1]
	start_pc = COMMAND[2]
	goal_pc = COMMAND[3]
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
	print "    leg-jump BREAK_LOC: Shortcut to skip to a function or address using breakpoints"
	print "    leg-frombug BUGFILE: Jump to the last matching state before a bug "
	print "    leg-count: Print the current instruction count"
	print "    leg-checkpoint NAME: Create a ModelSim checkpoint corresponding to the current state"
	print "    leg-restart: Restart qemu"
	print "    leg-stop: Shut down the debug session gracefully"
	print ""
	print "You can also run any GDB command to step through the kernel normally."
	print ""
	print "All output from this session will be collected in {}".format(run_dir)
