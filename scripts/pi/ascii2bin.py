#!/usr/local/bin/python2.7

# Converts ascii-hex to binary
# for example, 
import sys
from string import strip

inName = sys.argv[1]
outName = sys.argv[2]

# convert even-length hex string to binary string
def str2hex(s):
	# extract 2 characters at a time as hex, in reverse order
	# for endianness
	ints = [int(s[i:i+2],16) for i in range(len(s)-2,-1,-2)]
	print ints
	return str(bytearray(ints))

with open(inName, 'r') as f:
	lines = f.readlines()

hexlines = [str2hex(strip(l,'\n')) for l in lines]
outstr=''.join(hexlines)

with open(outName, 'w+') as f:
	f.write(outstr)

"""
>>> ord('b')
98
>>> ord('a')-87
10
>>> z=bytearray([1,2,6,234,78,3,7,3,6])
>>> z
bytearray(b'\x01\x02\x06\xeaN\x03\x07\x03\x06')
>>> str(z)
'\x01\x02\x06\xeaN\x03\x07\x03\x06'
>>> ord('1')
49
>>> int(1)
1
>>> int('1')
1
>>>
>>> int('e9',16)
233
"""
