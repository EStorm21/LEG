# Example: Generate a page table directly translating 3MB of address space
#          Virtual Address = Physical Address
from genDat import genDat
from datToInstr import genInstr
from transFuncts import nextFree
from transFuncts import intToHexStr
from inserter import insertInstrInTest

# Memory Properties
tbase  = '00300000'
t2base = '00302000'
res = 'coarse'
AP = '11111111'
Domain = '1111'
C = '1'
B = '1'
translist = []
virtPB = '00000000'
testFile = '../../tests/setUpTranslation.s'
pageDatFile = 'pagetable.dat'
pageASMFile = 'pagetable.asm'
addInstrToTest = True

vrange = 3*2**20 		# 3 MB of mapped memory
psize = 2**20  			# 1 MB Page size (section)
tsize = 2**20 			# 1 MB first level entry size
n = vrange/psize		# 3MB/4KB pages

# Create n small page descriptor
for i in xrange(n):
	# If we have reached the end of a second level table, increment t2base
	if (i % (2**20/(4*2**10)) == 0) and i > 0:
		t2base = intToHexStr(int(t2base, 16) + 4*2**10)
		print t2base, i

	# Create the appropriate translation entry
	physPB = intToHexStr(int(virtPB, 16) + 2**12) # 12 kB offset
	trans = ['section', virtPB, physPB, tbase, Domain, AP, C, B]
	virtPB = nextFree('section', virtPB)
	translist.append(trans)

print translist[0]
print translist[1]
# Generate the appropriate files
genDat(translist, tbase, t2base,  pageDatFile)
genInstr( pageDatFile, pageASMFile )

# Add pagetable.asm to desired test file
if addInstrToTest:
	insertInstrInTest( pageASMFile, testFile )

# Here is an example translist covering different types of pages
# -- Note that the last 5 hex digits must be the same for corresponding addresses
# translist = [
# #   type      virtPB      physPB      tbase     domain      AP       C    B    (t2base)     (res)
# ['section', '00000000', '00000000', '00300000', '1111', '11'      , '1', '1'],
# ['large'  , '00100000', '00100000', '00300000', '1111', '11111111', '1', '1', '00300400', 'coarse'],
# ['small'  , '00110000', '00110000', '00300000', '1111', '11111111', '1', '1', '00300400', 'coarse'],
# ['small'  , '00111000', '00111000', '00300000', '1111', '11111111', '1', '1', '00300400', 'coarse'],
# ['tiny'   , '00211000', '00211000', '00300000', '1111', '11'      , '1', '1', '00300400', 'fine']
# ]