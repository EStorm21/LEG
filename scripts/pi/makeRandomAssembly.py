# Date: 4/23/13
# Version 3
# Revisions:
# 	- Added R15 to source registers
#	- Changed first sub to 'subs'
#	- Added conditions to adds, subs, ands, orrs
#	- R15 is also changed
#	- R15 immediate adjusted for block size (4 bytes) and PC + 8
from random import *
from time import *

seed(time())

arithmetic = [ "adc", "add", "bic", "sub", "rsb", "sbc", "mov", "mvn", "tst", "teq", "cmn", "cmp"]
shortDataProcessing = ["mov", "mvn", "tst", "teq", "cmn", "cmp"]
setConditions = ["EQ","NE","CS","CC","MI","PL","VS","VC","HI","LS","GE","LT","GT","LE","EQs","NEs","CSs","CCs","MIs","PLs","VSs","VCs","HIs","LSs","GEs","LTs","GTs","LEs"]+[""]*5
Conditions = ["EQ","NE","CS","CC","MI","PL","VS","VC","HI","LS","GE","LT","GT","LE"]+[""]*5
logicOps = ["and","orr", "eor"]
fbranch = ["fb"]
bbranch = ["bb"]
memory = ["str","ldr"]
multiply = ["mul", "mla", "umull", "smull"]
instrs = [arithmetic]*50+[logicOps]*15+[fbranch]*5+[bbranch]*5+[memory]*5+[multiply]*5
shifters = ["ASR", "LSL", "LSR", "ROR", "RRX"]


SrcRegList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14"]

#arithRegList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14"]
#arithRegList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14","R15"]

regList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14"]
regOrImmList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14"]
for i in range(16):
	regOrImmList += ["#" + str(randint(1,10)*4)]

shiftRegOrImmList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14"]
for i in range(16):
	shiftRegOrImmList += ["#" + str(randint(1,31))]

def makeProgram(numInstru):
	program = initializeProgram() #initializes registers to random values
	counter = 1
	program += "# MAIN PROGRAM\n"
	program += "\n"
	while counter <= numInstru:
		#arithList = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R14"]+["#"+str(randint(1,9)*4)]*3
		

		program += "l"+str(counter)+": "			# Line number
		instrList = choice(instrs)
		#print "instr is ", counter, instrList		## Uncomment to track instructions used
		if instrList == arithmetic:					# arithmetic ("add/sub") with or without conditions
			instrChoice = choice(instrList)
			program = makeDataProcInstr(program, instrChoice, counter)
		elif instrList == logicOps:					# Logic Operations ("add/orr") with or without conditions
			program += choice(instrList) + choice(setConditions) 
			program += " " + choice(regList) + ", "
			program += " " + choice(SrcRegList) + ", "
			program += " " + choice(SrcRegList) + "\n"
		elif instrList == bbranch and counter < numInstru-11:	# Backward branch operations
			instrBlock = randint(1,6)				# get random integer to represent number of instructions in the backward branch
			program += "b" + choice(Conditions) + " l" + str(counter+instrBlock+3) + "\n"
			counter += 1
			program += "l" + str(counter) + ": add R1, R0, #" + str(randint(1,255)) + "\n"
			counter += 1
			for i in range(instrBlock):				# adding random arithmetic instructions in backward branch section
				instrChoice = choice(arithmetic)
				program += "l"+str(counter)+": "			# Line number
				program = makeDataProcInstr(program, instrChoice, counter)
				counter += 1
			program += "l" + str(counter) + ": b l" + str(counter+2) + "\n"
			counter += 1
			program += "l" + str(counter) + ": b l" + str(counter-instrBlock-1) + "\n"
		elif instrList == fbranch and counter < numInstru-11:	# forward branch operations
			forwardAmt = randint(1,10)
			program += "b" + choice(Conditions)
			program += " " + "l"+str(counter+forwardAmt) + "\n"
		elif instrList == multiply:
			instrChoice = choice(multiply)
			program, counter = makeMultiplyInstr(program, instrChoice, counter)
		else:										# ldr & str instructions
			program += choice(memory) + choice(Conditions)
			program += " " + choice(regList) + ", "
			program += " " + "[sp, #-"+str(randint(1,10)*4) + "]\n"
		counter += 1
	program += "end: b end\n"
	print program

def makeDataProcInstr(program, instruction, counter):
	regChoice = choice(regList)
	# Note that regChoice will never be R15 if not in regList
	if regChoice == "R15" and (counter < 11 or counter > numInstru-11): #Check if PC counter operation is near beginning or end
		program += instruction + choice(Conditions)
		program += " R15, R15, "
		program += " #0" + "\n"
	elif regChoice == "R15":	# Check if PC with anything but sub (add)
		program += "add" + choice(Conditions)
		program += " R15, R15, "
		program += " #" + str(randint(1,5)*4) + "\n"
	else:	# All other cases (without PC counter)
		program += instruction + choice(setConditions)
		program += " " + regChoice 
		if instruction not in shortDataProcessing:
			program += ", " + choice(regList) 
		if (choice(range(2))): #do a shift sometimes
			shifter = choice(shifters)
			program += ", " + choice(regList) + ", " + shifter
			if (shifter != "RRX"):
				program += " " + choice(shiftRegOrImmList)
			program += "\n"
		else:
			program += ", " + choice(regOrImmList) + "\n"
	return program

def makeMultiplyInstr(program, instruction, counter):
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
		program += "ldr R" + str(i) + ", val"+ str(i) + "\n"
		program += "b next" + str(i) + "\n"
		program += "val" + str(i) + ": .word " + str(randint(1,4294967295)) + "\n"
		program += "next" + str(i) + ": "
	program += "ldr R14, val14\n"
	program += "b next14\n"
	program += "val14: .word " + str(randint(1,4294967295)) + "\n"
	program += "\n"
	program += "# INITIALIZING STACK\n"
	program += "\n"
	program += "next14: "
	for i in range(11): 							# Aribtrarily initializing stack so we can compare exact values
		program += "ldr R1, val"+ str(i+15) + "\n"
		program += "b next" + str(i+15) + "\n"
		program += "val" + str(i+15) + ": .word " + str(randint(1,4294967295)) + "\n"
		program += "next" + str(i+15) + ": "
		program += "str R1, [sp, #-" + str(i*4) + "]\n"
	program += "\n"
	return program

if __name__ == "__main__":
	makeProgram(1000)