# Date: 9/07/15
# Last modified by Sam Dietrich sdietrich@hmc.edu
# Version 4
#
# Limitations:
#  - Does not test write to PC
#  - Only tests user mode (no interrupts, SR operations)
#  - does not test coprocessor
#  - does not test BL
#  - w / ub mem tests are only sp relative with small offsets (forced to land in premade stack), no ISR, no cond with wb
#  - hw / sb tests only use offset so we don't mess up sp, are sp relative with small offsets (forced to land in premade stack)
#  - ldm / stm does not test ^, does not load pc, sp relative

from random import *
from time import *
import ctypes
from argparse import ArgumentParser

seed(time())

# SP and stack addresses with known values
sp = 0
upper = 0
lower = 0
addresses = set()



if __name__ == "__main__":
	parser = ArgumentParser()
	parser.add_argument("-i", 
						nargs="*",
						dest="include",
						help="all the instructions to use in tests. Don't use with ex. Uses everything if not specified",
						default=[])

	parser.add_argument("-e", 
						nargs="*",
						dest="exclude",
						help="all the instructions to not use in tests. Don't use with in",
						default=[])

	parser.add_argument("--nowb", 
						help="Don't allow writeback",
						action="store_true")

	parser.add_argument("--conds", 
						nargs="*",
						help="All the conds to use. Use any if not specified.",
						default=[])

	parser.add_argument("-n", 
						dest="count",
						type=int,
						help="Number of instructions to generate",
						default=100)


	args = vars(parser.parse_args())
	assert not (len(args["include"]) > 0 and len(args["exclude"]) > 0)

	inc = args["include"]
	exc = args["exclude"]
	nowb = args["nowb"]
	conds = args["conds"]
	numInstru = args["count"]

# Condition codes
Conditions = ["EQ","NE","CS","CC","MI","PL","VS","VC","HI","LS","GE","LT","GT","LE"]+[""]*10
if conds != []:
	Conditions = [c for c in Conditions if c in conds]
if conds == ["AL"]:
	Conditions = [""]
setConditions = Conditions + [c+"s" for c in Conditions]

# Data processing
DPnoS = ["clz", "cmn", "cmp", "teq", "tst"]
DPnoRd = ["cmn", "cmp", "teq", "tst"]
DPnoRn = ["clz", "mov", "mvn"]
arithmetic = [ "adc", "add", "bic", "clz", "sub", "rsb", "rsc", "sbc", "sub", "mov", "mvn", "tst", "teq", "cmn", "cmp"]
logicOps = ["and","orr", "eor"]

# Branch
fbranch = ["fb"]
bbranch = ["bb"]

# Load/store word and unsigned byte
wbmem = ["str","ldr", "strb", "ldrb"]

# Load/store halfword and load signed byte
hmem = ["ldrh", "ldrsb", "ldrsh", "strh"]
mmem = ["ldm", "stm"]

mode3Types = ["imm", "reg"]
mode2Types = mode3Types + ["ISR"]
addrRegs = ["sp"]
writebacks = ["offset", "pre", "post"]
if nowb:
	writebacks = ["offset"]

# multiply
multiply = ["mul", "mla", "umull", "umlal", "smull", "smlal"]

shifters = ["ASR", "LSL", "LSR", "ROR", "RRX"] + [""]*5

regList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14"]
RegsWithPC = regList + ["R15"]


# modify lists with options
if inc != []:
	arithmetic_new = [i for i in arithmetic if i in inc]
	logicOps_new = [i for i in logicOps if i in inc]

	# Need some arithmetic or logic ops to use branches
	if (len(arithmetic_new) == 0 and len(logicOps_new) == 0) \
	   and ('fb' in inc or 'bb' in inc):
	   pass
	else:
		arithmetic = arithmetic_new
		logicOps = logicOps_new

	fbranch = [i for i in fbranch if i in inc]
	bbranch = [i for i in bbranch if i in inc]
	wbmem = [i for i in wbmem if i in inc]
	hmem = [i for i in hmem if i in inc]
	mmem = [i for i in mmem if i in inc]
	multiply = [i for i in multiply if i in inc]

