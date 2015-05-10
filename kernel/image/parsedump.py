import argparse
import os
import re

def isContentsBoundary(str):
	return str[0:20] == 'Contents of section '

linepattern = re.compile(' (\w+) (.+)')
def parseLine(line,offset):
	match = linepattern.match(line)
	if match == None:
		return None

	address = match.group(1)
	address = hex((int(address,16)+offset) >> 2).upper()[2:]
	datastr = match.group(2).upper()
	data = [ datastr[a:a+8] for a in [0,9,18,27] ]
	data = [flipBits(x.replace(' ','0')) for x in data if x != ' '*8]
	return {'address':address, 'data':data}

def padAddress(address):
	return '@'+'0'*(8-len(address))+address

def flipBits(bitstring):
	return bitstring[6:8]+bitstring[4:6]+bitstring[2:4]+bitstring[0:2]

def parseFile(f,offset):
	# Skip over initial data
	while not isContentsBoundary(f.readline()):
		pass

	lines = []
	while True:
		# Read one section
		curline = f.readline()
		lineinfo = parseLine(curline,offset)
		lines += [padAddress(lineinfo['address'])]
		lines += lineinfo['data']
		while True:
			curline = f.readline()
			if isContentsBoundary(curline):
				break # Start a new section
			else:
				lineinfo = parseLine(curline,offset)
				if lineinfo == None:
					return lines
				lines += lineinfo['data']

if __name__ == '__main__':
	parser = argparse.ArgumentParser(description='Convert an objdump --full-contents into a Verilog .dat');
	parser.add_argument('infile', help='the file to convert')
	parser.add_argument('-s', '--startaddr', default='0', help='the starting address offset, in hex')
	parser.add_argument('outfile', help='the destination file')

	args = parser.parse_args()

	with open(os.path.relpath(args.infile), 'r') as infile:
		outlines = parseFile(infile,int(args.startaddr,16))
		with open(os.path.relpath(args.outfile), 'w') as outfile:
			for line in outlines:
				outfile.write(line+'\n')

