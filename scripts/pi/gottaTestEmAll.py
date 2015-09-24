# Date: September 15, 2015
# Author: Sam Dietrich sdietrich@hmc.edu

from subprocess import Popen, PIPE

if __name__ == "__main__":
  N = str(1000)

	# make the big test of all instructions. 1,000
  print "making {} random tests of everything".format(N)
  with open("random_{}.s".format(N), "w+") as f:
    code = Popen(['python', 'makeRandomAssembly.py', '-n', N ],
                   stdout=f)
    code.wait()


  ###############
  # Copypaste the instructions from makeRandomAssembly.py
  # should put it in a class some day.
  ###############

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

  # multiply
  multiply = ["mul", "mla", "umull", "umlal", "smull", "smlal"]


  ###############
  # End Copypaste
  ###############





  instrs = arithmetic+logicOps+fbranch+bbranch+wbmem+hmem+mmem+multiply
  print "making tests for {} instructions".format(len(instrs))

  for inst in instrs:

    fname = "{}_{}.s".format(inst,N)
    print "making {} tests for {}".format(N, inst)

    with open(fname, "w+") as f:
      code = Popen(['python', 'makeRandomAssembly.py', '-n', N, '-i', inst ],
                   stdout=f)
      code.wait()

  # make test of working instructions. 1,000
  N1=str(3000)
  arithmetic.remove("clz")
  working = arithmetic + logicOps + fbranch + bbranch + ["mul", "ldr", "str"]
  print "making {} random tests of everything".format(N1)
  with open("working_{}.s".format(N1), "w+") as f:
    code = Popen(['python', 'makeRandomAssembly.py', '-n', N1 ],
                   stdout=f)
    code.wait()