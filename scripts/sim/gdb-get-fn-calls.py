# set pagination off
# set logging on
# rbreak .
# enable once 1-16823
# python <this code>

import gdb, re, math

def getFnName():
    return gdb.selected_frame().name()

icountParser = re.compile('.+: (.+)')
def getQemuInstrCt():
    countMatch = icountParser.match(gdb.execute('monitor xp/x 0x10000028', to_string=True))
    timeval = int(countMatch.group(1),16)
    return int(math.ceil(timeval * 1000. / 24.))

def printState():
    print "{}: {}".format(getQemuInstrCt(), getFnName())

def loop():
    while True:
        printState()
        gdb.execute("continue", to_string=True)