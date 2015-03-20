# -------- BIT HANDLING FUNCTIONS ------------
def intToHexStr(num):
	return str( hex(num) )[2:].rjust(8, '0')

def intToBinStr(num):
	return 	str( bin(num) )[2:].rjust(8, '0')

def binToHexStr(binStr):
	"""Convert a binary address string to a hex address string"""
	num = int(binStr, 2)
	return str( hex(num) )[2:].rjust(8, '0')

def hexToBinStr(hexStr):
	"""Convert a hex address string to a binary address string"""
	num = int(hexStr, 16)
	return str( bin(num) )[2:].rjust(32, '0')

def gb(num, high, low):
	"""Return the bit slice for a word"""
	n = len(num)
	return num[n-1-high:(high-low)+(n-high)]

def printBin(n):
	k = len(n)/4
	s = ''
	for i in range(k):
		if i == 0:
			s = gb(n, (i+1)*4-1, i*4) + s 
		else:
			s = gb(n, (i+1)*4-1, i*4) + '_' + s 
	print(s)

# ---------------ENTRY CREATION FUNCTIONS------------
def fineD(t2base, domain):
	"""create a fine descriptor"""
	t2base = hexToBinStr(t2base)
	return gb(t2base, 31, 12) + '000' + domain + '000' + '11'

def coarseD(t2base, domain):
	"""crate a coarse Descriptor"""
	t2base = hexToBinStr(t2base)
	return gb(t2base, 31, 10) + '0' + domain + '000' + '01'

def firstDAddr(tbase, virtPB):
	"""calculate the address of the first descriptor"""
	tbase = hexToBinStr(tbase)
	virtPB = hexToBinStr(virtPB)
	return gb(tbase, 31, 14) + gb(virtPB, 31, 20) + '00'

def fineSDAddr(t2base, virtPB):
	"""calculate the address of the first descriptor"""
	t2base = hexToBinStr(t2base)
	virtPB = hexToBinStr(virtPB)
	return gb(t2base, 31, 12) + gb(virtPB, 19, 10) + '00'

def coarseSDAddr(t2base, virtPB):
	"""calculate the address of the coarse descriptor"""
	t2base = hexToBinStr(t2base)
	virtPB = hexToBinStr(virtPB)
	return gb(t2base, 31, 10) + gb(virtPB, 19, 12) + '00'

def smallPD(physPB, AP='00000000', C='1', B='1'):
	"""create a small page descriptor"""
	physPB = hexToBinStr(physPB)
	return gb(physPB, 31, 12) + AP + C + B + '10'

def tinyPD(physPB, AP='00', C='1', B='1'):
	"""create a tiny page descriptor"""
	physPB = hexToBinStr(physPB)
	return gb(physPB, 31, 10) + '0000' + AP + C + B + '11'

def largePD(physPB, AP='00000000', C='1', B='1'):
	"""create a small page descriptor"""
	physPB = hexToBinStr(physPB)
	return gb(physPB, 31, 16) + '0000' + AP + C + B + '01'

def getBasicDesc(virtPB, tbase, t2base, 
	res='coarse', domain='1111', AP='00000000', C='1', B='1'):
	# Create the first-level descriptor and find the address of the second
	# level descriptor
	if res == 'coarse':
		fd = coarseD(t2base, domain)
		sda = coarseSDAddr(t2base, virtPB)
	else:
		fd = fineD(t2base, domain)
		sda = fineSDAddr(t2base, virtPB)

	# Calculate the first-level descriptor address
	fda = firstDAddr(tbase, virtPB)
	return fda, fd, sda

# ----------------TRANSLATION FUNCTIONS---------------
def section(virtPB, physPB, tbase, domain, AP, C, B):
	tbase = hexToBinStr(tbase)
	physPB = hexToBinStr(physPB)
	virtPB = hexToBinStr(virtPB)
	da = gb(tbase, 31, 14) + gb(virtPB, 31, 20) + '00'
	d  = gb(physPB, 31, 20) + '0'*8 + AP + '0' + domain + '0' + C + B + '10'
	return da, d

def largePage(virtPB, physPB, tbase, t2base, 
	res='coarse', domain='1111', AP='00000000', C='1', B='1'):
	"""Create table entries for a large page (64KB)"""

	# Calculate the table entries independent of the translation type
	fda, fd, sda = getBasicDesc(virtPB, tbase, t2base,
		res, domain, AP, C, B)

	# Create the second level descriptor
	sd = largePD(physPB, AP=AP, C=C, B=B)	

	return fda, fd, sda, sd

def smallPage(virtPB, physPB, tbase, t2base, 
	res='fine', domain='1111', AP='00000000', C='1', B='1'):
	"""Create table entries for a small page (4KB)"""

	# Calculate the table entries independent of the translation type
	fda, fd, sda = getBasicDesc(virtPB, tbase, t2base,
		res, domain, AP, C, B)

	# Create the second level descriptor
	sd = smallPD(physPB, AP=AP, C=C, B=B)	

	return fda, fd, sda, sd

def tinyPage(virtPB, physPB, tbase, t2base, 
	res='fine', domain='1111', AP='00', C='1', B='1'):
	"""Create table entries for a small page (4KB)"""

	# Calculate the table entries independent of the translation type
	fda, fd, sda = getBasicDesc(virtPB, tbase, t2base,
		res, domain, AP, C, B)

	# Create the second level descriptor
	sd = tinyPD(physPB, AP=AP, C=C, B=B)	

	return fda, fd, sda, sd

#-----------------Calculation Helpers-------------------
def nextFree(transType, addr):
	if transType == 'section':
		return intToHexStr(int(addr, 16) + 2**20)
	elif transType == 'large':
		return intToHexStr(int(addr, 16) + 64*2**10)
	elif transType == 'small':
		return intToHexStr(int(addr, 16) + 4*2**10)
	elif transType == 'tiny':
		return intToHexStr(int(addr, 16) + 2**10)
	else:
		return "Please give a valid translation type"

print nextFree('section', '00000000')




