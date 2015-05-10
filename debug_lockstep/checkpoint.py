import gdb, re, os, ast, math, tempfile, shutil, subprocess, sys, select, signal
import qemuDump

def makeCheckpointHere(name):
	print "Creating checkpoint {}".format(name)

	# Initialize our temp directory
	print "    Making temp directory"
	tmpdir = tempfile.mkdtemp()

	# Dump our current state
	print "    Dumping qemu's current state..."
	qemuDump.fullDump(tmpdir)

	# Start ModelSim and make the checkpoint
	print "Starting ModelSim..."
	modelsim = subprocess.Popen(['vsim', '-do', 'do checkpoint.tcl {} {}'.format(os.path.abspath(tmpdir), os.path.abspath("output/checkpoints/{}.checkpoint".format(name)))], stdin=open(os.devnull), preexec_fn = os.setpgrp)
	modelsim.wait()

	print "Cleaning up..."
	# Clean up files
	shutil.rmtree(tmpdir)