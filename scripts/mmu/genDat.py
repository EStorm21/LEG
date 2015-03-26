from transFuncts import *

def genDat(translist, tbase, t2base, filename):
	# Open file for writing
	f = open(filename, 'w')

	# Example translist
	# List of virtual addresses and corresponding physical addresses
	# -- Note that the last 5 hex digits must be the same for corresponding addresses
	# translist = [
	#     type      virtPB      physPB      tbase     domain      AP       C    B    (t2base)     (res)
	# ['section', '00100000', '00100000', '00300000', '1111', '11'      , '1', '1'],
	# ['large'  , '00000000', '00000000', '00300000', '1111', '11111111', '1', '1', '00300400', 'coarse'],
	# ['small'  , '00010000', '00010000', '00300000', '1111', '11111111', '1', '1', '00300400', 'coarse'],
	# ['tiny'   , '00011000', '00011000', '00300000', '1111', '11'      , '1', '1', '00300400', 'fine'],
	# 			
	for trans in translist:

		# Section Translation
		if(trans[0] == 'section'):
			assert len(trans) == 8, "section description requires 8 inputs"
			t, virtPB, physPB, tbase, domain, AP, C, B = trans
			da, d = section(virtPB, physPB, tbase, domain, AP, C, B)
			# Write the address to the page table file using a word address
			f.write('@')
			# convert to word address = va/4
			f.write(intToHexStr(int(da, 2)/4))
			f.write('\n')

			# Write the descriptor
			f.write(binToHexStr(d))
			f.write('\n')

		if(trans[0] == 'large'):
			# Large page translation
			assert len(trans) == 10, "large description requires 10 inputs"
			t, virtPB, physPB, tbase, domain, AP, C, B, t2base, res = trans
			fda, fd, sda, sd = largePage(virtPB, physPB, tbase, t2base, res, domain, AP, C, B)

			# Set the loacation of the first-descriptor
			f.write('@')

			# convert to word address = va/4
			f.write(intToHexStr(int(fda, 2)/4))
			f.write('\n')

			# Write the first level descriptor
			f.write(binToHexStr(fd))
			f.write('\n')

			# Write n copies of the second level descriptor
			if res == 'coarse':
				n = 16
			else:
				n = 64

			for i in xrange(n):
				# Write the address of the entry
				f.write('@')
				f.write(intToHexStr( (int(sda,2) + i)/4 ) )
				f.write('\n')

				# Write the second level descriptor
				f.write(binToHexStr(sd))
				f.write('\n')


		if(trans[0] == 'small'):
			assert len(trans) == 10, "Small description must have 10 items"
			t, virtPB, physPB, tbase, domain, AP, C, B, t2base, res = trans
			fda, fd, sda, sd = smallPage(virtPB, physPB, tbase, 
				t2base, res, domain, AP, C, B)
			assert len(AP) == 8, 'The small page must have 8 AP bits'

			# f.write('small '+res+'\n') # TODO: remove debugging

			# Set the loacation of the first-descriptor
			f.write('@')

			# convert to word address = va/4
			f.write(intToHexStr(int(fda, 2)/4))
			f.write('\n')

			# Write the first level descriptor
			f.write(binToHexStr(fd))
			f.write('\n')

			# Write n copies of the second level descriptor
			if res == 'coarse':
				n = 1
			else:
				n = 4

			for i in xrange(n):
				# Write the address of the entry
				f.write('@')
				f.write(intToHexStr( (int(sda,2) + i)/4 ) )
				f.write('\n')

				# Write the second level descriptor
				f.write(binToHexStr(sd))
				f.write('\n')


		if(trans[0] == 'tiny'):
			assert len(trans) == 10, "Tiny description must have 10 items"
			t, virtPB, physPB, tbase, domain, AP, C, B, t2base, res = trans
			fda, fd, sda, sd = tinyPage(virtPB, physPB, tbase, 
				t2base, res, domain, AP, C, B)

			# Write the address to the page table file using a word address
			f.write('@')

			# convert to word address = va/4
			f.write(intToHexStr(int(fda, 2)/4))
			f.write('\n')

			# Write the first level descriptor
			f.write(binToHexStr(fd))
			f.write('\n')

			# Write the second level descriptor
			# Write the address of the entry
			f.write('@')
			f.write(intToHexStr( int(sda, 2)/4 ))
			f.write('\n')

			# Write the second level descriptor
			f.write(binToHexStr(sd))
			f.write('\n')



	# Save the descriptors to the page table in the .dat file
	f.close()
