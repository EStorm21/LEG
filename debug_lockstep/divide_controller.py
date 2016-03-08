#!/usr/local/bin/python2.7

import os, subprocess, datetime, sys, signal, time
import leg

OUTPUT_DIR = "output"

def get_run_directory(test_file):
	dt = datetime.datetime.today()
	teststr = os.path.basename(test_file)[:-4] if test_file != '' else "linux"
	timestr = dt.strftime("%Y-%m-%d_%H:%M:%S")
	dirname = teststr + "_divconq_" + timestr
	if os.path.isdir(os.path.join(OUTPUT_DIR, dirname)):
		dirname = teststr + "_divconq_" + dt.strftime("%Y-%m-%d_%H:%M:%S_%f")
	dirpath = os.path.join(OUTPUT_DIR, dirname)
	os.mkdir(dirpath)
	return dirpath

def load_divisions(divfile):
	with open(divfile,'r') as f:
		return [ map(int, line.split(',')) for line in f ]

def start_division(test_file, division, rundir, dump=False):
	division_cmd = ['./debug.sh']
	if test_file != "":
		division_cmd += ['-t', test_file]
	division_dir = os.path.join(rundir,format_division(division))
	os.mkdir(division_dir)
	division_cmd += ['--divideandconquer', division_dir, hex(division[0]), hex(division[1])]
	if(dump):
		division_cmd += ['--dump']
		division_cmd += [os.path.join(division_dir)]
	return subprocess.Popen(division_cmd, stdin=open(os.devnull, 'r'), stdout=open(os.path.join(division_dir,'stdout'),'w'), stderr=subprocess.STDOUT, preexec_fn=os.setpgrp), division_dir

def record_pids(rundir, subprocs):
	pids = [str(sp.pid) for sp,_ in subprocs]
	with open(os.path.join(rundir,"pids"),'w') as f:
		f.write(' '.join(pids))

def format_division(division):
	return "{}-{}".format(hex(division[0]), hex(division[1]))

def print_inspect(subprocs, divisions, target):
	for (sp, sdir), division in zip(subprocs,divisions):
		identifier = format_division(division)
		if identifier == target:
			runlog = os.path.join(sdir,'runlog')
			if os.path.isfile(runlog):
				with open(runlog, 'r') as f:
					print f.read()
			print "To view stdout:"
			print "$ less +F \"{}\" ".format(os.path.abspath(os.path.join(sdir,'stdout')))
			break
	else:
		print "Couldn't find that target!"

def restart_division(test_file, rundir, subprocs, divisions, target):
	for i, ((sp, sdir), division) in enumerate(zip(subprocs,divisions)):
		identifier = format_division(division)
		if identifier == target:
			if sp.poll() is None:
				print "{} is still running! Sending ctrl-c. Run this again to restart once it dies".format(target)
				send_ctrlc(sdir)
			else:
				print "Restarting {}".format(target)
				dt = datetime.datetime.today()
				os.rename(sdir, sdir+"_old_{}".format(dt.strftime("%Y-%m-%d_%H:%M:%S_%f")))
				dump = False
				subprocs[i] = start_division(test_file, division, rundir)
			break
	else:
		print "Couldn't find that target!"

def overview_msg(subprocs):
	msg = "Overview:\n"
	num_done = sum(1 if sp.poll() is not None else 0 for sp,_ in subprocs)
	num_err = sum(1 if os.path.isfile(os.path.join(sdir,"errlog")) else 0 for _,sdir in subprocs)
	msg += "{} workers working\n".format(len(subprocs)-num_done)
	msg += "{} workers finished, {} with errors\n".format(num_done, num_err)

	nbugs = 0
	for sp, sdir in subprocs:
		try:
			nbugs += len(os.listdir(os.path.join(sdir,"bugs")))
		except OSError:
			pass

	msg += "{} total bugs found\n".format(nbugs)
	return msg

def statuslist_msg(subprocs, divisions, running_only):
	msg = "Status list:\n"
	for i, ((sp, sdir), division) in enumerate(zip(subprocs,divisions)):
		if running_only and sp.poll() is not None:
			continue
		identifier = format_division(division)
		is_working = os.path.isfile(os.path.join(sdir,"working"))
		is_error = os.path.isfile(os.path.join(sdir,"errlog"))
		if is_error:
			run_status = "FINISHED WITH ERROR"
		elif sp.poll() is not None:
			run_status = "FINISHED"
		elif is_working:
			run_status = "working"
		else:
			run_status = "(waiting...)"
		try:
			nbugs = len(os.listdir(os.path.join(sdir,"bugs")))
		except OSError:
			nbugs = 0
		msg += "({}) {}: {} - Found {} bugs\n".format(i, identifier, run_status, nbugs)
	return msg

