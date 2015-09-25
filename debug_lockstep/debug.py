# Note: By the time this script is run, we expect the variable
# TEST_FILE to be set either to "", if we are debugging Linux,
# or to the name of a test (.bin), relative to the current
# directory. If TEST_FILE is set, we also expect RUN_TESTS to
# be True or False. If True, we should run the test noninteractively.

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

import lockstep, checkpoint

OUTPUT_DIR = "output"

def setup():
	if not os.path.isdir(OUTPUT_DIR):
		os.mkdir(OUTPUT_DIR)
	cpdir = os.path.join(OUTPUT_DIR, "checkpoints")
	if not os.path.isdir(cpdir):
		os.mkdir(cpdir)
	if not os.path.isfile('util/convertBinToDat'):
		subprocess.call(['make', '-C', 'util'])

	gdb.execute("mem 0 0x10000000 rw")
	gdb.execute("mem 0x10000000 0 wo")

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
	dirname = dt.strftime("%Y-%m-%d_%H:%M:%S")
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

	qemu_cmd = ['qemu-system-arm', '-M', 'integratorcp', '-m', '256M', '-nographic', '-icount', '0', '-S', '-gdb', 'tcp::{}'.format(openport)]
	
	if TEST_FILE is "":
		qemu_cmd += ['-kernel', '/proj/leg/kernel/system.bin']
	
	print "Starting qemu with port {}".format(openport)
	qemu = subprocess.Popen(qemu_cmd, stdin=open(os.devnull), preexec_fn = os.setpgrp)

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
	if not os.path.isfile(os.path.join(run_dir, "runlog")):
		print "Cleaning up empty output directory"
		shutil.rmtree(run_dir)

class LegLockstepCommand (gdb.Command):
	""" Start lockstepping from here """

	def __init__ (self):
		super (LegLockstepCommand, self).__init__ ("leg-lockstep", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		print "Starting lockstep from here"
		try:
			lockstep.debugFromHere(run_dir, found_bugs, TEST_FILE=="")
		except:
			print traceback.format_exc()

LegLockstepCommand()


class LegAutoCommand (gdb.Command):
	""" Repeatedly lockstep and restart after bugs """

	def __init__ (self):
		super (LegAutoCommand, self).__init__ ("leg-lockstep-auto", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		while True:
			print "Starting lockstep from:"
			gdb.execute("where")
			preventRestart = lockstep.debugFromHere(run_dir, found_bugs, TEST_FILE=="")
			if preventRestart:
				print "Stopping automatic lockstep (run leg-lockstep-auto again to resume)"
				break
			print "Got a bug. Skipping over it"

LegAutoCommand()

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
			INITIAL_INSTRUCTION = int(f.readline(),16)
			INITIAL_STATE = ast.literal_eval(f.readline())
			INITIAL_MS_TIME = int(f.readline())
			INITIAL_EXECUTED_COUNT = int(f.readline())
		print "{:#x}, {}, {}ps, with {} instructions executed".format(
			INITIAL_INSTRUCTION, INITIAL_STATE, INITIAL_MS_TIME, INITIAL_EXECUTED_COUNT)

		bpstr = gdb.execute('break *{0:#x}'.format(INITIAL_INSTRUCTION), to_string=True)
		while True:
			gdb.execute('continue', to_string=True)
			if lockstep.getQemuRegs() == INITIAL_STATE:
				break
		gdb.execute('delete {}'.format(bpstr.split(' ')[1][:-1]))

		print "Current location:"
		gdb.execute('where')

LegFromBugCommand()

### Things to run ###

atexit.register(cleanup)

setup()

qemu = initialize_qemu()

gdb.execute('set pagination off')

run_dir = get_run_directory()

found_bugs = set()

print "Connected!"
if TEST_FILE and RUN_TESTS:
	# Non-interactive mode!
	print "Automatically starting lockstepping"
	gdb.execute("leg-lockstep");
	print "Output saved in {}".format(run_dir)
	gdb.execute("leg-stop");
else:
	print ""
	print "Welcome to the interactive LEG debugger!"
	print "You can run:"
	print "    leg-lockstep: Start lockstepping from here"
	print "    leg-lockstep-auto: Repeatedly lockstep and restart after bugs"
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