if exc != []:
	arithmetic = [i for i in arithmetic if i not in exc]
	logicOps = [i for i in logicOps if i not in exc]
	fbranch = [i for i in fbranch if i not in exc]
	bbranch = [i for i in bbranch if i not in exc]
	wbmem = [i for i in wbmem if i not in exc]
	hmem = [i for i in hmem if i not in exc]
	mmem = [i for i in mmem if i not in exc]
	multiply = [i for i in multiply if i not in exc]



instrs = [arithmetic]*50+[logicOps]*15+[fbranch]*5+[bbranch]*5+[wbmem]*5+[hmem]*5+[mmem]*5+[multiply]*5
instrs = [subl for subl in instrs if len(subl) > 0]



def makeProgram(numInstru):
	program = initializeProgram() #initializes  and stack to random values
	counter = 1
	program += "# MAIN PROGRAM\n"
	program += "\n"

	while counter <= numInstru:
		instrList = choice(instrs)
		instrChoice = choice(instrList)
		#print "instr is ", counter, instrChoice		## Uncomment to track instructions used

		# arithmetic ("add/sub") with or without conditions
		if instrList == arithmetic or instrList == logicOps:					
			program += makeDataProcInstr(instrChoice, counter)

		# Backward branch operations
		elif instrList == bbranch and counter < numInstru-11:	
			prog, counter = makeBBranchInstr(counter)
			program += prog

		# forward branch operations
		elif instrList == fbranch and counter < numInstru-11:	
			prog, counter = makeFBranchInstr(counter)
			program += prog

		# multiply operations
		elif instrList == multiply:
			program += makeMultiplyInstr(instrChoice, counter)

		# memory instructions
		elif instrList == wbmem:									
			prog, counter = makeWBMemInstr(instrChoice, counter)
			program += prog
		elif instrList == hmem:									
			prog, counter = makeHMemInstr(instrChoice, counter)
			program += prog
		elif instrList == mmem:									
			program += makeMMemInstr(instrChoice, counter)

		# leftover case (branch graveyard)
		else:
			program += makeNopInstr(counter)

		counter += 1
	program += "end: b end\n"
	print program



def makeDataProcInstr(instruction, counter):

	# choose shift
	shifter = choice(shifters)
	RSR = None
	# half RSR, half ISR
	if shifter not in ["","RRX"]:
		RSR = choice([False, True])

	# choose registers. 
	Rd = choice(regList)
	Rn = choice(RegsWithPC)
	Rm = choice(RegsWithPC)
	Rs = None
	# Can't use PC in RSR or clz
	if RSR:
		Rn = choice(regList)
		Rm = choice(regList)
		# Only RSR needs Rs
		Rs = choice(regList)
	if instruction == "clz":
		Rm = choice(regList)

	# choose conditions
	if instruction in DPnoS:
		cond = choice(Conditions)
	else:
		cond = choice(setConditions)

	# add instruction base 
	program = "l{}: {}{} ".format(counter, instruction, cond)

	# add registers
	if instruction not in DPnoRd:
		program += "{}, ".format(Rd)
	if instruction not in DPnoRn:
		program += "{}, ".format(Rn)

	# clz special case
	if instruction == "clz":
		program += Rm + "\n"
		return program

	# add shift operand
	if shifter != "":
		program += "{}, {} ".format(Rm, shifter)

		if shifter == "RRX":
			pass
		elif RSR:
			program += Rs
		else:
			program += "#{}".format(makeAddr1ShiftImm(shifter))

		program += "\n"
	else:
		imm = "#{}".format(makeAddr1Immed())
		program += choice([Rm, imm]) + "\n"

	return program


