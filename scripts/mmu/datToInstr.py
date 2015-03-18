def genInstr(filename, filename2):
	f = open(filename, 'r')
	f2 = open(filename2, 'w')

	for line in f:
		if line[0] == '@':
			dat = f.next()
			dat = dat[:-1]
			addr = line[1:-1]
			f2.write('LDR R1, =0x'+addr+'\n')
			f2.write('LDR R2, =0x'+dat+'\n')
			f2.write('STR R2, [R1]'+'\n')

