import difflib
import pdb

class bugsearcher(object):
	
	def __init__(self):
		self.created = True

	def isEqLockstepOutput(self, a, b):
		eqDiff = 23 # Threshold for a output being the same

		a = a.splitlines(1)
		b = b.splitlines(1)

		# Diff the two lockstep outputs
		difflist = []
		diff = difflib.unified_diff(a,b)
		for line in diff:
			difflist.append(line)

		ignorelist = ['\n', ' \n']
		filtered = [x for x in difflist if x not in ignorelist]

		if(len(filtered) < eqDiff):
			return True
		
		return False		
