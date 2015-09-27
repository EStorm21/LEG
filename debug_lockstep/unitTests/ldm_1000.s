.global main
main:

# INITIALIZING R0 and SP

subs R0, R15, R15
ldr sp, val
b next
val: .word 0xffff0

# INITIALIZING REGISTERS

next: ldr R1, val1
b next1
val1: .word 1769178854
next1:ldr R2, val2
b next2
val2: .word 4020854442
next2:ldr R3, val3
b next3
val3: .word 3096822046
next3:ldr R4, val4
b next4
val4: .word 4260904385
next4:ldr R5, val5
b next5
val5: .word 555415305
next5:ldr R6, val6
b next6
val6: .word 278618943
next6:ldr R7, val7
b next7
val7: .word 3998298497
next7:ldr R8, val8
b next8
val8: .word 703561014
next8:ldr R9, val9
b next9
val9: .word 3036683551
next9:ldr R10, val10
b next10
val10: .word 4080848474
next10:ldr R11, val11
b next11
val11: .word 2683758723
next11:ldr R12, val12
b next12
val12: .word 3409784143
next12:ldr R14, val14
b next14
val14: .word 4151610729

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3276037245
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2053072732
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3186799432
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1529118674
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3583354478
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3796670336
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2997171076
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 397182104
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 628138508
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2364322391
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1073533306
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3267410434
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1263986648
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2382143710
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1277581805
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1803267373
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2679161972
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1832453790
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2337299502
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 756838258
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3799085590
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldmDB R13!, {R4, R5, R6, R8}
l2: ldmPLIA R13, {R1, R9}
l3: ldmIA R13, {R14}
l4: ldmIB R13!, {R4}
l5: ldmIB R13, {R14}
l6: ldmIB R13!, {R0}
l7: ldmDB R13!, {R3, R4, R5, R8, R9, R11}
l8: ldmIB R13, {R8, R10}
l9: nop
l10: ldmDB R13, {R0, R2, R7, R9, R10, R11, R14}
l11: ldmDA R13!, {R2, R3, R5, R9, R10, R11, R12, R14}
l12: nop
l13: ldmDA R13!, {R2, R11}
l14: nop
l15: nop
l16: nop
l17: ldmIA R13!, {R0, R1, R4, R6, R7, R12}
l18: ldmDB R13!, {R1, R2, R3, R4, R11}
l19: ldmDA R13!, {R9}
l20: nop
l21: ldmIA R13!, {R2, R6, R7}
l22: ldmIA R13!, {R7}
l23: ldmLSIB R13, {R0, R6, R8, R9}
l24: ldmGTIB R13, {R6, R7, R14}
l25: nop
l26: nop
l27: ldmDB R13!, {R6}
l28: ldmVSIA R13, {R1, R2, R3, R4, R8, R9}
l29: ldmCSDB R13, {R2, R4}
l30: ldmDB R13!, {R12, R14}
l31: nop
l32: nop
l33: nop
l34: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R12, R14}
l35: ldmDA R13!, {R0, R2, R4, R6, R8, R14}
l36: ldmGEIA R13, {R2, R3, R4, R5, R9}
l37: ldmIB R13!, {R11}
l38: ldmIA R13!, {R0, R3, R4, R5, R7, R9, R10, R11}
l39: ldmDA R13!, {R2, R4, R5, R6, R8, R9, R10, R14}
l40: ldmCSIB R13, {R0, R7, R8, R12}
l41: ldmLSDB R13, {R3}
l42: ldmGEIB R13, {R0, R1, R3, R4, R6, R9, R10, R11, R12}
l43: ldmDB R13!, {R1, R6}
l44: ldmIB R13!, {R0, R2, R5, R6, R7, R8, R10, R11, R14}
l45: ldmDA R13!, {R1, R3, R4, R10}
l46: ldmDB R13!, {R6, R12}
l47: ldmPLIA R13, {R6, R7, R11, R12, R14}
l48: ldmIB R13!, {R0, R4, R5, R8, R9, R10, R11}
l49: nop
l50: ldmIB R13!, {R7}
l51: ldmDB R13!, {R0, R1, R2, R3, R5, R8, R9}
l52: ldmIB R13!, {R1, R2, R8, R9, R14}
l53: ldmIB R13!, {R5}
l54: ldmDB R13!, {R0, R3, R5, R6, R7, R8, R9, R11, R14}
l55: ldmDA R13, {R3, R5, R9, R11}
l56: ldmLEDB R13, {R9}
l57: ldmIB R13!, {R0, R2, R3, R4, R11, R12}
l58: nop
l59: ldmIA R13!, {R10, R11}
l60: ldmDB R13!, {R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l61: nop
l62: nop
l63: ldmDB R13!, {R0, R6, R7}
l64: nop
l65: ldmDA R13!, {R8}
l66: ldmLTIB R13, {R5}
l67: ldmIB R13!, {R0, R1, R3, R7, R8, R10, R12}
l68: ldmDA R13!, {R3, R7, R8, R9, R12}
l69: ldmDB R13!, {R5}
l70: ldmIA R13!, {R4}
l71: ldmDA R13!, {R0, R9}
l72: nop
l73: ldmIA R13!, {R0, R2, R3, R11}
l74: ldmMIDB R13, {R3, R4, R7}
l75: ldmDA R13!, {R2}
l76: ldmIB R13!, {R0, R1, R2, R3, R7, R8}
l77: ldmDA R13!, {R9}
l78: nop
l79: ldmDA R13, {R1, R4, R7, R10, R12}
l80: ldmLEIB R13, {R0, R2, R4, R6, R7, R8, R10}
l81: ldmDB R13!, {R8}
l82: ldmIB R13!, {R3, R5, R6, R7, R9, R10, R12, R14}
l83: ldmDB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l84: nop
l85: ldmIB R13!, {R4, R5, R10, R11, R12, R14}
l86: ldmDB R13!, {R6, R10}
l87: nop
l88: ldmDB R13!, {R7, R14}
l89: ldmPLIB R13, {R2, R6, R9, R14}
l90: ldmDB R13!, {R8, R9, R12}
l91: ldmDA R13!, {R6}
l92: ldmIB R13!, {R0, R1, R2, R6, R8, R9, R11, R12}
l93: ldmIB R13!, {R0, R4, R7, R10, R12}
l94: ldmVCIB R13, {R5, R6, R14}
l95: ldmIA R13!, {R1, R11}
l96: ldmDB R13, {R2, R4}
l97: nop
l98: ldmDB R13, {R6, R12}
l99: ldmIB R13!, {R8}
l100: ldmDB R13!, {R0, R1, R2, R3, R4, R6, R9, R10, R14}
l101: ldmIA R13!, {R0, R2, R5, R7, R12}
l102: nop
l103: ldmDA R13!, {R0, R1, R5, R6, R7, R8, R14}
l104: ldmGTDB R13, {R3, R4, R5, R6, R14}
l105: ldmHIDA R13, {R8}
l106: ldmIA R13!, {R4, R7}
l107: ldmIA R13!, {R1, R4, R5, R6, R8, R11, R12}
l108: nop
l109: ldmDA R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12}
l110: ldmDB R13!, {R7}
l111: nop
l112: ldmDA R13!, {R12}
l113: ldmGTDA R13, {R2}
l114: nop
l115: nop
l116: ldmIA R13!, {R1, R8, R9, R10, R12}
l117: ldmDA R13!, {R1, R4}
l118: ldmIA R13, {R4, R5, R10, R12}
l119: ldmIB R13!, {R1, R3, R4, R7, R9, R11, R12}
l120: ldmNEDB R13, {R0, R1, R4, R5, R8, R9, R10, R11, R12, R14}
l121: nop
l122: ldmDB R13!, {R2, R4, R8, R10, R12}
l123: ldmIB R13, {R0, R1, R2, R3, R5, R7, R9, R10, R11, R12}
l124: ldmDA R13!, {R5, R9, R11}
l125: ldmIA R13, {R0, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l126: nop
l127: ldmIB R13!, {R3, R6, R8, R11, R12, R14}
l128: ldmIB R13!, {R5, R6, R11}
l129: nop
l130: ldmDB R13!, {R4, R5, R10, R11}
l131: ldmIA R13!, {R0, R3, R9}
l132: ldmIA R13, {R0, R2, R3, R10, R12}
l133: ldmLSDB R13, {R1, R2, R3, R4, R6, R8, R9, R11, R12, R14}
l134: ldmIB R13!, {R0, R2, R3, R4}
l135: ldmDA R13!, {R0, R6, R11, R12}
l136: ldmDB R13, {R11, R12}
l137: ldmDB R13!, {R1, R3, R4, R7, R10, R11, R12, R14}
l138: ldmIA R13!, {R0, R3, R5, R7, R8, R9, R11, R12, R14}
l139: ldmLTDB R13, {R0, R1, R3, R4, R5, R6, R7, R10, R12, R14}
l140: ldmCCDB R13, {R0, R4, R7, R8, R11, R14}
l141: ldmDA R13!, {R0, R1, R2, R3, R4, R9, R10, R11, R12, R14}
l142: nop
l143: ldmIA R13, {R4, R5, R6, R7, R9, R14}
l144: ldmIB R13!, {R0, R5}
l145: ldmDB R13!, {R3}
l146: ldmIA R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l147: nop
l148: nop
l149: ldmDA R13!, {R1, R3, R11, R14}
l150: ldmDB R13!, {R8, R14}
l151: ldmIB R13!, {R4, R5, R9, R11, R14}
l152: ldmIA R13!, {R4}
l153: ldmDA R13!, {R2, R3, R4, R5}
l154: ldmDA R13!, {R0, R1, R3, R4, R6, R8, R11}
l155: ldmIB R13!, {R0, R1, R4, R7, R10, R11, R12}
l156: ldmDB R13!, {R2, R4, R6, R7, R14}
l157: ldmIA R13!, {R1, R4, R6, R9, R10, R12}
l158: ldmDA R13!, {R0, R2, R6, R8, R9, R10, R11, R14}
l159: ldmDA R13, {R1, R3, R5, R7, R10}
l160: ldmIA R13!, {R1, R2, R4, R6, R7, R8, R9, R10, R11, R14}
l161: ldmDA R13!, {R0, R1, R3, R4, R6, R7, R8, R11, R12}
l162: ldmDB R13!, {R1, R4, R7, R8, R10, R11}
l163: nop
l164: nop
l165: ldmIB R13!, {R0, R4, R5, R7, R8, R9, R10, R14}
l166: ldmIA R13!, {R1, R5, R8, R9}
l167: ldmIB R13!, {R0, R3, R5, R10}
l168: ldmDA R13!, {R0, R1, R2, R3, R4, R7, R8, R9, R10, R11, R12, R14}
l169: ldmPLIB R13, {R8}
l170: ldmDB R13, {R5}
l171: ldmDB R13!, {R3, R4, R7}
l172: nop
l173: ldmIB R13!, {R0, R3, R5, R6, R10, R11}
l174: ldmDA R13!, {R1, R5, R6, R7, R8, R12}
l175: ldmIA R13!, {R4, R5, R8}
l176: ldmDA R13!, {R5}
l177: ldmDB R13!, {R2, R8, R9}
l178: nop
l179: ldmIB R13!, {R0, R2, R4, R5, R6, R8, R9, R10, R11, R12}
l180: ldmDA R13!, {R2, R7, R9, R11}
l181: ldmDA R13!, {R7}
l182: nop
l183: ldmIB R13!, {R0, R1, R5, R8, R9, R11, R12}
l184: ldmIB R13!, {R6}
l185: nop
l186: nop
l187: ldmVSDA R13, {R0, R1, R4, R6, R7, R12}
l188: nop
l189: ldmPLIB R13, {R8, R12}
l190: ldmDA R13, {R0, R2, R3, R4, R8, R10, R11}
l191: ldmVSDB R13, {R2, R3, R7}
l192: ldmDA R13!, {R1, R3, R6, R9, R10, R11, R12}
l193: ldmCCIB R13, {R2, R3, R4, R6, R10}
l194: ldmIB R13!, {R1, R2, R3, R4, R6, R7, R8, R9, R10}
l195: ldmIB R13!, {R11}
l196: nop
l197: ldmDA R13, {R4, R5, R6, R11}
l198: ldmDA R13!, {R0, R2, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l199: ldmCCIA R13, {R3, R6, R7, R8, R9, R11, R12, R14}
l200: ldmDB R13!, {R5}
l201: ldmDB R13, {R1, R5, R8, R12}
l202: ldmIB R13!, {R2, R7, R12}
l203: ldmIA R13!, {R2, R4, R5, R6, R8, R9, R10, R14}
l204: ldmDB R13!, {R0, R2, R3, R5, R6}
l205: ldmDA R13!, {R1, R4, R6, R12, R14}
l206: nop
l207: ldmIB R13!, {R5, R8, R12}
l208: ldmGTIA R13, {R3, R4, R11, R12}
l209: ldmCCDA R13, {R2, R4, R11}
l210: ldmLTDB R13, {R1, R2, R10, R14}
l211: nop
l212: ldmIB R13!, {R0, R1, R2, R4, R6, R7, R9, R11}
l213: nop
l214: nop
l215: ldmDA R13, {R0, R2, R5, R6, R8, R9}
l216: nop
l217: ldmDB R13, {R0, R2, R3, R4, R5, R6, R7, R9, R11, R12}
l218: ldmDB R13!, {R4, R8}
l219: ldmIA R13!, {R0}
l220: ldmIB R13!, {R5}
l221: nop
l222: nop
l223: nop
l224: nop
l225: ldmEQDB R13, {R2, R3, R4, R5, R6, R7, R8, R9, R10, R12}
l226: ldmDA R13!, {R3, R5, R7, R9, R10, R11, R14}
l227: ldmDB R13!, {R9, R10, R14}
l228: ldmGTIB R13, {R0, R11, R12}
l229: ldmIB R13!, {R6, R8, R9, R10, R12}
l230: ldmMIIA R13, {R2, R5, R6, R7, R14}
l231: ldmIB R13!, {R4, R6, R7, R11, R12}
l232: nop
l233: ldmDB R13!, {R1, R10, R12}
l234: nop
l235: ldmDA R13!, {R0, R4, R7, R8, R14}
l236: ldmDB R13, {R0, R2, R4, R6, R7, R10, R11}
l237: ldmDB R13!, {R6, R8, R14}
l238: ldmIB R13!, {R0, R1, R3, R8, R12}
l239: ldmIA R13, {R1, R6, R7, R8, R10, R11}
l240: ldmGTDB R13, {R0, R3, R5, R6, R8, R9, R10, R11, R14}
l241: ldmDA R13!, {R2, R9}
l242: ldmIA R13, {R0, R1, R2, R6, R9, R11, R14}
l243: ldmIA R13!, {R0, R4, R5, R8, R11}
l244: ldmDA R13!, {R6, R11, R14}
l245: ldmIA R13!, {R1, R2, R3, R7, R8, R9}
l246: nop
l247: ldmDA R13!, {R0, R3, R4, R6}
l248: ldmIA R13!, {R12}
l249: ldmIB R13, {R11}
l250: ldmIB R13!, {R5, R7}
l251: ldmDB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l252: ldmDB R13!, {R9, R11}
l253: nop
l254: nop
l255: ldmIA R13!, {R1, R7, R12}
l256: ldmDA R13!, {R1, R7, R14}
l257: nop
l258: ldmIB R13!, {R2, R3, R6, R8, R10}
l259: ldmLTDA R13, {R1, R8}
l260: ldmDA R13, {R4}
l261: ldmDB R13!, {R3, R7, R12}
l262: ldmIB R13, {R11, R14}
l263: nop
l264: ldmIB R13!, {R3, R4, R5, R6}
l265: ldmIB R13!, {R0, R1, R2, R3, R5, R6, R8, R11, R12, R14}
l266: nop
l267: ldmDA R13!, {R4, R9, R14}
l268: ldmDB R13!, {R0, R1, R2, R4, R5, R7, R8, R9, R12, R14}
l269: ldmDB R13!, {R14}
l270: ldmIA R13!, {R2, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l271: ldmIB R13, {R1, R2, R4, R9}
l272: ldmMIDB R13, {R1, R2, R3, R4, R7, R12, R14}
l273: ldmLEIA R13, {R0, R3}
l274: ldmDA R13!, {R2, R3, R4, R5, R6, R7, R12}
l275: ldmMIIA R13, {R11, R12}
l276: ldmIA R13!, {R1, R3, R6, R7, R8, R9, R10, R11, R12, R14}
l277: ldmIB R13!, {R5}
l278: ldmLTDA R13, {R1, R4, R6, R10, R11, R14}
l279: nop
l280: nop
l281: ldmDB R13!, {R1, R4, R8}
l282: ldmDA R13!, {R0, R3, R6, R7, R9, R12}
l283: ldmDA R13!, {R2, R3, R8, R11}
l284: ldmIA R13!, {R2, R4}
l285: ldmDB R13!, {R14}
l286: nop
l287: ldmIA R13!, {R0, R1, R3, R5, R6, R7, R8, R9, R10, R12, R14}
l288: ldmIB R13!, {R12}
l289: ldmDA R13!, {R9, R11}
l290: ldmDB R13!, {R0, R1, R4, R11, R12}
l291: ldmIB R13!, {R2, R4, R8, R10, R11}
l292: nop
l293: ldmDB R13!, {R1, R2, R3, R5, R6, R7, R8, R9, R10, R12}
l294: ldmDB R13!, {R1}
l295: ldmGEIB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l296: ldmDB R13, {R10, R12}
l297: ldmIB R13!, {R5}
l298: ldmIA R13!, {R7, R14}
l299: nop
l300: ldmDB R13!, {R0, R3, R4, R6, R7, R14}
l301: nop
l302: nop
l303: ldmIB R13, {R0, R1, R4, R5, R6, R10, R12}
l304: ldmLTIA R13, {R0, R2, R4, R8, R9}
l305: nop
l306: nop
l307: ldmIB R13!, {R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l308: ldmHIIA R13, {R6, R9, R11}
l309: ldmDB R13!, {R4}
l310: ldmHIDB R13, {R1, R4, R6, R9, R10, R11, R14}
l311: ldmDB R13!, {R0, R2, R3, R6, R9, R10, R11, R12}
l312: nop
l313: ldmIA R13, {R1, R2, R3, R5, R6, R8, R9, R10, R11, R12}
l314: ldmIB R13, {R3, R6, R7, R14}
l315: ldmDB R13!, {R4, R7, R14}
l316: ldmIA R13!, {R0, R1, R3, R4, R5, R8, R9, R11, R12, R14}
l317: ldmDA R13, {R6, R8, R11}
l318: ldmDA R13!, {R0, R1, R3, R7, R8}
l319: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R9, R10, R12}
l320: ldmDA R13!, {R1, R5, R6, R7, R8, R10, R14}
l321: ldmLSIA R13, {R0, R6, R10}
l322: ldmDB R13!, {R0, R1, R2, R3, R8, R9, R11}
l323: nop
l324: ldmDA R13, {R12}
l325: ldmIA R13!, {R0, R1, R4, R7, R10, R11}
l326: ldmCSDB R13, {R1, R2, R4, R6, R9}
l327: ldmDA R13!, {R1, R10, R11}
l328: ldmDA R13!, {R0, R11}
l329: ldmVSIA R13, {R0, R1, R2, R4, R5, R7, R8, R9, R11, R12, R14}
l330: ldmCCDA R13, {R10}
l331: ldmDA R13!, {R7}
l332: ldmDB R13!, {R8}
l333: nop
l334: nop
l335: ldmEQIA R13, {R1, R5, R6, R9, R11, R14}
l336: nop
l337: ldmCCIB R13, {R0, R3, R4, R5, R6, R7, R10, R11, R12, R14}
l338: ldmIA R13!, {R3, R4, R14}
l339: ldmDA R13, {R6}
l340: nop
l341: ldmDA R13!, {R8, R9}
l342: nop
l343: nop
l344: ldmIB R13!, {R0, R3, R4, R5, R6, R8, R9, R10, R11, R14}
l345: ldmIA R13!, {R9}
l346: ldmDB R13!, {R4, R6, R9, R11}
l347: ldmDB R13!, {R3, R4, R5, R8, R12, R14}
l348: ldmPLIB R13, {R1, R2, R3, R4, R5, R8, R10, R11, R12}
l349: ldmIA R13, {R0, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l350: ldmDA R13!, {R4, R11}
l351: nop
l352: nop
l353: nop
l354: ldmMIIB R13, {R0, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l355: ldmLTIB R13, {R1, R3, R4, R8, R11, R12}
l356: ldmIA R13!, {R5, R6, R9, R11, R14}
l357: nop
l358: ldmDA R13!, {R0, R5, R14}
l359: ldmDB R13, {R4, R7}
l360: ldmEQIA R13, {R0, R1, R2, R4, R6, R9, R11, R12}
l361: ldmDA R13!, {R2, R12}
l362: nop
l363: ldmCSIB R13, {R6, R8, R9}
l364: ldmIB R13!, {R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l365: ldmCCDB R13, {R2, R3, R11, R14}
l366: ldmDA R13!, {R0, R2, R9, R11}
l367: ldmDA R13!, {R0, R4, R12, R14}
l368: ldmIA R13, {R3, R9, R14}
l369: ldmIA R13!, {R5, R8, R9, R10, R12}
l370: ldmIA R13, {R1, R2, R5, R6, R10}
l371: ldmPLIB R13, {R6, R8, R9, R10, R12}
l372: ldmIA R13, {R0, R1, R2, R3, R9, R11, R12}
l373: ldmDA R13, {R5, R6, R11, R12}
l374: nop
l375: ldmDA R13!, {R3, R4, R10}
l376: nop
l377: ldmIB R13!, {R0, R1, R2, R5, R7, R8, R11, R12, R14}
l378: nop
l379: nop
l380: nop
l381: nop
l382: ldmDA R13!, {R0, R4, R9}
l383: ldmHIIB R13, {R3, R4, R9}
l384: ldmIA R13!, {R9}
l385: ldmIA R13!, {R1, R5}
l386: ldmHIDB R13, {R0, R1, R3, R8, R9, R10, R11, R12}
l387: ldmDA R13!, {R0, R1, R3, R5, R6, R7, R8, R9, R11, R12, R14}
l388: ldmIA R13, {R3, R4, R6, R7, R8, R10, R11}
l389: ldmDB R13!, {R1, R2, R4, R7}
l390: nop
l391: nop
l392: nop
l393: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12}
l394: ldmIA R13, {R14}
l395: nop
l396: ldmCCDA R13, {R0, R2, R3, R6, R7, R10, R12}
l397: ldmIB R13!, {R2}
l398: ldmIB R13!, {R4, R7}
l399: ldmDA R13!, {R3, R4, R6, R10, R12}
l400: ldmDB R13!, {R0, R12}
l401: ldmIB R13, {R12}
l402: ldmIA R13!, {R0, R2, R5, R6, R8, R9, R14}
l403: nop
l404: ldmIA R13!, {R8}
l405: nop
l406: ldmDB R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l407: ldmEQDA R13, {R0, R5, R7, R10}
l408: ldmIA R13!, {R2, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l409: nop
l410: ldmIB R13, {R6}
l411: nop
l412: ldmVCDB R13, {R0, R1, R5, R8, R9, R10, R12, R14}
l413: ldmDA R13!, {R1, R2, R3, R9}
l414: ldmDB R13!, {R1, R2, R5, R7, R8, R9, R12, R14}
l415: ldmDA R13, {R4}
l416: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l417: ldmDA R13!, {R2, R5, R7, R8, R9, R10, R12, R14}
l418: ldmDA R13, {R0, R1, R11}
l419: ldmDB R13!, {R4, R6, R7, R8, R11, R12}
l420: ldmIB R13, {R6, R14}
l421: ldmIB R13!, {R0, R1, R2, R4, R7, R10, R11, R14}
l422: ldmIB R13!, {R7, R11}
l423: nop
l424: ldmIA R13, {R9}
l425: ldmDA R13!, {R0, R5, R7, R9, R11, R12, R14}
l426: ldmDB R13!, {R3}
l427: nop
l428: ldmIA R13!, {R5, R14}
l429: ldmDA R13!, {R3, R10, R11, R12}
l430: nop
l431: nop
l432: ldmIA R13, {R1}
l433: ldmLEIB R13, {R2, R3, R4, R5, R7, R8, R14}
l434: ldmIB R13!, {R9, R12, R14}
l435: ldmCCDB R13, {R6}
l436: ldmMIDA R13, {R10}
l437: ldmDB R13, {R6}
l438: ldmDB R13!, {R1}
l439: ldmDB R13!, {R0, R10}
l440: ldmIA R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l441: nop
l442: ldmIA R13!, {R5, R14}
l443: nop
l444: nop
l445: ldmHIDB R13, {R0, R5, R8, R12}
l446: nop
l447: nop
l448: ldmDB R13!, {R0, R1, R4, R6, R7, R9, R10, R11, R12}
l449: nop
l450: ldmIA R13!, {R4, R7, R10, R14}
l451: nop
l452: nop
l453: ldmLSIB R13, {R3, R8, R9}
l454: ldmDA R13!, {R5, R6, R7, R8, R11, R14}
l455: ldmIA R13!, {R0, R2, R11}
l456: ldmIB R13!, {R7, R12}
l457: ldmIA R13!, {R4}
l458: ldmDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10}
l459: ldmEQDA R13, {R0, R1, R4, R6, R7, R10, R12, R14}
l460: ldmGEDB R13, {R2, R5, R6, R7, R9, R14}
l461: ldmIA R13!, {R0, R1, R10, R11}
l462: ldmDB R13!, {R2, R3, R5, R6, R8, R9, R11, R12}
l463: ldmVSIA R13, {R0, R5, R6, R8, R9, R11, R12}
l464: ldmIA R13!, {R2, R4, R6, R8, R10}
l465: ldmDA R13!, {R1, R2, R4, R5, R10, R11, R12, R14}
l466: ldmCSDB R13, {R2, R4, R10}
l467: ldmDB R13!, {R3, R10}
l468: ldmLSIA R13, {R4, R9, R12}
l469: nop
l470: ldmIA R13!, {R2, R3, R5, R8, R11, R12, R14}
l471: ldmDA R13!, {R4, R9}
l472: ldmDA R13, {R0}
l473: ldmDA R13!, {R0, R6, R8, R9, R12}
l474: ldmIB R13!, {R0, R2, R3, R5, R6, R7, R8, R9, R11, R14}
l475: ldmDA R13!, {R11}
l476: ldmGTDA R13, {R1, R5, R6, R8, R11, R14}
l477: ldmHIDB R13, {R2, R4, R5, R7, R11, R12}
l478: ldmDA R13!, {R7, R12, R14}
l479: ldmIB R13!, {R1, R5, R6, R8, R10, R12}
l480: nop
l481: ldmDB R13!, {R1, R2, R4, R5, R6, R7, R8, R10, R11, R12}
l482: ldmDA R13, {R0, R2, R8}
l483: ldmIB R13!, {R7}
l484: ldmIA R13!, {R4, R5, R6, R7, R8, R9, R10, R14}
l485: ldmIA R13!, {R4, R14}
l486: nop
l487: nop
l488: nop
l489: nop
l490: nop
l491: ldmIB R13, {R5}
l492: ldmIA R13!, {R5}
l493: nop
l494: nop
l495: ldmDB R13!, {R0, R4, R5, R7, R8, R10, R12, R14}
l496: ldmIA R13!, {R2, R6}
l497: ldmIA R13!, {R2}
l498: ldmDA R13, {R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l499: ldmIB R13!, {R0, R3, R5, R8, R10}
l500: nop
l501: ldmDA R13!, {R3, R14}
l502: ldmDA R13!, {R0, R1, R2, R3, R5, R11, R12}
l503: ldmNEIA R13, {R0, R8, R10, R11}
l504: ldmDA R13!, {R1, R8, R9, R11, R14}
l505: ldmVSDA R13, {R7, R11}
l506: ldmDA R13!, {R6}
l507: nop
l508: ldmCSIB R13, {R9, R11}
l509: ldmIB R13!, {R1, R2, R3, R5, R7, R10, R14}
l510: ldmVCIA R13, {R1, R2, R3, R4, R14}
l511: ldmIB R13!, {R4, R6, R8, R9, R10, R14}
l512: ldmDB R13!, {R0, R1, R2, R3, R5, R8, R9, R10, R11, R12, R14}
l513: ldmDB R13!, {R0, R4, R11}
l514: nop
l515: nop
l516: nop
l517: nop
l518: ldmIA R13!, {R0, R5, R9}
l519: ldmDB R13!, {R1, R6}
l520: ldmDB R13, {R3}
l521: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l522: nop
l523: ldmDB R13!, {R1, R4, R9, R11}
l524: ldmNEIB R13, {R0, R1, R2, R5, R6, R9}
l525: ldmDB R13!, {R3, R7, R11, R14}
l526: ldmIB R13!, {R0, R4, R5, R10, R11}
l527: ldmIB R13, {R0, R3}
l528: ldmDB R13!, {R3, R5, R6, R7, R9, R10, R11, R14}
l529: ldmIA R13, {R0, R1, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l530: ldmDA R13!, {R6, R8, R12}
l531: ldmGTIB R13, {R1, R2, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l532: nop
l533: nop
l534: nop
l535: nop
l536: ldmIA R13!, {R1, R9}
l537: ldmDA R13!, {R9}
l538: ldmIB R13!, {R2, R3, R7, R9, R10, R11, R12}
l539: ldmIA R13!, {R1, R4, R5, R7, R14}
l540: ldmVCDA R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l541: ldmDB R13!, {R3}
l542: ldmDB R13!, {R3, R8}
l543: ldmIB R13!, {R2, R4, R5, R9, R11, R14}
l544: ldmDB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l545: ldmIA R13!, {R6, R7}
l546: ldmCSDA R13, {R2, R4, R14}
l547: ldmIB R13!, {R8}
l548: ldmDB R13, {R1, R5, R12}
l549: ldmIA R13!, {R1, R2, R3, R4, R12}
l550: nop
l551: ldmDB R13!, {R0, R3, R4, R6, R8, R9, R12, R14}
l552: nop
l553: ldmIA R13, {R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R14}
l554: ldmDB R13!, {R4, R7, R9, R11}
l555: nop
l556: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l557: nop
l558: ldmIA R13!, {R1, R6}
l559: ldmDA R13!, {R2, R5, R6, R7, R10, R12}
l560: nop
l561: ldmDA R13!, {R5, R12}
l562: nop
l563: nop
l564: ldmLTDB R13, {R0, R5, R6, R7, R11, R12}
l565: ldmIB R13!, {R3, R8, R9, R11}
l566: ldmDA R13, {R0, R1, R2, R4, R6, R7, R9, R10, R11, R12, R14}
l567: ldmIB R13!, {R1, R7, R10, R12, R14}
l568: nop
l569: nop
l570: nop
l571: nop
l572: nop
l573: ldmDA R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R10, R11, R12}
l574: nop
l575: ldmDA R13!, {R1, R6, R7, R9, R11}
l576: ldmIA R13!, {R0, R1, R3, R6, R7, R8, R9, R11}
l577: ldmNEIA R13, {R0, R3, R5, R7, R8, R10, R12, R14}
l578: ldmDA R13!, {R8, R10, R11, R14}
l579: ldmDA R13!, {R1, R5, R12}
l580: nop
l581: ldmVCIB R13, {R5, R8, R9, R11}
l582: ldmDA R13!, {R3}
l583: ldmIB R13!, {R6, R8, R9, R12, R14}
l584: nop
l585: ldmLTIA R13, {R3, R4, R5, R6, R7, R9, R11, R12, R14}
l586: ldmDA R13!, {R2, R6, R9, R11, R14}
l587: nop
l588: ldmGEIA R13, {R1}
l589: ldmCCIB R13, {R3, R6, R11, R12}
l590: nop
l591: nop
l592: ldmVCIB R13, {R4, R5, R7, R11}
l593: ldmIB R13!, {R0, R2, R3, R4, R5, R7, R8, R12, R14}
l594: ldmIB R13, {R7, R9}
l595: ldmDA R13!, {R4, R7}
l596: ldmIB R13!, {R1, R3, R4}
l597: ldmDB R13, {R4, R9, R11, R12}
l598: ldmIA R13, {R4, R5, R14}
l599: ldmIA R13!, {R1}
l600: ldmMIDA R13, {R8, R12}
l601: nop
l602: ldmIB R13!, {R2, R8, R11}
l603: ldmDA R13!, {R1, R2, R5, R6, R7, R8, R9, R11, R12, R14}
l604: ldmDB R13!, {R7, R8, R10}
l605: nop
l606: nop
l607: nop
l608: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R7, R10, R11, R12}
l609: ldmIB R13!, {R3}
l610: ldmDB R13!, {R0, R1, R4, R5, R8, R9, R10, R11, R12}
l611: ldmDB R13!, {R0, R6, R9}
l612: ldmGEIB R13, {R5, R7, R8}
l613: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l614: ldmIB R13!, {R2, R8, R9}
l615: ldmEQDA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l616: ldmDB R13!, {R1}
l617: ldmIB R13!, {R2}
l618: ldmDA R13, {R12}
l619: ldmDB R13!, {R3}
l620: ldmLTDA R13, {R2, R8, R9, R10, R11, R12}
l621: ldmCSIA R13, {R2, R6}
l622: ldmDA R13!, {R1, R2, R4, R14}
l623: ldmDA R13!, {R3, R4, R10, R11}
l624: ldmDB R13!, {R1, R4, R8}
l625: ldmDA R13!, {R5}
l626: nop
l627: ldmIB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R11, R14}
l628: ldmIA R13!, {R3}
l629: ldmDB R13!, {R0, R6, R7, R9, R11}
l630: ldmLTDA R13, {R4, R6, R9, R14}
l631: ldmNEDA R13, {R0, R3, R4, R6, R8, R9, R12, R14}
l632: nop
l633: ldmDA R13, {R1, R2, R3, R4, R9, R12, R14}
l634: ldmDA R13!, {R1, R3, R10}
l635: ldmNEDB R13, {R1, R5, R8, R9, R10, R14}
l636: ldmDA R13!, {R3, R6, R8, R14}
l637: ldmDB R13!, {R14}
l638: ldmIA R13!, {R0, R7, R9, R11, R14}
l639: ldmDA R13, {R8}
l640: ldmIB R13!, {R2, R4, R9, R10, R12}
l641: ldmDB R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R11, R12}
l642: ldmCSDB R13, {R6}
l643: ldmLSIA R13, {R1, R3, R6}
l644: nop
l645: ldmLTDA R13, {R4}
l646: nop
l647: ldmIA R13!, {R3, R6, R8, R9, R10, R12}
l648: ldmIA R13!, {R4, R8, R14}
l649: ldmDB R13!, {R2, R3, R4, R7, R9, R10}
l650: ldmIB R13!, {R9}
l651: ldmIA R13!, {R0, R4, R5, R6, R12}
l652: ldmDB R13!, {R0, R2, R3, R4, R8, R11, R12}
l653: ldmIA R13!, {R6}
l654: ldmIA R13, {R2, R7, R8, R11}
l655: ldmCSDB R13, {R5, R11}
l656: ldmIA R13!, {R0, R1, R2, R6, R7, R8, R9, R10, R11, R12, R14}
l657: ldmDB R13!, {R3, R10, R12, R14}
l658: ldmIA R13!, {R0, R4, R10, R12, R14}
l659: nop
l660: ldmCCDB R13, {R2, R3, R4, R5, R14}
l661: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12}
l662: ldmDA R13!, {R0, R12}
l663: ldmIB R13!, {R0, R4, R6, R8, R9, R10, R11, R12, R14}
l664: ldmIB R13!, {R1, R2, R3, R11}
l665: ldmCCDB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l666: ldmIA R13!, {R1}
l667: ldmGEDA R13, {R0, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l668: nop
l669: ldmDB R13!, {R0, R12}
l670: ldmVSIB R13, {R9}
l671: nop
l672: ldmIA R13!, {R11}
l673: nop
l674: nop
l675: ldmLEDB R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R14}
l676: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R12, R14}
l677: ldmIB R13!, {R2, R4, R5, R6, R8, R9, R14}
l678: ldmIA R13!, {R12}
l679: ldmIA R13!, {R0, R7}
l680: ldmIB R13!, {R1, R14}
l681: nop
l682: ldmDB R13, {R0, R1, R4, R6, R7, R8, R10, R11, R12, R14}
l683: ldmDB R13!, {R1, R2, R3, R4, R5, R8, R9, R14}
l684: ldmDA R13!, {R4, R7, R10}
l685: ldmIA R13!, {R0, R1, R2, R3, R4, R10, R11}
l686: nop
l687: ldmIB R13, {R0}
l688: ldmDB R13!, {R1, R3, R5, R14}
l689: ldmVSIA R13, {R0, R2, R4, R6, R10}
l690: nop
l691: ldmDA R13!, {R14}
l692: ldmDB R13!, {R1, R3, R9, R14}
l693: ldmLSIA R13, {R2, R14}
l694: ldmIA R13, {R0, R3, R4, R9, R10, R11, R12, R14}
l695: ldmIB R13!, {R1, R5}
l696: ldmDA R13!, {R9}
l697: ldmIA R13!, {R1, R3, R5, R6, R8, R9, R10, R11, R12, R14}
l698: nop
l699: ldmIB R13!, {R6}
l700: nop
l701: ldmVSDA R13, {R1, R6, R9, R14}
l702: ldmDA R13!, {R0, R2, R3, R4, R5, R7, R8, R10, R14}
l703: ldmIA R13!, {R3, R7}
l704: ldmGEIA R13, {R0, R3, R4, R6, R14}
l705: ldmLEIA R13, {R5}
l706: ldmIB R13, {R6}
l707: ldmIA R13!, {R11, R12}
l708: nop
l709: ldmDA R13!, {R10}
l710: ldmLTDA R13, {R6, R7, R11}
l711: ldmDA R13!, {R3, R5, R6, R7, R10}
l712: ldmIA R13!, {R0, R1, R6, R8, R9, R10, R11}
l713: ldmDB R13!, {R2, R3, R9, R14}
l714: nop
l715: ldmIB R13!, {R1, R8, R9, R10}
l716: ldmIB R13!, {R10}
l717: ldmLSIA R13, {R3, R12, R14}
l718: ldmIA R13!, {R2}
l719: ldmIB R13!, {R3}
l720: ldmDA R13!, {R1, R2, R5, R6, R8, R11}
l721: ldmDA R13!, {R2, R3, R10, R11, R12, R14}
l722: ldmLSDB R13, {R3}
l723: nop
l724: ldmDB R13!, {R6, R9}
l725: nop
l726: ldmIA R13!, {R2, R4, R8, R11}
l727: ldmDB R13!, {R10}
l728: ldmIB R13!, {R2, R4, R5, R10, R11, R12, R14}
l729: ldmDB R13!, {R2, R3, R4, R5, R9, R10, R14}
l730: ldmDA R13!, {R12}
l731: ldmIA R13!, {R0, R2, R3, R4, R7, R8, R11, R12, R14}
l732: ldmIB R13!, {R3, R6, R9}
l733: nop
l734: ldmDB R13!, {R0, R1, R2, R4, R5, R6, R7, R9, R10, R11, R14}
l735: ldmIB R13!, {R9, R12, R14}
l736: ldmCSIA R13, {R0, R9, R14}
l737: ldmIB R13!, {R1, R2, R7, R8, R9, R10, R11, R12, R14}
l738: nop
l739: ldmIB R13!, {R14}
l740: ldmDB R13!, {R0, R3, R4, R5, R9, R11}
l741: ldmVSIA R13, {R0, R3, R4, R6, R7}
l742: ldmGTDA R13, {R1, R2, R4, R11, R12}
l743: ldmIA R13!, {R5, R9, R11, R14}
l744: ldmDA R13!, {R2, R8, R10, R11}
l745: ldmNEIB R13, {R0, R8}
l746: ldmDA R13!, {R1, R4, R6, R7, R8, R9, R10}
l747: ldmNEDA R13, {R5, R14}
l748: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10}
l749: ldmIA R13!, {R5, R14}
l750: ldmDB R13!, {R2, R3, R4, R6, R7, R9, R10, R11, R12, R14}
l751: ldmIB R13!, {R3, R6, R7}
l752: ldmEQIB R13, {R2, R7, R9, R12, R14}
l753: nop
l754: ldmMIIB R13, {R0, R1, R5, R7, R10, R14}
l755: ldmIA R13!, {R1, R3, R5, R8, R10, R12, R14}
l756: ldmIA R13!, {R12}
l757: ldmDA R13!, {R1, R2, R3, R4, R5, R7, R8, R10, R11, R12}
l758: nop
l759: ldmIB R13!, {R2, R3, R8}
l760: ldmIB R13!, {R0, R12}
l761: ldmIB R13!, {R8}
l762: ldmDA R13, {R1, R4, R8, R11, R14}
l763: ldmIB R13!, {R5}
l764: ldmDB R13!, {R0, R2, R3, R4, R6, R7, R9, R10, R11, R12, R14}
l765: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l766: ldmIB R13, {R3, R10}
l767: ldmIB R13!, {R6}
l768: nop
l769: ldmDA R13!, {R2, R5, R6, R7, R12}
l770: ldmPLDA R13, {R4, R6, R12}
l771: ldmIA R13!, {R3, R5, R8, R9, R14}
l772: nop
l773: ldmDA R13!, {R14}
l774: ldmIA R13, {R11}
l775: ldmDA R13!, {R5, R8, R9, R10, R11}
l776: ldmDB R13!, {R11}
l777: ldmIB R13!, {R2, R4, R6, R8, R10, R12}
l778: ldmLSDB R13, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l779: ldmDB R13!, {R1, R2, R3, R4, R6, R7, R9, R10, R11, R12, R14}
l780: nop
l781: ldmIB R13!, {R12}
l782: ldmDA R13!, {R2, R9, R11, R12}
l783: ldmIA R13!, {R7}
l784: nop
l785: ldmIB R13!, {R14}
l786: ldmMIDA R13, {R8, R11}
l787: ldmDB R13!, {R12}
l788: nop
l789: nop
l790: ldmIB R13, {R0, R4, R6, R8, R9, R12, R14}
l791: ldmIB R13!, {R1, R2, R4, R5, R9, R11, R14}
l792: ldmVCIB R13, {R3, R5, R9}
l793: ldmDB R13, {R2, R6, R7, R8, R11, R12}
l794: ldmLSDB R13, {R1, R3}
l795: ldmDA R13!, {R5, R7, R10}
l796: nop
l797: ldmVSDA R13, {R0, R2, R6, R10}
l798: nop
l799: ldmDB R13!, {R7, R9, R10, R14}
l800: ldmCSIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l801: ldmIA R13!, {R1, R2, R3, R4, R6, R7, R9, R10, R11}
l802: nop
l803: ldmDA R13!, {R4}
l804: ldmDB R13!, {R3, R4}
l805: ldmEQIA R13, {R1, R10, R12}
l806: ldmIB R13, {R0, R4, R6, R8, R10, R14}
l807: ldmDB R13!, {R0, R7, R11}
l808: ldmDB R13, {R1, R3, R12}
l809: ldmIB R13!, {R0, R2, R3, R5, R6, R7, R8, R10, R11, R12, R14}
l810: nop
l811: ldmIB R13!, {R2}
l812: nop
l813: nop
l814: ldmDA R13!, {R0, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l815: nop
l816: ldmIB R13, {R1, R4, R6, R10, R12}
l817: ldmIB R13!, {R0, R1, R5, R6, R7, R8, R9, R10, R12, R14}
l818: ldmCCDA R13, {R2, R5, R8, R9, R12}
l819: ldmDB R13, {R0, R1, R4}
l820: ldmIA R13!, {R12}
l821: nop
l822: nop
l823: ldmDB R13!, {R7, R9, R10, R12, R14}
l824: ldmDB R13, {R0, R1, R3, R4, R5, R11, R14}
l825: ldmMIDA R13, {R0, R1, R2, R3, R4, R5, R7, R10, R11, R12}
l826: ldmDB R13!, {R0, R1, R2, R4, R5, R7, R8, R9, R11, R12}
l827: nop
l828: ldmIB R13!, {R0, R2, R3, R4, R14}
l829: ldmDB R13, {R6}
l830: ldmCCIB R13, {R1, R3, R4, R6, R8, R9, R10, R11, R12}
l831: ldmVSIA R13, {R0, R2, R3, R8}
l832: ldmIA R13!, {R0, R4, R5, R6, R7, R9, R10, R11, R14}
l833: ldmIA R13!, {R5}
l834: ldmPLDA R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l835: nop
l836: ldmIB R13!, {R1}
l837: ldmDB R13!, {R10}
l838: ldmIA R13!, {R14}
l839: ldmMIDA R13, {R0, R9}
l840: nop
l841: ldmDB R13!, {R4, R7, R11}
l842: ldmGEIB R13, {R0, R2, R11}
l843: ldmIB R13!, {R4, R6, R7}
l844: nop
l845: nop
l846: nop
l847: nop
l848: ldmMIDB R13, {R2, R4, R5, R8, R10, R12}
l849: nop
l850: nop
l851: ldmDB R13!, {R0, R3, R4, R5, R6, R7, R9, R10, R14}
l852: ldmIB R13!, {R1, R3, R4, R11, R12}
l853: nop
l854: nop
l855: ldmDA R13!, {R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l856: ldmDB R13!, {R3}
l857: ldmIB R13!, {R0, R2, R4, R6, R7, R8, R11}
l858: nop
l859: ldmDA R13!, {R0, R5, R6, R7, R8}
l860: ldmLTDB R13, {R0}
l861: ldmDA R13!, {R9}
l862: nop
l863: ldmLTIB R13, {R1, R2, R3, R6, R8, R11}
l864: nop
l865: ldmCSIB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l866: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l867: ldmIA R13, {R3}
l868: ldmIB R13!, {R0}
l869: ldmDA R13!, {R7, R11, R12, R14}
l870: ldmIA R13!, {R1, R8, R10, R14}
l871: ldmDA R13, {R4}
l872: nop
l873: ldmDA R13!, {R0, R1, R3, R5, R8, R9, R12}
l874: ldmPLIA R13, {R7, R9, R10, R11, R12}
l875: ldmIA R13!, {R0}
l876: ldmDB R13!, {R1, R2, R3, R4, R12, R14}
l877: ldmDB R13!, {R5, R11}
l878: nop
l879: ldmDB R13!, {R6}
l880: ldmIB R13!, {R1, R2, R3, R4, R7, R8, R9, R10, R12}
l881: ldmDA R13!, {R0, R6, R7, R9, R11, R12}
l882: ldmIA R13!, {R0, R2, R3, R4, R7, R8, R9, R10, R11, R12, R14}
l883: ldmGEDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l884: ldmHIDA R13, {R3, R4, R14}
l885: nop
l886: ldmIA R13!, {R4, R11}
l887: nop
l888: nop
l889: nop
l890: ldmVSDA R13, {R4}
l891: nop
l892: nop
l893: nop
l894: nop
l895: nop
l896: ldmDB R13!, {R2, R9, R11}
l897: ldmDB R13!, {R0, R4, R12}
l898: ldmDB R13!, {R14}
l899: ldmIB R13!, {R5, R7, R10, R14}
l900: ldmIA R13!, {R2, R5}
l901: nop
l902: ldmCSIA R13, {R9}
l903: ldmIA R13!, {R1}
l904: nop
l905: ldmDB R13!, {R3, R4, R5, R6, R7, R8, R10}
l906: ldmIA R13!, {R3}
l907: ldmIA R13!, {R0, R2, R8, R10, R14}
l908: ldmIA R13!, {R11}
l909: ldmDB R13!, {R0, R1, R3, R5, R8, R9, R10, R12}
l910: nop
l911: ldmIB R13, {R0, R2, R4, R6, R7, R8, R10, R12}
l912: ldmIA R13!, {R0, R1, R2, R3, R5, R12, R14}
l913: ldmLEDA R13, {R8, R9, R10, R11, R12}
l914: ldmIB R13!, {R11}
l915: nop
l916: nop
l917: nop
l918: ldmLSDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l919: nop
l920: nop
l921: ldmDA R13!, {R0, R2, R4, R5, R7, R9, R10, R11}
l922: ldmIB R13, {R1, R3, R6, R7}
l923: ldmDB R13, {R3, R4, R5, R11, R12}
l924: ldmDA R13!, {R1, R2, R6, R8, R10}
l925: ldmHIIB R13, {R0, R2, R3, R4, R5, R6, R7, R9, R10, R12}
l926: ldmMIIA R13, {R1, R3, R5, R7, R8, R10, R11, R12, R14}
l927: ldmIA R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l928: ldmDA R13!, {R0, R3, R4, R5, R8, R9, R11, R12, R14}
l929: ldmIA R13, {R5, R14}
l930: ldmDB R13, {R1, R4, R5, R8}
l931: ldmIA R13!, {R1, R2, R3, R4, R5, R8, R9, R10, R14}
l932: nop
l933: nop
l934: nop
l935: nop
l936: ldmDA R13, {R2, R3, R4, R5, R6, R9, R14}
l937: ldmDA R13!, {R1, R3, R7, R8, R12}
l938: ldmIB R13!, {R3, R5, R11, R12}
l939: ldmDB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R10, R11, R12}
l940: ldmDB R13, {R2}
l941: ldmDB R13, {R0, R12}
l942: ldmIB R13!, {R1, R5, R6, R8, R10, R11}
l943: ldmDB R13!, {R1, R4, R7, R9, R10, R11, R12}
l944: nop
l945: nop
l946: ldmIA R13!, {R1, R2, R3, R5, R8, R11, R12}
l947: ldmIA R13!, {R11}
l948: ldmIA R13!, {R2, R4, R10, R12}
l949: nop
l950: nop
l951: ldmDA R13!, {R2, R3, R4, R6, R7, R8, R9, R10, R14}
l952: ldmIB R13!, {R3, R5, R6, R7, R8, R9, R10, R12, R14}
l953: nop
l954: ldmDA R13!, {R2, R10}
l955: ldmIA R13!, {R1, R2}
l956: ldmCSIA R13, {R0}
l957: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l958: ldmIB R13, {R0, R1, R4, R6, R10, R11, R12}
l959: ldmIA R13, {R0, R2, R3, R7}
l960: nop
l961: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l962: nop
l963: ldmDB R13!, {R2}
l964: ldmIA R13!, {R5, R7, R10}
l965: nop
l966: nop
l967: ldmDA R13!, {R0, R2, R4, R7, R10, R11, R12}
l968: ldmLTIA R13, {R0, R3, R4, R6}
l969: ldmDB R13!, {R4, R5, R6, R7, R8, R9, R11, R12}
l970: nop
l971: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l972: ldmIB R13!, {R6, R12}
l973: ldmDB R13!, {R2, R7, R12}
l974: ldmDA R13!, {R1, R2, R3, R4, R6, R8, R9, R10, R11, R12, R14}
l975: ldmDA R13!, {R5}
l976: ldmDA R13!, {R14}
l977: nop
l978: ldmIA R13!, {R1, R2, R3, R4, R5, R7, R8, R9, R11, R12, R14}
l979: ldmIB R13!, {R0, R7, R10}
l980: nop
l981: ldmIA R13!, {R8, R14}
l982: ldmDA R13!, {R0, R2, R3, R5, R6, R7, R8, R12, R14}
l983: ldmDB R13!, {R1, R7}
l984: ldmPLIB R13, {R1, R7, R12, R14}
l985: ldmIA R13, {R2, R4, R5, R7, R11, R14}
l986: ldmIB R13!, {R1, R2, R6, R9, R14}
l987: nop
l988: ldmDB R13!, {R7}
l989: ldmNEIA R13, {R2, R4, R6, R10, R11}
l990: ldmDA R13!, {R2, R3, R5, R6, R7, R9, R10, R11, R14}
l991: nop
l992: nop
l993: nop
l994: ldmIA R13, {R3, R4, R6, R8, R10, R11, R12}
l995: ldmIB R13!, {R0, R2, R5, R6, R8, R12}
l996: ldmIB R13!, {R1, R3, R4, R5, R6, R7, R9, R10, R14}
l997: ldmDA R13, {R1, R3, R4, R5, R6, R7, R8, R10, R11, R12}
l998: nop
l999: ldmDA R13, {R1, R2, R8}
l1000: nop
end: b end

