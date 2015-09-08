# Date: 9/07/15
# Version 4
#
# Limitations:
#  - Does not test write to PC
#  - Only tests user mode (no interrupts, SR operations)
#  - does not test coprocessor
#  - does not test BL
#  - limited set of DP immediates
#  - DP immed shifts of 0 or 32

from random import *
from time import *

seed(time())

# Condition codes
Conditions = ["EQ","NE","CS","CC","MI","PL","VS","VC","HI","LS","GE","LT","GT","LE"]+[""]*5
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
wbmem = ["str","ldr", "ldrb", "strb"]
wbmem += [i+"t" for i in wbmem]

# Load/store halfword and load signed byte
hmem = ["ldrh", "ldrsb", "ldrsh", "strh"]

mem = wbmem + hmem

# multiply
multiply = ["mul", "mla", "umull", "umlal", "smull", "smlal"]

instrs = [arithmetic]*50+[logicOps]*15+[fbranch]*5+[bbranch]*5+[mem]*5+[multiply]*5
shifters = ["ASR", "LSL", "LSR", "ROR", "RRX"] + [""]*5


regList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14"]
RegsWithPC = regList + ["R15"]

SrcRegList = list(regList)




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
			program += makeFBranchInstr(counter)

		# multiply operations
		elif instrList == multiply:
			prog, counter = makeMultiplyInstr(instrChoice, counter)
			program += prog

		# memory instructions
		elif instrList == mem:										# ldr & str instructions
			program += makeMemInstr(instrChoice, counter)

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
		RSR = choice([0,1])

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
	cond = None
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
			program += "#{}".format(randint(1,31))

		program += "\n"
	else:
		imm = "#{}".format(randint(1,10)*4)
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
	return program


def makeMultiplyInstr(instruction, counter):
	program = "l"+str(counter)+": "			# Line number
	regChoice = choice(regList)
	program += instruction + choice(setConditions)
	if (instruction == "mla"):
		#rd can't be rm
		secondR = choice(regList)
		while (regChoice == secondR):
			secondR = choice(regList)
		program += " " + regChoice + ", " + secondR + ", " + choice(regList) + ", " + choice(regList)
	elif (instruction in ["umull", "smull", "smlal", "umlal"]):
		# rdHi != rdLo != rm
		rdHi = choice(regList)
		rdLo = choice(regList)
		while (rdLo == rdHi):
			rdLo = choice(regList)
		rm = choice(regList)
		while (rm == rdHi or rm == rdLo):
			rm = choice(regList)
		rs = choice(regList)
		program += " " + rdHi + ", " + rdLo + ", " + rm + ", " + rs
	else:
		program += " " + regChoice + ", " + choice(regList) + ", " + choice(regList)
	program += "\n"
	counter += 1
	#add another instruction to set the carry flag
	program += "l"+str(counter)+": "			# Line number
	program += "adds r0, r0, r0\n"
	return program, counter


def makeMemInstr(instruction, counter):
	program = "l"+str(counter)+": "			# Line number
	program += instruction + choice(Conditions)
	program += " " + choice(regList) + ", "
	program += " " + "[sp, #-"+str(randint(1,10)*4) + "]\n"
	return program


def makeNopInstr(counter):
	program = "l{}: nop\n".format(counter)
	return program


# Set up the stack and registers. The instruction sequence looks strange,
# but lets us ldr [pc] for each val
def initializeProgram():
	program = ""
	program += ".global main\n"
	program += "main:\n"
	program += "\n"
	program += "# INITIALIZING R0 and SP\n"
	program += "\n"
	program += "subs R0, R15, R15\n"				# Initializing R0 to 0
	program += "ldr sp, val\n"						# Initializing stack pointer
	program += "b next\n"
	program += "val: .word 0xbefffae8\n"
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
	for i in range(11): 							# Aribtrarily initializing stack so we can compare exact values
		program += "ldr R1, val{}\n".format(i+15)
		program += "b next{}\n".format(i+15)
		program += "val{}: .word {}\n".format(i+15, randint(1,4294967295))
		program += "next{}:".format(i+15)
		program += "str R1, [sp, #-{}]\n".format(i*4)
	program += "\n"
	return program


if __name__ == "__main__":
	makeProgram(100)
