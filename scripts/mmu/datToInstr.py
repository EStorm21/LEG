from transFuncts import *
def genInstr(filename, filename2):
	f = open(filename, 'r')
	f2 = open(filename2, 'w')

	i = 200 

	for line in f:
		if line[0] == '@':
			dat = f.next()
			dat = dat[:-1]
			addr = line[1:-1]
			# Convert addr to word aligned value
			addr = intToHexStr(int(addr, 16)*4)

			# f2.write('ldr R0, =val' + str(i) + '\n')
			# f2.write('ldr r1, [r0]\n')
			# f2.write('b next' + str(i) + '\n')
			# f2.write('val' + str(i) + ': .word 0x' + addr + '\n')
			# f2.write('next' + str(i) + ': ldr R3, =val' + str(i+1) + '\n')
			# f2.write('ldr R2, [r3]\n')
			# f2.write('b next' + str(i+1) + '\n')
			# f2.write('val' + str(i+1) + ': .word 0x' + dat + '\n')
			# f2.write('next' + str(i+1) + ': str R2, R1\n')
			# i = i + 2
			f2.write('    LDR R1, =0x'+addr+'\n')
			f2.write('    LDR R2, =0x'+dat+'\n')
			f2.write('    STR R2, [R1]'+'\n')

