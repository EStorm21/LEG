# ./debug.sh
# python-interactive
# import prepare_divide_conquer
# prepare_divide_conquer.go_dump()

import gdb, re, math
import qemu_monitor

def getFnName():
	return gdb.selected_frame().name()

def go():
	gdb.execute('add-symbol-file ~/nvmlx 0x18000')
	gdb.execute('add-symbol-file ~/nvmlx 0x5a5880')
	gdb.execute('set pagination off')
	gdb.execute('set logging on')
	gdb.execute('rbreak .')
	gdb.execute('enable once 1-$bpnum')
	states = [];
	try:
		while True:
			instrct = qemu_monitor.getQemuInstrCt()
			pc = qemu_monitor.getQemuPC()
			fnname = getFnName()
			states.append([instrct, pc, fnname])
			print "{} instructions: 0x{:x} ({})".format(instrct, pc, fnname)
			cont_str = gdb.execute("continue", to_string=True)
			if "SIGINT" in cont_str:
				break
	except KeyboardInterrupt:
		pass
	print "DONE!"
	return states

states = None
def go_dump():
	global states
	states = go()
	import cPickle as pickle
	pickle.dump(states, open('output/divide_conquer_states.pickle','w'))