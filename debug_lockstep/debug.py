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
# 	["divideandconquer", rundir, start_pc, goal_pc, dump, dumpdir] - Use the
# 		given run directory. Jump to the start_pc, then dump
#		the current processor state and start debuging
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
import bin_bugsearch

from configuration import qemu_path, linux_path

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

	qemu_cmd = [qemu_path, '-M', 'integratorcp', '-m', '256M', '-nographic', '-serial', 'pty', '-icount', '0', '-S', '-gdb', 'tcp::{}'.format(openport)]
	
	if TEST_FILE is "":
		qemu_cmd += ['-kernel', os.path.join(linux_path,'system.bin')]
	
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
		gdb.execute('file {}'.format(os.path.join(linux_path,'vmlinux')))
	else:
		print "Loading script {}".format(TEST_FILE)
		gdb.execute('restore {} binary'.format(TEST_FILE))
		symfile = TEST_FILE[:-4] + '.elf'
		print "Looking for symbol file {}".format(symfile)
		try:
			gdb.execute('file {}'.format(symfile))
		except gdb.error:
			print "Symbol file {} not found".format(symfile)
	serialmatch = None
	while serialmatch is None:
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
		print("debugging: arg = {}, arg == '--noirq' = {}".format(arg, (arg=="--noirq")))
		try:
			lockstep.debugFromHere(False, qemu, TEST_FILE, found_bugs, run_dir, ignore_irq=(arg=="--noirq"))
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
			lockstep.debugFromHere(True, qemu, TEST_FILE, found_bugs, run_dir, ignore_irq=(arg=="--noirq"))
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
			reason = lockstep.debugFromHere(False, qemu, TEST_FILE, found_bugs, run_dir, ignore_irq=(arg=="--noirq"))
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
		print("debug.py - lockstep_to_goal: arg = {}".format(arg))
		noirq = False
		if "--noirq" in arg:
			arg = arg.replace('--noirq', '')
			noirq = True
		print("debug.py - lockstep_to_goal: noirq={}".format(noirq))

		if arg == "":
			print "Please pass a location"
		else:
			while True:
				print "Starting lockstep from:"
				gdb.execute("where 20")
				print "Seeking goal {}, or {}".format(arg, hex(int(arg,0)))
				reason = lockstep.debugFromHere(False, qemu, TEST_FILE, found_bugs, run_dir, int(arg, 0), ignore_irq=noirq)
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
	""" Run until memory watchpoints are triggered """

	def __init__ (self):
		super (LegMemwatchCommand, self).__init__ ("leg-memwatch", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		if arg == "":
			print "Please pass a location and a memory address"
		else:
			addrs_str = arg.split()

			if(len(addrs_str) < 1):
				print "Please pass one or more addreses to leg-memwatch"
				print "leg-memwatch [-w -r] WATCHADDR1 [WATCHADDR2 ...]"
				print "-r indicates watch for reads only"
				print "-w indicates watch for writes only"
				print "Don't use -r and -w"
			else:
				command = "awatch" # Watch for both read and write
				watchA = addrs_str[0:]

				if(addrs_str[0] == "-r"):
					command = "rwatch" # Watch for reads only

				if(addrs_str[0] == "-w"):
					command = "watch"	
				
				if(command != "awatch"):
					if(len(addrs_str) < 2):
						print "Please pass one or more addreses to leg-memwatch"
						print "leg-memwatch [-w -r] WATCHADDR1 [WATCHADDR2 ...]"
					else:
						watchA = addrs_str[1:]

				# Set one watch point for each watch address
				for a in watchA:
					print '{} {}'.format(command, a)
					gdb.execute('{} {}'.format(command, a))

				gdb.execute('continue')

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
	""" Record N instructions """

	def __init__ (self):
		super (LegRecordCommand, self).__init__ ("leg-rec", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):

		args = arg.split()
		dispInstr = False

		# Handle the display instruction flag
		if('-d' in args):
			dispInstr = True

		if(len(args) >= 2):
			N = int(args[0])
			if(N > 0):
				fname = args[1]
				print "Recording {} instructions to {}".format(args[0], fname)
				f = open(fname, 'w')
				for i in range(N):
					if(dispInstr == True):
						dummy = gdb.execute('stepi', to_string=True)
						output = gdb.execute('x/1i $pc', to_string=True)
					else:
						output = gdb.execute('stepi', to_string=True)
					f.write(output)
				f.close()
			else:
				print "leg-rec N FILENAME: N must be a value greater than zero"
		else:
			print "leg-rec N FILENAME"

LegRecordCommand()

class LegStepMCommand (gdb.Command):
	""" Step N instructions """

	def __init__ (self):
		super (LegStepMCommand, self).__init__ ("leg-stepm", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):

		args = arg.split()
		dispInstr = False

		N = int(args[0])
		if(N > 0):
			print "Stepping {} instructions".format(args[0])
			for i in range(N):
				output = gdb.execute('stepi', to_string=True)
			output = gdb.execute('x/1i $pc', to_string=True)
			print output
		else:
			print "leg-stepm N: N must be a value greater than zero"
		
LegStepMCommand()


class LegFileBugSearchCommand (gdb.Command):
	""" Search for a bug using starting points from a file """

	def __init__ (self):
		super (LegFileBugSearchCommand, self).__init__ ("leg-filebugsearch", gdb.COMMAND_USER)

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

				n = ''.join(line.rstrip().split())
				foutname = finame + '.' + n  + '.txt'
				foutnames.append(foutname)
				fout = open(tpath + foutname, 'w')
				
				# Extract the jump address from the current line
				lineargs = line.rstrip().split()
				jadr = lineargs[0]

				# Jump to the appropriate address
				print 'jumping to ' + jadr 
				gdb.execute('leg-jump {}'.format(jadr))
				
				# Stepi the number of times specified in the file
				if(len(line.rstrip().split()) > 1):
					print 'stepping {} instructions'.format(int(lineargs[1]))
					stepout = ''
					for k in range(int(lineargs[1])):
						stepout = gdb.execute('stepi', to_string=True)
					print 'stepped to {}'.format(stepout)
				
				print 'starting new lockstep'
				output = gdb.execute('leg-lockstep', to_string=True)
				fout.write(output)
				fout.close()
				gdb.execute('leg-restart')
			fin.close() 
			print foutnames
			# After compare the output of each lockstep
			# TODO: Implement - right now this is a manual process
		else:
			print "leg-filebugsearch FILENAME"

LegFileBugSearchCommand()

class LegBugSearchCommand (gdb.Command):
	""" Search for a bug using starting points using binary search"""

	def __init__ (self):
		super (LegBugSearchCommand, self).__init__ ("leg-bugsearch", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		args = arg.split()
		maxcount = 10000

		if(len(args) == 3):
			# Parse inputs
			jumploc = args[0]
			start = int(args[1])
			end = int(args[2])
			
			# Initialize counters and indices
			count = 0 # runtime counter
			index = 0
			same = False
			orig_output = ''
			bs = bin_bugsearch.bugsearcher()

			# Binary search for the troublesome instruction
			while((end-start) > 1 & count < maxcount):
				if(count == 0):
					index = start
				else:
					index = int((end-start)/2 + start)

				gdb.execute('leg-restart')
				gdb.execute('leg-jump {}'.format(jumploc))
				
				# Stepi the number of times specified in the file
				print 'stepping {} instructions'.format(index)
				stepout = ''
				for k in range(index):
					stepout = gdb.execute('stepi', to_string=True)
				print 'stepped to {}'.format(stepout)
				
				# Star lockstepping
				print 'starting new lockstep'
				output = gdb.execute('leg-lockstep', to_string=True)

				# Save the original debug output to compare
				if(count == 0):
					orig_output = output

				# Check whether the same bug was encountered
				same = bs.isEqLockstepOutput(output, orig_output)
				if(same):
					start = index
				else:
					end = index
				count = count + 1
			
			if(same):
				print 'failed at step {}'.format(index+1)
				print 'output matched after stepping {}'.format(index)
			else:
				print 'failed at step {}'.format(index)
				print 'output mismatched after stepping {}'.format(index)
		else:
			print "leg-bugsearch STARTJUMPLOC STARTOFFSET ENDOFFSET"

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

class LegQemuFullDumpCommand (gdb.Command):
	""" Dump qemu's memory and state to two files """

	def __init__ (self):
		super (LegQemuFullDumpCommand, self).__init__ ("leg-qemu-full-dump", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		if(arg == ''):
                	path = '.'
		else:
			path = arg
		print qemuDump.fullDump(path)

LegQemuFullDumpCommand()

class LegVirtToPhysCommand (gdb.Command):
	""" Translate a virtual address to a physical one """

	def __init__ (self):
		super (LegVirtToPhysCommand, self).__init__ ("leg-virt-to-phys", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		gdb.execute('maint packet qqemu.virttophys {}'.format(arg))

LegVirtToPhysCommand()

class LegGetCPRegCommand (gdb.Command):
	""" Get a coprocessor15 register's contents """

	def __init__ (self):
		super (LegGetCPRegCommand, self).__init__ ("leg-get-cp-reg", gdb.COMMAND_USER)

	def invoke (self, arg, from_tty):
		gdb.execute('maint packet qqemu.getcpreg {}'.format(arg))

LegGetCPRegCommand()

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

def run_js(js):
	cmds = js.split(',')
	print "debug.py cmds:", cmds
	for cmd in cmds:
		cmd.replace(' ', '')
		if('s' in cmd):
			cmd = cmd.replace('s', '')
			gdb.execute('leg-stepm {}'.format(cmd))
		else:
			gdb.execute('leg-jump *{}'.format(cmd))

### Things to run ###

atexit.register(cleanup)

setup()

print("debug.py COMMAND = {}".format(COMMAND))

if COMMAND[0]=="divideandconquer":		
	should_cleanup_dir = False
	run_dir = COMMAND[1]
else:
	should_cleanup_dir = True
	run_dir = get_run_directory()
	leg.compile()

qemu = initialize_qemu()

gdb.execute('set pagination off')

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
	noirq = False
	if start_pc != 0:
		gdb.execute("leg-jump *{}".format(start_pc))
	if("-js" in COMMAND): # Step instructions before lockstepping
		i = COMMAND.index("-js")
		js = COMMAND[i+1]
		run_js(js)
	if("--dump" in COMMAND): # Dump qemu
		print("div and conq dumping")
		i = COMMAND.index("--dump")
		dumpdir = COMMAND[i+1]
		gdb.execute("leg-qemu-full-dump {}".format(dumpdir))	
	if("--noirq" in COMMAND):
		print("div and conq noirq detected")
		noirq = True
			
	# Handle noirq in divide and conquer mode
	if(noirq):
		gdb.execute("leg-lockstep-goal {} --noirq".format(goal_pc))
	else:
		gdb.execute("leg-lockstep-goal {}".format(goal_pc))
	gdb.execute("leg-stop")
else:
	print ""
	print "Welcome to the interactive LEG debugger!"
	print "You can run:"
	print "    leg-lockstep [--noirq]: Start lockstepping from here"
	print "    leg-lockstep-auto [--noirq]: Repeatedly lockstep and restart after bugs"
	print "    leg-lockstep-gui [--noirq]: Start lockstepping from here with the ModelSim GUI, and stop for debugging."
	print "    leg-lockstep-goal PCADDRESS: Like leg-lockstep-auto, but stop when we reach PCADDRESS"
	print "    leg-jump BREAK_LOC: Shortcut to skip to a function or address using breakpoints"
	print "    leg-frombug BUGFILE: Jump to the last matching state before a bug "
	print "    leg-filebugsearch FILENAME: Run lockstep from all locations listed in the file "
	print "    leg-count: Print the current instruction "
	print "    leg-memwatch [-w, -r] WATCH_ADDR(S): Run qemu with memory watchpoints"
	print "    leg-qemu-state: Print qemu's current state"
	print "    leg-qemu-full-dump: Save qemu's current state and memory to files in current directory"
	print "    leg-virt-to-phys VIRTUAL_ADDRESS: Translate a virtual address to a physical "
	print "    leg-get-cp-reg CRN [CRM] [OPC1] [OPC2]: Read a cp15 register "
	print "    leg-checkpoint NAME: Create a ModelSim checkpoint corresponding to the current state"
	print "    leg-restart: Restart qemu"
	print "    leg-rec N FILENAME [-d]: Record N instrucitons to a file. -d records the instructions addresses and decoded instructions"
	print "    leg-stop: Shut down the debug session gracefully"
	print ""
	print "You can also run any GDB command to step through the kernel normally."
	print ""
	print "All output from this session will be collected in {}".format(run_dir)
