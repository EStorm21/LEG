#!/usr/local/bin/python2.7

import os, subprocess, datetime, sys, signal, time, argparse, sys
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
	"""Extract step instructions and jump locations from a divisions file"""
	div = [] # List of division boundaries
	js  = [] # List of jumps and steps
	with open(divfile,'r') as f:
		for line in f:
			l = line.split(',')
			print "load_divisions l=",l
			# Extract the division boundaries
			div.append([int(l[0]), int(l[-1])])
			# Extract the extra steps
			if(len(l) > 2):
				curr_js = ','.join(l[1:-1])
				curr_js = curr_js.replace(" ", "")
				js.append(curr_js)
			else:
				js.append('')
	return div, js

		# return [ map(int, line.split(',')) for line in f ]

def load_steps(stepfile):
	with open(stepfile,'r') as f:
		return [ int(line) for line in f ]

def start_division(test_file, division, rundir, dump=False, noirq=False, js=[]):
	print("starting division dump = {}, noirq = {}".format(dump, noirq))
	division_cmd = ['./debug.sh']
	print 'division', division, 'js', js
	division_dir = division_dir = os.path.join(rundir,get_identifier(division, js))
	os.mkdir(division_dir)
	if test_file != "":
		division_cmd += ['-t', test_file]
	if(dump):
		division_cmd += ['--dump']
		division_cmd += [os.path.join(division_dir)]
	if(noirq):
		division_cmd += ['--noirq']
	if(js):
		division_cmd += ['-js', js]
	division_cmd += ['--divideandconquer', division_dir, hex(division[0]), hex(division[1])]
	print("divide_controller.py: start_division: command = {}".format(division_cmd))
	return subprocess.Popen(division_cmd, stdin=open(os.devnull, 'r'), stdout=open(os.path.join(division_dir,'stdout'),'w'), stderr=subprocess.STDOUT, preexec_fn=os.setpgrp), division_dir

def record_pids(rundir, subprocs):
	pids = [str(sp.pid) for sp,_ in subprocs]
	with open(os.path.join(rundir,"pids"),'w') as f:
		f.write(' '.join(pids))

def format_division(division):
	return "{}-{}".format(hex(division[0]), hex(division[1]))

def format_js(js):
	return js.replace(',','-')

def get_identifier(division, js):
	if(js):
		return format_division(division)+'-'+format_js(js)
	else:
		return format_division(division)

def print_inspect(subprocs, divisions, target, js_list):
	for (sp, sdir), division, js in zip(subprocs,divisions,js_list):
		identifier = get_identifier(division, js)
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

def restart_division(test_file, rundir, subprocs, divisions, target, js_list):
	for i, ((sp, sdir), division, js) in enumerate(zip(subprocs,divisions,js_list)):
		identifier = get_identifier(division, js)
		if identifier == target:
			if sp.poll() is None:
				print "{} is still running! Sending ctrl-c. Run this again to restart once it dies".format(target)
				send_ctrlc(sdir)
			else:
				print "Restarting {}".format(target)
				dt = datetime.datetime.today()
				os.rename(sdir, sdir+"_old_{}".format(dt.strftime("%Y-%m-%d_%H:%M:%S_%f")))
				dump = False
				subprocs[i] = start_division(test_file, division, rundir, dump=False, noirq=False)
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

def statuslist_msg(subprocs, divisions, running_only, js_list):
	msg = "Status list:\n"
	for i, ((sp, sdir), division, js) in enumerate(zip(subprocs,divisions, js_list)):
		if running_only and sp.poll() is not None:
			continue
		identifier = get_identifier(division, js)
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
	
	

def run_divisions(test_file, divisions, dump=False, noirq=False, js_list=[]):
	rundir = get_run_directory(test_file)
	print "Starting all divisions in parallel!"

	subprocs = []
	for d, js in zip(divisions, js_list):
		subprocs.append(start_division(test_file, d, rundir, dump=dump, noirq=noirq, js=js))

	print "Started all divisions!"
	record_pids(rundir, subprocs)
	target_dict = dict(enumerate(zip(divisions, js_list)))
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
					f.write(statuslist_msg(subprocs, divisions, False, js_list))
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
				print statuslist_msg(subprocs, divisions, False, js_list)
			elif command == "list-running":
				print statuslist_msg(subprocs, divisions, True, js_list)
			elif command == "interrupt":
				print "Interrupting all subprocesses"
				killall(subprocs)
			elif command == "help":
				print_help()
			elif command.startswith("i "):
				try:
					t = target_dict[int(command[2:])]
					div = t[0]
					js = t[1]
					target = get_identifier(div, js)
					print_inspect(subprocs, divisions, target, js_list)
				except KeyError:
					print "Target {} not found".format(target)
			elif command.startswith("inspect "):
				target = command[8:]
				print_inspect(subprocs, divisions, target, js_list)
			elif command.startswith("r "):
				try:
					t = target_dict[int(command[2:])]
					div = t[0]
					js = t[1]
					target = get_identifier(div, js)
					restart_division(test_file, rundir, subprocs, divisions, target, js_list)
				except KeyError:
					print "Target {} not found".format(target)
			elif command.startswith("restart "):
				target = command[8:]
				restart_division(test_file, rundir, subprocs, divisions, target, js_list)
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

	# Parse arguments
	parser = argparse.ArgumentParser(description='Parse input for divide controller')
	parser.add_argument('div_file', 
		help='div_file contains the start PC and end PC for a division along with Jump PC\'s and step instructions. 12, 16, s10, 24 ---> start_pc=12, jump to 16, step 10 instructions, lockstep until pc=24')
	parser.add_argument('-test_file', '-t', default="", help='Use test_file (.bin) to run divide an conquer. Default set to linux')
	parser.add_argument('--dump', '-d', action='store_true', default=False,
		help='Dump the qemu state to file for recovery with modelsim. State dumped to the divide and conquer output folder')
	parser.add_argument('--noirq', action='store_true', default=False, help='Execute tests with IRQ disabled. This can greatly speed up runtime')
	args = parser.parse_args(sys.argv[1:])

	# Extract divisions and jump/step info (js) from file
	[divs, js_list] = load_divisions(args.div_file)

	# Run all divisions
	run_divisions(args.test_file, divs, dump=args.dump, noirq=args.noirq, js_list=js_list)
