# 009_literalMap4MB.py
# 
# ---------------------------Description----------------------------------------
# All Domains are in client mode
# Domain register = 32'b0101_0101_0101_0101_0101_0101_0101_0101
#					32'h5555_5555
# 	01 = client
#   00 = no access
#   10 = Reserved (unpredictable)
# 	11 = Manager
#
# Access Permissions
#
#----------------------------Expectation----------------------------------------
# Accesses to 0x000000f0, 0020000c, and 0040000c cause domain faults

from genDat import genDat
from transFuncts import nextFree
from transFuncts import intToHexStr

tbase  = '00300000'
t2base = '00302000'
res = 'coarse'
AP = '11111111'
C = '1'
B = '1'
translist = []
virtPB = '00000000'

# Create n small page descriptors
n = 3*2**20/(4*2**10)
# 
for i in xrange(n):
	# If we have reached the end of a second level table, increment t2base
	if (i % (2**20/(4*2**10)) == 0) and i > 0:
		t2base = intToHexStr(int(t2base, 16) + 4*2**10)
		print t2base, i

	# Create the appropriate page translation entry
	trans = ['small'   , virtPB, virtPB, tbase, '1111', AP, C, B, t2base, res]
	virtPB = nextFree('small', virtPB)
	translist.append(trans)

print translist[0]
print translist[1]


# -- Note that the last 5 hex digits must be the same for corresponding addresses
#             type,   virtAddr,    physAddr,  t2base      domain  infoBits[9:0]
# translist = [
# #   type      virtPB      physPB      tbase     domain      AP       C    B    (t2base)     (res)
# ['section', '00000000', '00000000', '00300000', '1111', '11'      , '1', '1'],
# ['large'  , '00100000', '00100000', '00300000', '1111', '11111111', '1', '1', '00300400', 'coarse'],
# ['small'  , '00110000', '00110000', '00300000', '1111', '11111111', '1', '1', '00300400', 'coarse'],
# ['small'  , '00111000', '00111000', '00300000', '1111', '11111111', '1', '1', '00300400', 'coarse'],
# ['tiny'   , '00211000', '00211000', '00300000', '1111', '11'      , '1', '1', '00300400', 'fine']
# ]


# Tiny infobits (second-level descriptor)
# 0000 11 1 1 11
#  SBZ AP C B Tiny
# Create pagetable.dat
genDat(translist, tbase, t2base)
# tp = tinyPageTrans(tbase, t2base)
# print tp.trans('00000000', '00000000', domain = '0000', infoBits='0000111111')