def makeBBranchInstr(counter):
	instrBlock = randint(1,6)				# get random integer to represent number of instructions in the backward branch
	cond = choice(Conditions)
	# branch past the instruction block to the backwards branch
	program = "l{}: b{} l{}\n".format(counter, cond, counter+instrBlock+3)
	counter += 1
	# This instruction is skipped by the bbranch
	program += "l{}: add R1, R0, #{}\n".format(counter, randint(1,255))
	counter += 1

	# fill in the instruction block with arithmetic
	for i in range(instrBlock):				# adding random arithmetic instructions in backward branch section
		instrChoice = choice(arithmetic+logicOps)
		program += makeDataProcInstr(instrChoice, counter)
		counter += 1

	# branch past the backwards branch
	program += "l{}: b l{}\n".format(counter, counter+2)
	counter += 1
	# branch to the start of the instruction block
	program += "l{}: b l{}\n".format(counter, counter-instrBlock-1)
	return program, counter


def makeFBranchInstr(counter):
	forwardAmt = randint(1,10)
	cond = choice(Conditions)
	program = "l{}: b{} l{}\n".format(counter, cond, counter+forwardAmt)
	# ensure we can't put any mem instructions in here
	for i in range(forwardAmt):				# adding random arithmetic instructions in backward branch section
		counter += 1
		instrChoice = choice(arithmetic+logicOps)
		program += makeDataProcInstr(instrChoice, counter)
		
	return program, counter


def makeMultiplyInstr(instruction, counter):
	# choose condition
	cond = choice(setConditions)

	# choose registers
	if instruction[0] == "u" or instruction[0] == "s":
		RdHi = choice(regList)
		used = [RdHi]
		RdLo = choice([i for i in regList if i not in used])
		used += [RdLo]
		Rm = choice([i for i in regList if i not in used])
		# Rs can be anything
		Rs = choice(regList)
		program = "l{}: {}{} {}, {}, {}, {}\n".format(counter, instruction, cond, RdLo, RdHi, Rm, Rs)
	elif instruction == 'mla':
		Rd = choice(regList)
		Rm = choice([i for i in regList if i != Rd])
		Rn = choice(regList)
		Rs = choice(regList)
		program = "l{}: {}{} {}, {}, {}, {}\n".format(counter, instruction, cond, Rd, Rm, Rs, Rn)
	elif instruction == 'mul':
		Rd = choice(regList)
		Rm = choice([i for i in regList if i != Rd])
		Rs = choice(regList)
		program = "l{}: {}{} {}, {}, {}\n".format(counter, instruction, cond, Rd, Rm, Rs)

	return program


def makeWBMemInstr(instruction, counter):
	global sp
	# choose byte 1/5 of time
	B = "B" if "b" in instruction else ""
	# choose Rd
	Rd = choice(RegsWithPC)
	# can't use PC with B, don't modify PC
	if B=="B" or instruction == "ldr":
		Rd = choice(regList)
	# choose cond
	cond = choice(Conditions)

	# pick type of offset
	typ = choice(mode3Types) # no ISR yet
	# pick type of writeback
	wb = choice(writebacks)
	if B == "B":
		wb = "offset"
	first_bracket = ""
	second_bracket = "]"
	exclamation = ""

	# pick address registers
	if wb == "offset":
		Rn = choice(addrRegs) # currently only sp
	# writeback
	else:
		Rn = choice([i for i in addrRegs if i != Rd]) # cannot have writeback and Rd == Rn
		# don't mess up our record of sp
		cond = ""
	Rm = choice([i for i in regList if i != Rn]) # we change Rm currently, so don't use Rn.

	# pick an offset
	offset = choice([i for i in range(lower-sp, upper-sp-4, 4) if sp+i in addresses])
	assert(sp+offset in addresses)
	# but ok to store anywhere in range
	sign = "+" if offset >= 0 else "-"
	# use any valid byte-aligned. can do for ldr as well, then specifies rotate.
	if B=="B" or instruction == "ldr":
		offset += choice([0,1,2,3])
	#print "offset {}, sp {}->{}".format(offset, sp, sp if wb == "offset" else sp+offset)

	# set up the operand for the correct type
	program = ""
	if typ == "imm":
		operand = "#{}{}".format(sign,abs(offset))
	# if register offset, set up the register with the offset
	elif typ == "reg":
		program = "l{}: mov {}, #{}\n".format(counter, Rm, abs(offset)) # small enough for immed right now (within 200)
		counter += 1
		operand = "{}{}".format(sign,Rm)
	elif typ == "ISR":
		print "No ISR memory yet!"
		assert(False)

	# modify sp and instr format with writeback
	if wb == "pre":
		sp += offset
		exclamation = "!"
	elif wb == "post":
		sp += offset
		first_bracket = "]"
		second_bracket = ""

	# build instruction
	program += "l{}: {}{}{} {}, [{}{}, {}{}{}\n".format(counter, instruction[0:3], cond, B, Rd, Rn, first_bracket, operand, second_bracket, exclamation)
	#print program
	return program, counter




	program = "l"+str(counter)+": "			# Line number
	program += instruction + choice(Conditions)
	program += " " + choice(regList) + ", "
	program += " " + "[sp, #-"+str(randint(1,10)*4) + "]\n"
	return program


