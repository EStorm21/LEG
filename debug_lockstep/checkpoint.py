import gdb, re, os, ast, math, tempfile, shutil, subprocess, sys, select, signal
import qemuDump
from leg import LegSim

def makeCheckpointHere(name):
	lsim = LegSim(qemuDump.fullDump, False)
	lsim.checkpoint(name)
	lsim.abort()