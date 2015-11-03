#!/usr/local/bin/python2.7

import os, subprocess, datetime, sys, signal, time

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

def start_division(test_file, division, rundir):
	division_cmd = ['./debug.sh']
	if test_file != "":
		division_cmd += ['-t', test_file]
	division_dir = os.path.join(rundir,"{}-{}".format(hex(division[0]), hex(division[1])))
	os.mkdir(division_dir)
	division_cmd += ['--divideandconquer', division_dir, hex(division[0]), hex(division[1])]
	return subprocess.Popen(division_cmd, stdin=open(os.devnull, 'r'), stdout=open(os.path.join(division_dir,'stdout'),'w'), stderr=subprocess.STDOUT), division_dir

def record_pids(rundir, subprocs):
	pids = [str(sp.pid) for sp,_ in subprocs]
	with open(os.path.join(rundir,"pids"),'w') as f:
		f.write(' '.join(pids))

def print_inspect(subprocs, divisions, target):
	for (sp, sdir), division in zip(subprocs,divisions):
		identifier = "{}-{}".format(hex(division[0]), hex(division[1]))
		if identifier == target:
			runlog = os.path.join(sdir,'runlog')
			if os.path.isfile(runlog):
				with open(runlog, 'r') as f:
					print f.read()
			print "To view stdout:"
			print "$ tail -f \"{}\" -n 20".format(os.path.abspath(os.path.join(sdir,'stdout')))
			break
	else:
		print "Couldn't find that target!"

def overview_msg(subprocs):
	msg = "Overview:\n"
	num_done = sum(1 if sp.poll() is not None else 0 for sp,_ in subprocs)
	msg += "{} workers working\n".format(len(subprocs)-num_done)
	msg += "{} workers finished\n".format(num_done)

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
	for (sp, sdir), division in zip(subprocs,divisions):
		if running_only and sp.poll() is not None:
			continue
		identifier = "{}-{}".format(hex(division[0]), hex(division[1]))
		run_status = "working" if sp.poll() is None else "FINISHED"
		try:
			nbugs = len(os.listdir(os.path.join(sdir,"bugs")))
		except OSError:
			nbugs = 0
		msg += "{}: {} - Found {} bugs\n".format(identifier, run_status, nbugs)
	return msg

def send_ctrlc(sdir):
	with open(os.path.join(sdir,'pid'), 'r') as f:
		pid = int(f.readline())
	try:
		os.kill(pid, signal.SIGINT)
	except OSError:
		pass
		#print "SIGINT of {} ({}) failed!".format(pid, sdir)

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

def print_help():
	print "Available commands:"
	print "  overview        - Overall status"
	print "  list-all        - List status of each division"
	print "  list-running    - List status of each division"
	print "  interrupt       - Stop all divisions immediately"
	print "  inspect TARGET  - Show target's bugs and command to view stdout"

def run_divisions(test_file, divisions):
	rundir = get_run_directory(test_file)
	print "Starting all divisions in parallel!"
	subprocs = [start_division(test_file, d, rundir) for d in divisions]
	print "Started all divisions!"
	record_pids(rundir, subprocs)
	print_help()

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
			elif command.startswith("inspect "):
				target = command[8:]
				print_inspect(subprocs, divisions, target)
	except:
		print "Got an exception!"
		killall(subprocs)
		raise


if __name__ == '__main__':
	division_file = sys.argv[1]
	test_file = sys.argv[2] if len(sys.argv) > 2 else ""

	divs = load_divisions(division_file)
	run_divisions(test_file, divs)
