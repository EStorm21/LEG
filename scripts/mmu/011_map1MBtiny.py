# Example: Generate a page table directly translating 1MB of address space
#          Virtual Address = Physical Address
from genDat import genDat
from datToInstr import genInstr
from transFuncts import nextFree
from transFuncts import intToHexStr

# Memory properties
tbase  = '00300000' # First Level base address
t2base = '00302000' # Second-level base address
res = 'fine' 		# Table entry type
AP = '11'
Domain = '1111'
C = '1'
B = '1'
translist = []
virtPB = '00000000'

vrange = 1*2**20 		# 1 MB of mapped memory
psize = 2**10  			# 1 KB Page size (tiny)
tsize = 2**20 			# 1 MB first level entry size
n = vrange/psize		# 1MB/1KB = 1024 pages

# Create n small tiny descriptors
for i in xrange(n):
	# If we have reached the end of a second level table, increment t2base
	if (i % (tsize/psize) == 0) and i > 0:
		t2base = intToHexStr(int(t2base, 16) + 4*2**10)
		print t2base, i

	# Create the appropriate translation entry
	physPB = virtPB
	trans = ['tiny', virtPB, physPB, tbase, Domain, AP, C, B, t2base, res]
	virtPB = nextFree('tiny', virtPB)
	translist.append(trans)

print translist[0]
print translist[1]
genDat(translist, tbase, t2base, 'pagetable.dat')
genInstr('pagetable.dat', 'pagetable.asm')

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


