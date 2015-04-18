def insertInstrInTest(pageASMFile, testFile, sTag='***pagetable.asm***', eTag= '***end pagetable.asm***\n'):
		# sTag = '***pagetable.asm***'
		# eTag = '***end pagetable.asm***\n'
		print 'inserting', pageASMFile, 'into', testFile

		# Read in the files as strings
		with open(pageASMFile, 'r') as asmFile:
			asm = asmFile.readlines()
		with open(testFile, 'r') as tFile:
			test = tFile.readlines()

		# Find the start tag
		i = 0
		while i < len(test) and (test[i].find(sTag) == -1):
			i = i + 1
		i = i + 1
		print 'start insert tag', i

		# Find the end tag
		j = 0
		while j < len(test) and (test[j].find(eTag) == -1):
			j = j + 1
		print 'end insert tag', j

		# Remove contents 
		for h in range(i, j):
			del test[i]

		print 'inserting', len(asm), 'lines'
		# Add contents
		l = 0 # asm index
		for l in xrange(len(asm)):
			h = i+l
			test.insert(h, asm[l])
			# print 'insert', asm[l]
			l = l+1

		# Save to file
		f = open(testFile, 'w')
		for i in range(0, len(test)):
			f.write(test[i])
		f.close()