def makeHMemInstr(instruction, counter):
	global sp
	# choose Rd
	Rd = choice(regList)
	# don't modify PC
	if "ldr" in instruction:
		Rd = choice(regList)
	# choose cond
	cond = choice(Conditions)

	# pick type of offset
	typ = choice(mode3Types)
	# pick type of writeback
	#wb = choice(writebacks)
	# can't deal with non-word aligned yet
	wb = "offset"
	first_bracket = ""
	second_bracket = "]"
	exclamation = ""

	# pick address registers
	if wb == "offset":
		Rn = choice(addrRegs) # currently only sp
	else:
		Rn = choice([i for i in addrRegs if i != Rd]) # cannot have writeback and Rd == Rn
	Rm = choice([i for i in regList if i != Rn]) # we change Rm currently, so don't use Rn.

	# pick an offset
	offset = choice([i for i in range(lower-sp, upper-sp-4, 4) if sp+i in addresses])
	assert(sp+offset in addresses)
	# but ok to store anywhere in range
	sign = "+" if offset >= 0 else "-"
	# use any valid byte-aligned or halfword aligned
	if "b" in instruction:
		offset += choice([0,1,2,3])
	if "h" in instruction:
		offset += choice([0,2])
	#print "offset {}, sp {}->{}".format(offset, sp, sp if wb == "offset" else sp+offset)

	# set up the operand for the correct type
	program = ""
	if typ == "imm":
		operand = "#{}{}".format(sign,abs(offset))
	# if register offset, set up the register with the offset
	elif typ == "reg":
		program = "l{}: mov {}, #{}\n".format(counter, Rm, abs(offset)) # small enough for immed right now (within 200)
		counter += 1
		operand = "{}{}".format(sign,Rm)

	# modify sp and instr format with writeback
	if wb == "pre":
		sp += offset
		exclamation = "!"
	elif wb == "post":
		sp += offset
		first_bracket = "]"
		second_bracket = ""

	# build instruction
	program += "l{}: {}{}{} {}, [{}{}, {}{}{}\n".format(counter, instruction[:3], cond, instruction[3:], Rd, Rn, first_bracket, operand, second_bracket, exclamation)
	#print program
	return program, counter