def send_ctrlc(sdir):
	try:
		with open(os.path.join(sdir,'pid'), 'r') as f:
			pid = int(f.readline())
		try:
			os.kill(pid, signal.SIGINT)
		except OSError:
			pass
			#print "SIGINT of {} ({}) failed!".format(pid, sdir)
	except IOError:
		pass
		# print "note: Couldn't find pid for ", sdir

def killall(subprocs):
	for sp, sdir in subprocs:
		send_ctrlc(sdir)
	for i in range(100):
		if all(sp.poll() is not None for sp,_ in subprocs):
			return
		time.sleep(0.1)
	print "Agressively SIGINTing"
	for i in range(5):
		for sp, sdir in subprocs:
			send_ctrlc(sdir)
		time.sleep(1)
	print "Killing misbehaving processes"
	for sp, sdir in subprocs:
		if sp.poll() is None:
			try: sp.kill()
			except OSError: pass
	time.sleep(0.1)

def cleanup():
	try:
		os.remove("../sim/work/_lock")
	except OSError:
		pass

def print_help():
	print "Available commands:"
	print "  overview        - Overall status"
	print "  list-all        - List status of each division"
	print "  list-running    - List status of each division"
	print "  interrupt       - Stop all divisions immediately"
	print "  i SHORT_TARGET  "
	print "  inspect TARGET  - Show target's bugs and command to view stdout"
	print "  r SHORT_TARGET  "
	print "  restart TARGET  - Kill or restart a given target"
	
	

def run_divisions(test_file, divisions, dump=False):
	rundir = get_run_directory(test_file)
	print "Starting all divisions in parallel!"
	subprocs = [start_division(test_file, d, rundir, dump) for d in divisions]
	print "Started all divisions!"
	record_pids(rundir, subprocs)
	target_dict = dict(enumerate(divisions))
	print_help()
	last_command = ""

	try:
		while True:
			# First check if we are done
			if all(sp.poll() is not None for sp,_ in subprocs):
				# We are done!
				print "All divisions have finished!"
				with open(os.path.join(rundir,"summary.txt"),'w') as f:
					f.write(overview_msg(subprocs))
					f.write('\n\n')
					f.write(statuslist_msg(subprocs, divisions, False))
				break
			try:
				command = raw_input("(d&c) ")
			except KeyboardInterrupt:
				print "Keyboard interrupt - ignoring"
			if command == "":
				command = last_command
			if command == "overview":
				print overview_msg(subprocs)
			elif command == "list-all":
				print statuslist_msg(subprocs, divisions, False)
			elif command == "list-running":
				print statuslist_msg(subprocs, divisions, True)
			elif command == "interrupt":
				print "Interrupting all subprocesses"
				killall(subprocs)
			elif command == "help":
				print_help()
			elif command.startswith("i "):
				try:
					target = format_division(target_dict[int(command[2:])])
					print_inspect(subprocs, divisions, target)
				except KeyError:
					print "Target {} not found".format(target)
			elif command.startswith("inspect "):
				target = command[8:]
				print_inspect(subprocs, divisions, target)
			elif command.startswith("r "):
				try:
					target = format_division(target_dict[int(command[2:])])
					restart_division(test_file, rundir, subprocs, divisions, target)
				except KeyError:
					print "Target {} not found".format(target)
			elif command.startswith("restart "):
				target = command[8:]
				restart_division(test_file, rundir, subprocs, divisions, target)
			last_command = command
			
	except:
		print "Got an exception!"
		killall(subprocs)
		raise
	finally:
		cleanup()


if __name__ == '__main__':
	os.nice(10)

	leg.compile()

	division_file = sys.argv[1]

	dump = False
	# Parse commands
	if(len(sys.argv) > 2):
		if(sys.argv[2] == "--dump"):
			dump = True
			test_file = "" 
		else:
			test_file = sys.argv[2]
	#test_file = sys.argv[2] if len(sys.argv) > 2 else ""

	divs = load_divisions(division_file)
	run_divisions(test_file, divs, dump)