def makeMMemInstr(instruction, counter):
	global sp

	# choose Rn and figure out how many regs we can use
	#Rn = choice(regList)
	Rn = "R13"
	max_ascending_regs = max(0, (upper - sp - 4) / 4)
	max_descending_regs = max(0, (sp - lower - 4) / 4)

	# choose cond
	cond = choice(Conditions)

	# choose writeback
	wb = choice(writebacks)
	if wb == "offset":
		wb = False
	else:
		wb = True
	# don't mess up sp
	if wb:
		cond = ""

	# possible modes. Cases for F and E are the same since we 
	#  don't want to point to unset memory
	modes = []
	if max_ascending_regs > 0:
		modes += ["IA", "IB"]
	if max_descending_regs > 0:
		modes += ["DA", "DB"]
	assert len(modes) > 0

	mode = choice(modes)

	# choose the registers to store
	if instruction == "stm":
		regOptions = set(RegsWithPC)
		regOptions.update(["R13"])
	else:
		regOptions = set(regList)
	instrRegs = []
	if "I" in mode:
		numRegs = choice( range(1, min(len(regOptions), max_ascending_regs) + 1) )
	else:
		numRegs = choice( range(1, min(len(regOptions), max_descending_regs) + 1) )

	for _ in range(numRegs - 1):
		r = choice(list(regOptions))
		instrRegs += [r]
		regOptions.remove(r)

	# remove impossible register
	# can't load Rn if writeback
	if instruction == "ldm" and wb and Rn in instrRegs:
		instrRegs.remove(Rn)
	# Rn must be lowest register if store Rn and wb
	if instruction == "stm" and wb and Rn in instrRegs:
		for r in range(int(Rn[1:])):
			rmReg = "R{}".format(r)
			if rmReg in instrRegs:
				instrRegs.remove(rmReg)
	# if we removed everything then give up
	if len(instrRegs) == 0:
		return makeNopInstr(counter)

	if "I" in mode and wb:
		sp += len(instrRegs) * 4
	elif wb:
		sp -= len(instrRegs) * 4

	instrRegs.sort(key=lambda r: int(r[1:]))

	program = "l{}: {}{}{} {}{}, {{{}}}\n".format(counter, instruction, cond, mode, Rn, "!" if wb else "", ", ".join(instrRegs))
	return program


def makeNopInstr(counter):
	program = "l{}: nop\n".format(counter)
	return program


def makeAddr1ShiftImm(shifter):
	if shifter == "ROR":
		return randint(1,31)
	return randint(0,31)


def makeAddr1Immed():
	immed_8 = randint(0,2**8-1)
	rotate_imm = randrange(0,32, 2)
	return ror(immed_8, rotate_imm)

def ror(value, amt, bits = 32):
	result = ((value & (2**bits-1)) >> amt%bits) | (value << (bits - (amt%bits)) & (2**bits-1))
	return ctypes.c_long(result).value

# Set up the stack and registers. The instruction sequence looks strange,
# but lets us ldr [pc] for each val
def initializeProgram():
	global lower, upper, sp
	stackSize = 21

	program = ""
	program += ".global main\n"
	program += "main:\n"
	program += "\n"
	program += "# INITIALIZING R0 and SP\n"
	program += "\n"
	program += "subs R0, R15, R15\n"				# Initializing R0 to 0
	program += "ldr sp, val\n"						# Initializing stack pointer
	program += "b next\n"
	sp = 0xffff0
	upper = sp + 0
	lower = sp - (stackSize - 1) * 4
	program += "val: .word 0xffff0\n"
	program += "\n"
	program += "# INITIALIZING REGISTERS\n"
	program += "\n"
	program += "next: "
	for i in range(1,13): 							# Initializing registers
		program += "ldr R{0}, val{0}\n".format(i)
		program += "b next{}\n".format(i)
		program += "val{}: .word {}\n".format(i, randint(1,4294967295))
		program += "next{}:".format(i)
	program += "ldr R14, val14\n"
	program += "b next14\n"
	program += "val14: .word {}\n".format(randint(1,4294967295))
	program += "\n"
	program += "# INITIALIZING STACK\n"
	program += "\n"
	program += "next14: "
	for i in range(stackSize): 							# Aribtrarily initializing stack so we can compare exact values
		program += "ldr R1, val{}\n".format(i+15)
		program += "b next{}\n".format(i+15)
		item = randint(1,4294967295)
		address = sp - i * 4
		spOffset = address - sp # should be -i*4
		addresses.update(set([address]))
		program += "val{}: .word {}\n".format(i+15, item)
		program += "next{}:".format(i+15)
		program += "str R1, [sp, #{}]\n".format(spOffset)
	program += "\n"
	return program


if __name__ == "__main__":
	makeProgram(numInstru)
