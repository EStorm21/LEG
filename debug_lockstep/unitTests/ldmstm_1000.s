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
val1: .word 441083264
next1:ldr R2, val2
b next2
val2: .word 1148849809
next2:ldr R3, val3
b next3
val3: .word 935398079
next3:ldr R4, val4
b next4
val4: .word 590128030
next4:ldr R5, val5
b next5
val5: .word 2428343838
next5:ldr R6, val6
b next6
val6: .word 1171287458
next6:ldr R7, val7
b next7
val7: .word 1140970264
next7:ldr R8, val8
b next8
val8: .word 2116150654
next8:ldr R9, val9
b next9
val9: .word 1460156927
next9:ldr R10, val10
b next10
val10: .word 1845839475
next10:ldr R11, val11
b next11
val11: .word 2231505634
next11:ldr R12, val12
b next12
val12: .word 3636290105
next12:ldr R14, val14
b next14
val14: .word 4203905396

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3510808603
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1442452088
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 768965710
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2128839542
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 301606549
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1261565691
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2628750579
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 606668564
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3965785581
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3211768420
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2998414924
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3422671119
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1599386436
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3130605049
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1906872734
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 225470043
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 4071848415
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1496507237
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 516779531
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3131161566
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 4038032198
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldmDB R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l2: nop
l3: ldmDB R13!, {R2, R3, R4, R5, R10, R14}
l4: stmIA R13!, {R10}
l5: stmIB R13!, {R2, R3, R5, R9, R12, R14}
l6: nop
l7: ldmIA R13!, {R4, R10}
l8: ldmLSDB R13, {R3, R5, R7, R9, R11, R12, R14}
l9: ldmCCIA R13, {R12}
l10: stmIB R13!, {R0}
l11: stmIB R13!, {R1}
l12: stmIB R13!, {R13}
l13: stmDB R13, {R7}
l14: ldmEQIA R13, {R4, R5, R8}
l15: ldmDB R13, {R0, R1, R2, R4, R5, R7, R8, R14}
l16: nop
l17: ldmDA R13!, {R0, R2, R5, R6, R7, R8, R9, R10, R12}
l18: ldmIB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l19: ldmDB R13!, {R0, R1, R2, R3, R7, R8, R9, R10, R11, R14}
l20: nop
l21: stmIA R13!, {R13}
l22: nop
l23: ldmVCIA R13, {R1, R6, R8, R9, R12}
l24: stmDA R13!, {R0, R7, R11}
l25: stmIA R13!, {R13, R15}
l26: stmCSDB R13, {R4, R15}
l27: ldmIB R13!, {R2, R7, R8, R12}
l28: ldmDB R13!, {R0, R2, R10, R11}
l29: ldmIA R13!, {R2, R3, R8, R14}
l30: ldmIB R13!, {R0, R1, R4, R5, R11, R12}
l31: stmDB R13!, {R13, R14, R15}
l32: nop
l33: stmDB R13!, {R0, R2, R10, R11, R14}
l34: nop
l35: stmIB R13!, {R13, R15}
l36: stmDA R13!, {R13}
l37: stmVCIB R13, {R4, R5, R9}
l38: stmIB R13!, {R13, R15}
l39: ldmIA R13, {R1, R4, R5, R6, R8, R10}
l40: nop
l41: ldmIA R13!, {R1, R3, R10, R14}
l42: stmGEDA R13, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R12, R13, R14, R15}
l43: ldmIA R13!, {R14}
l44: nop
l45: ldmIB R13!, {R0}
l46: nop
l47: nop
l48: stmDA R13!, {R0, R2, R8, R10}
l49: stmDB R13!, {R0, R1, R2, R4, R5, R7, R8, R9, R10, R11, R14, R15}
l50: nop
l51: nop
l52: stmIB R13!, {R1, R8, R11}
l53: nop
l54: nop
l55: stmDB R13!, {R7, R9, R11}
l56: nop
l57: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l58: ldmDB R13!, {R2, R3, R7, R10, R12, R14}
l59: ldmDA R13!, {R2, R3, R6, R8, R11, R12, R14}
l60: nop
l61: ldmIB R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l62: nop
l63: nop
l64: ldmDB R13!, {R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l65: ldmDB R13!, {R4}
l66: stmIA R13!, {R13, R15}
l67: stmIB R13!, {R3, R10}
l68: stmLTDB R13, {R9}
l69: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l70: stmDA R13!, {R13, R14, R15}
l71: ldmIA R13!, {R4, R6}
l72: ldmDA R13!, {R3, R7, R8, R9}
l73: ldmIA R13!, {R12}
l74: ldmGTIA R13, {R0, R12, R14}
l75: ldmPLDB R13, {R1, R6, R10, R11, R12}
l76: stmDA R13!, {R13, R14, R15}
l77: stmDB R13!, {R1, R2, R3, R5, R8, R9, R15}
l78: stmIA R13!, {R0, R1, R7, R10, R12}
l79: ldmDB R13!, {R1, R2, R10, R12}
l80: stmDB R13!, {R13}
l81: ldmIA R13!, {R1, R6}
l82: stmDB R13!, {R13}
l83: stmIB R13!, {R1, R8, R10, R12}
l84: stmIA R13!, {R2, R5, R9, R10}
l85: stmIA R13, {R5, R9, R10, R13}
l86: nop
l87: stmIB R13!, {R1, R6, R11, R14}
l88: stmDB R13!, {R4, R8, R14, R15}
l89: nop
l90: stmDA R13, {R11}
l91: ldmDA R13!, {R1, R2, R3, R4, R5, R6, R7, R11, R12, R14}
l92: nop
l93: nop
l94: stmDB R13!, {R11}
l95: stmNEIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R13, R14, R15}
l96: nop
l97: nop
l98: ldmIA R13!, {R0, R1, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l99: ldmIB R13!, {R5, R10, R12}
l100: ldmDA R13!, {R1, R4, R9, R10, R12, R14}
l101: ldmDB R13!, {R1, R2, R3, R6, R14}
l102: stmPLIB R13, {R0, R7, R9, R12, R15}
l103: nop
l104: nop
l105: stmIA R13!, {R13, R14}
l106: stmCCIA R13, {R0, R9}
l107: stmDB R13!, {R13}
l108: stmIA R13!, {R3, R4, R7, R15}
l109: stmDB R13!, {R13}
l110: ldmDB R13!, {R0, R3, R8, R10, R12, R14}
l111: ldmIB R13!, {R0, R5, R6, R8, R10, R11, R14}
l112: ldmDB R13!, {R2, R3, R5, R6, R8, R11, R14}
l113: stmIA R13!, {R13, R14}
l114: stmIB R13!, {R8}
l115: ldmIA R13, {R0, R1, R2, R3, R7, R8, R9, R10, R11, R14}
l116: ldmDA R13, {R4, R9, R10, R11, R12}
l117: ldmDA R13, {R3, R4}
l118: stmIA R13!, {R3, R8}
l119: stmIA R13!, {R13}
l120: nop
l121: stmDB R13!, {R10, R14}
l122: nop
l123: ldmDB R13!, {R14}
l124: stmIA R13!, {R13, R14}
l125: nop
l126: stmNEIB R13, {R1, R4, R8, R9, R11, R12}
l127: ldmGEDB R13, {R3}
l128: stmIA R13!, {R12, R15}
l129: stmDA R13, {R1, R4, R5, R6, R7, R12, R13}
l130: stmDB R13, {R0, R1, R7, R10, R11, R12}
l131: ldmDA R13!, {R2, R3, R5, R6}
l132: nop
l133: stmDA R13, {R1, R6, R7}
l134: stmIA R13, {R1, R5, R7, R9, R10}
l135: stmDA R13!, {R0, R4, R5, R11, R15}
l136: nop
l137: nop
l138: ldmIA R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l139: stmDB R13!, {R13, R14, R15}
l140: ldmIA R13!, {R1, R3, R5, R7, R8}
l141: stmDA R13, {R8}
l142: nop
l143: stmIA R13!, {R11}
l144: nop
l145: ldmDB R13!, {R5, R9}
l146: stmDB R13!, {R13, R15}
l147: stmIA R13, {R0, R12, R13}
l148: stmDB R13, {R0, R1, R2, R4, R8, R10, R12, R13, R14, R15}
l149: stmIB R13!, {R4, R6}
l150: ldmIA R13!, {R12}
l151: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l152: ldmDA R13!, {R14}
l153: nop
l154: nop
l155: nop
l156: nop
l157: stmDA R13, {R1, R13, R14}
l158: stmIA R13!, {R10}
l159: ldmIB R13!, {R1}
l160: ldmDB R13!, {R0, R6}
l161: stmLSDB R13, {R0, R8}
l162: stmIB R13!, {R5, R6}
l163: ldmDA R13!, {R0, R1, R3, R5, R7, R8, R10, R11, R12, R14}
l164: ldmPLIA R13, {R0, R1, R2, R4, R5, R6, R8, R10}
l165: nop
l166: stmIA R13!, {R13, R14, R15}
l167: ldmDB R13!, {R2, R3, R5, R6, R8, R9, R10, R11, R14}
l168: ldmIB R13!, {R0, R2, R5, R6, R8, R11, R12, R14}
l169: ldmEQDB R13, {R1, R4, R9, R10, R11}
l170: stmIB R13!, {R13, R14, R15}
l171: stmIB R13!, {R3, R4, R15}
l172: stmDB R13!, {R0, R8, R15}
l173: stmIB R13!, {R3}
l174: nop
l175: ldmHIIB R13, {R2, R3, R4}
l176: ldmIB R13!, {R0, R5, R14}
l177: stmDA R13!, {R0, R8}
l178: nop
l179: ldmDB R13!, {R0, R3, R5, R7, R8, R9, R10}
l180: ldmIA R13, {R0, R2, R3, R6, R7, R8, R11, R12}
l181: ldmEQDA R13, {R4}
l182: ldmIB R13!, {R3, R6, R9, R10, R14}
l183: ldmIA R13!, {R5, R7, R11, R14}
l184: ldmIB R13!, {R1}
l185: nop
l186: nop
l187: stmDB R13!, {R1, R4, R7, R8, R9, R10, R12}
l188: stmIA R13!, {R6, R10, R12}
l189: nop
l190: stmIA R13!, {R9}
l191: stmLEIA R13, {R10, R11}
l192: nop
l193: stmDB R13!, {R1, R3, R9}
l194: ldmNEIA R13, {R0}
l195: stmVCIA R13, {R1, R15}
l196: stmDA R13, {R0, R4, R5, R11, R13, R14, R15}
l197: nop
l198: ldmCSIA R13, {R1, R3, R10, R11}
l199: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R10}
l200: ldmIA R13!, {R7, R11, R12}
l201: ldmIA R13!, {R3, R4, R6, R12}
l202: ldmIA R13!, {R2, R3, R11, R12}
l203: ldmIB R13!, {R0, R1, R9}
l204: ldmDB R13!, {R3, R8, R9, R10, R12}
l205: ldmIB R13!, {R1, R5, R11}
l206: stmIB R13!, {R5, R8}
l207: ldmDA R13!, {R0, R4, R5, R6, R8, R9, R10, R12}
l208: ldmLSIA R13, {R1, R2, R4, R7, R8, R9, R10, R11, R14}
l209: stmIB R13!, {R1}
l210: ldmIB R13!, {R1, R3, R5, R6, R8, R14}
l211: stmIA R13!, {R7, R8}
l212: nop
l213: nop
l214: nop
l215: nop
l216: nop
l217: ldmHIDA R13, {R0, R4, R6, R7, R9, R11, R12}
l218: nop
l219: nop
l220: ldmDA R13!, {R0, R1, R2, R5, R7, R9, R12, R14}
l221: ldmDA R13!, {R1, R10, R11}
l222: ldmVSIA R13, {R3, R10, R14}
l223: ldmIB R13!, {R0, R1, R2, R3, R7, R8, R9, R10, R12, R14}
l224: stmDB R13!, {R13}
l225: stmDA R13!, {R0, R2, R3, R4, R7, R10, R11, R12, R14, R15}
l226: stmDB R13!, {R10, R11}
l227: ldmIB R13!, {R6, R10}
l228: stmIA R13!, {R1, R4, R5, R8, R11, R12, R14, R15}
l229: stmIB R13, {R4, R5}
l230: stmEQDA R13, {R0, R1, R5, R6, R7, R8, R9, R10, R11, R13, R15}
l231: ldmVSIA R13, {R3, R6, R7}
l232: ldmDB R13!, {R6, R8, R11}
l233: ldmVCIB R13, {R1, R3, R5, R8, R9}
l234: nop
l235: stmCSDB R13, {R1, R2, R3, R4, R12, R15}
l236: ldmDA R13, {R6, R10}
l237: ldmGEIA R13, {R3}
l238: stmIB R13!, {R0, R2, R8, R14}
l239: ldmDA R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l240: ldmGTIB R13, {R1, R3, R7, R9, R12, R14}
l241: nop
l242: stmIB R13!, {R13, R14, R15}
l243: ldmIA R13!, {R0, R5, R8, R10}
l244: ldmIA R13!, {R2, R5, R7, R8, R10, R11, R12}
l245: stmIB R13!, {R14}
l246: ldmLSDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12}
l247: stmDA R13!, {R9, R12}
l248: stmIB R13!, {R13}
l249: ldmLEIA R13, {R3, R7}
l250: ldmDB R13!, {R1, R2, R3, R5, R6, R8, R9, R10, R11, R12, R14}
l251: stmIB R13!, {R6, R8}
l252: nop
l253: stmDA R13!, {R7, R11, R12}
l254: ldmCCDB R13, {R8}
l255: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l256: stmDB R13!, {R13}
l257: nop
l258: stmDA R13!, {R0, R2, R5, R6, R7, R9, R12}
l259: ldmGTIB R13, {R0, R1, R3, R4, R5, R6, R7}
l260: stmDA R13!, {R13}
l261: ldmIB R13!, {R0, R2, R3, R4, R5, R6, R8, R10, R12}
l262: ldmIB R13!, {R5}
l263: stmDA R13!, {R1, R9, R12, R14}
l264: stmIB R13!, {R2, R14, R15}
l265: stmDA R13!, {R13, R14, R15}
l266: stmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R14}
l267: ldmIA R13!, {R1, R2, R4, R6, R8, R9, R12, R14}
l268: ldmPLIA R13, {R5}
l269: stmIA R13!, {R10, R11}
l270: stmVSDA R13, {R7, R8}
l271: stmIA R13!, {R0, R7}
l272: nop
l273: ldmIB R13!, {R6}
l274: nop
l275: ldmIB R13!, {R14}
l276: nop
l277: nop
l278: ldmDA R13!, {R0, R1, R4, R11}
l279: ldmDA R13!, {R5}
l280: ldmGEIB R13, {R6, R7, R9, R12}
l281: ldmIA R13!, {R1, R3, R6, R9, R12}
l282: nop
l283: nop
l284: stmDA R13!, {R0, R3, R5, R7, R8, R9, R10, R11, R12, R15}
l285: stmIB R13!, {R13, R14}
l286: ldmIB R13, {R3, R4, R5, R6}
l287: stmIA R13!, {R5}
l288: nop
l289: ldmIB R13!, {R1, R4, R6, R7, R8, R9}
l290: stmDA R13!, {R2, R3, R5, R6, R9, R10, R11, R12}
l291: stmDB R13!, {R13, R14, R15}
l292: ldmDB R13!, {R5, R10}
l293: nop
l294: nop
l295: ldmIB R13, {R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l296: stmDA R13!, {R15}
l297: nop
l298: nop
l299: ldmHIDB R13, {R1}
l300: stmIB R13!, {R13, R14, R15}
l301: stmIB R13!, {R1, R2, R4, R11}
l302: stmIB R13, {R3, R4, R7}
l303: stmDB R13!, {R3, R4, R5, R8, R14, R15}
l304: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l305: ldmDA R13!, {R3, R5, R8, R12}
l306: stmDB R13, {R0, R1, R2, R4, R5, R7, R8, R10, R11, R12, R14}
l307: ldmDA R13!, {R0, R1, R3, R4, R7, R10, R11, R12}
l308: stmLEIB R13, {R0, R3, R9, R14}
l309: ldmMIIA R13, {R0, R9, R10, R11}
l310: stmCCIA R13, {R12}
l311: ldmGEDB R13, {R4, R5}
l312: stmMIDA R13, {R5, R7, R11}
l313: stmIB R13!, {R1, R2, R4, R7, R15}
l314: stmDB R13!, {R12}
l315: stmDB R13!, {R13}
l316: stmDB R13!, {R0, R9, R10, R11}
l317: ldmDB R13!, {R12}
l318: stmDB R13!, {R0}
l319: nop
l320: nop
l321: nop
l322: nop
l323: nop
l324: stmIB R13!, {R0, R1, R4, R6, R7, R10, R12}
l325: ldmIB R13!, {R1, R5, R9, R11}
l326: ldmIA R13!, {R1, R4}
l327: stmIA R13!, {R4, R15}
l328: stmDB R13, {R1, R10, R13}
l329: stmEQIA R13, {R7}
l330: stmDB R13!, {R3, R6, R7, R8, R12, R14, R15}
l331: ldmIB R13!, {R9}
l332: nop
l333: ldmDB R13!, {R1, R2, R7, R10, R12, R14}
l334: ldmIA R13!, {R1, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l335: stmDA R13!, {R1, R2, R7, R9, R10}
l336: ldmLSDA R13, {R2, R3, R4, R9, R12, R14}
l337: ldmDA R13, {R2, R3, R4, R5, R6, R8, R11, R12}
l338: stmCCDB R13, {R1, R2, R6, R7, R8, R10, R12, R15}
l339: ldmDB R13!, {R0, R2, R3, R4, R7, R10}
l340: ldmLSIB R13, {R0, R2, R3, R4, R6, R7, R8, R9, R10, R11, R14}
l341: stmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l342: nop
l343: nop
l344: nop
l345: stmHIDA R13, {R0, R2, R3, R5, R6, R9, R10, R12, R13, R14, R15}
l346: nop
l347: stmDA R13!, {R13, R14, R15}
l348: stmDB R13!, {R1, R6, R7, R12}
l349: stmIB R13!, {R13}
l350: ldmDA R13!, {R3, R4, R7, R8, R9, R11, R14}
l351: stmIB R13!, {R0, R2, R8}
l352: nop
l353: ldmIB R13!, {R4, R6, R14}
l354: ldmDA R13!, {R10}
l355: ldmDB R13!, {R1, R2, R5, R8, R11}
l356: stmCSDB R13, {R0}
l357: ldmMIIA R13, {R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l358: nop
l359: stmIA R13!, {R0, R1, R3, R4, R5, R6, R8, R9, R10, R11, R14, R15}
l360: ldmNEIA R13, {R7}
l361: stmIB R13!, {R3}
l362: nop
l363: stmDB R13!, {R13, R14}
l364: stmDA R13!, {R13, R14, R15}
l365: stmDB R13!, {R1, R2, R5, R9, R14, R15}
l366: stmIA R13!, {R13, R14, R15}
l367: ldmIA R13!, {R4, R7}
l368: ldmIA R13!, {R7, R10, R11, R12}
l369: stmDA R13!, {R1, R12}
l370: ldmDB R13!, {R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l371: ldmIA R13, {R0, R1, R2, R4, R6, R8, R9, R11, R12}
l372: ldmDB R13!, {R8}
l373: nop
l374: ldmPLIA R13, {R0, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l375: nop
l376: nop
l377: ldmIB R13!, {R0, R1, R3, R4, R5, R8, R9, R10, R11, R12, R14}
l378: stmDB R13!, {R11}
l379: stmIA R13!, {R13}
l380: ldmIA R13!, {R1, R9, R10, R11}
l381: ldmDB R13!, {R1, R2, R4, R5, R6, R9, R10, R12}
l382: stmIA R13, {R9, R10}
l383: stmIB R13!, {R1, R6, R7, R9, R10, R11}
l384: stmDB R13!, {R13, R14, R15}
l385: nop
l386: ldmIB R13!, {R3, R8, R10, R12}
l387: ldmIB R13!, {R2, R4}
l388: nop
l389: nop
l390: ldmDB R13!, {R1, R6}
l391: stmIB R13!, {R1}
l392: stmDB R13, {R1, R2, R3, R4, R5, R7, R8, R9, R10, R11, R13, R14, R15}
l393: ldmDA R13!, {R2, R5}
l394: stmIA R13!, {R1, R4, R5}
l395: ldmDA R13!, {R0, R1, R2, R7, R8, R11, R12, R14}
l396: stmIB R13!, {R5, R6, R9, R12, R14}
l397: stmDB R13!, {R13, R14}
l398: nop
l399: stmDA R13!, {R0, R3, R4, R7, R10, R11, R14, R15}
l400: nop
l401: stmDB R13!, {R12}
l402: stmIA R13!, {R0, R7, R11, R14}
l403: stmCCIA R13, {R0, R2, R3, R4, R7, R8, R10, R12, R13, R14}
l404: stmDB R13!, {R0, R3, R7}
l405: stmDA R13, {R9}
l406: stmDA R13!, {R0, R7}
l407: nop
l408: nop
l409: nop
l410: nop
l411: ldmIB R13, {R11}
l412: ldmDA R13!, {R14}
l413: ldmIB R13!, {R11}
l414: stmIB R13!, {R13}
l415: ldmIB R13!, {R0, R3, R5, R10, R11}
l416: nop
l417: stmIA R13!, {R0, R1, R2, R4, R6, R8, R9, R14}
l418: nop
l419: stmDA R13!, {R13, R14, R15}
l420: stmVSIB R13, {R11}
l421: stmIB R13!, {R8}
l422: ldmDB R13!, {R0, R1, R3, R5, R6, R11, R14}
l423: nop
l424: nop
l425: ldmIA R13, {R3, R4, R6, R9}
l426: stmIB R13!, {R13, R14, R15}
l427: stmIA R13!, {R13}
l428: nop
l429: stmPLIB R13, {R15}
l430: ldmDA R13!, {R2, R3, R4, R7, R8, R9, R10}
l431: nop
l432: stmDA R13!, {R3}
l433: nop
l434: ldmIA R13!, {R7, R9, R14}
l435: nop
l436: stmIB R13, {R11, R15}
l437: ldmDA R13!, {R0, R5, R8, R12}
l438: ldmDB R13, {R11}
l439: stmIB R13, {R12}
l440: ldmIB R13!, {R0, R1, R5, R9}
l441: ldmIB R13!, {R1, R4, R6}
l442: ldmIA R13!, {R2, R5, R9, R11}
l443: ldmDB R13!, {R1, R2, R3, R5, R7, R8, R10, R11, R14}
l444: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R14}
l445: nop
l446: nop
l447: nop
l448: ldmDB R13!, {R12}
l449: ldmIB R13!, {R0}
l450: nop
l451: ldmIA R13!, {R3}
l452: nop
l453: nop
l454: ldmDA R13!, {R1, R2, R3, R4, R5, R10, R11, R12, R14}
l455: stmIB R13, {R2, R6, R9, R11, R15}
l456: stmDB R13!, {R9, R10, R12, R14}
l457: nop
l458: stmIB R13!, {R2, R5, R12, R15}
l459: ldmIA R13!, {R1, R3, R6, R8}
l460: stmDB R13!, {R13}
l461: ldmIA R13!, {R4, R6, R9, R14}
l462: stmIA R13, {R9}
l463: ldmDA R13!, {R1, R8}
l464: ldmDB R13!, {R6}
l465: stmDB R13!, {R11, R15}
l466: stmIB R13, {R4}
l467: stmDB R13!, {R1, R2, R12}
l468: stmIA R13!, {R8, R10, R11}
l469: stmDA R13!, {R13}
l470: ldmIA R13, {R11}
l471: stmIA R13!, {R0, R9, R11, R12, R15}
l472: nop
l473: ldmDB R13!, {R0, R1, R7, R8, R9, R10, R12}
l474: ldmGEIA R13, {R7}
l475: stmVSIA R13, {R2, R3, R5, R11, R12}
l476: ldmIA R13!, {R5, R6, R8, R10, R11}
l477: stmDA R13, {R1, R2, R3, R6, R7, R9, R12, R13}
l478: nop
l479: stmIA R13!, {R6, R12}
l480: nop
l481: nop
l482: ldmIB R13!, {R0, R14}
l483: stmLEIB R13, {R9}
l484: nop
l485: ldmDA R13, {R0, R3, R4, R5, R6, R9, R10}
l486: stmMIIA R13, {R14}
l487: ldmIA R13!, {R4}
l488: nop
l489: stmDA R13!, {R13}
l490: ldmIB R13!, {R8}
l491: nop
l492: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R8, R9, R11, R12, R14}
l493: ldmVCIA R13, {R3, R4, R9}
l494: ldmDB R13!, {R10}
l495: ldmVSDB R13, {R3, R6, R9, R12}
l496: stmIA R13!, {R12}
l497: ldmIB R13, {R7}
l498: stmIA R13!, {R2, R3, R4, R5, R6, R7, R9, R11, R14, R15}
l499: stmIA R13!, {R1}
l500: stmDA R13, {R0, R1, R3, R5, R6, R7, R8, R9, R11, R15}
l501: nop
l502: nop
l503: ldmDB R13!, {R0, R3, R5, R7, R9, R11}
l504: stmDA R13!, {R2, R8}
l505: ldmLEIA R13, {R6, R8, R11}
l506: ldmDA R13, {R2, R3, R8, R11, R14}
l507: stmDA R13!, {R3, R5, R6, R7, R10, R11, R14}
l508: stmDB R13!, {R5}
l509: nop
l510: nop
l511: nop
l512: nop
l513: ldmIB R13!, {R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l514: ldmIA R13!, {R6, R11}
l515: stmDB R13!, {R13}
l516: stmDA R13!, {R0, R1, R2, R3, R4, R7, R9, R10, R11, R12, R15}
l517: stmIA R13!, {R13, R14, R15}
l518: stmDB R13!, {R0, R2, R8, R11, R15}
l519: nop
l520: ldmIA R13!, {R14}
l521: nop
l522: nop
l523: nop
l524: ldmDA R13!, {R3}
l525: stmIB R13!, {R13, R14, R15}
l526: stmIA R13, {R1, R2, R9, R10, R12}
l527: stmGEIA R13, {R0, R1, R2, R3, R5, R6, R8, R9, R11, R12, R13, R14, R15}
l528: ldmIA R13, {R0, R1, R3, R4, R5, R6, R7, R10, R11, R12, R14}
l529: stmIA R13!, {R13, R14, R15}
l530: ldmIB R13!, {R0, R4, R5, R6, R7, R10, R11, R12}
l531: nop
l532: stmIB R13!, {R4}
l533: stmIB R13!, {R3}
l534: stmDA R13!, {R13, R14, R15}
l535: ldmIA R13!, {R2, R6, R11}
l536: ldmDA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l537: nop
l538: ldmDA R13!, {R0, R2, R3, R7}
l539: nop
l540: stmIA R13!, {R1, R6, R7, R9}
l541: ldmDB R13, {R3, R8, R11, R14}
l542: nop
l543: nop
l544: ldmDA R13!, {R2, R3, R4, R5, R9, R10, R11}
l545: ldmDA R13, {R1, R2, R3, R4, R6, R7, R8, R9}
l546: ldmDB R13!, {R0, R3, R5, R8, R9, R11}
l547: stmIA R13, {R9}
l548: stmIA R13!, {R0, R12}
l549: ldmDB R13!, {R14}
l550: stmIA R13!, {R1, R9, R12, R15}
l551: stmIB R13!, {R13}
l552: stmIA R13!, {R4, R15}
l553: ldmLEIA R13, {R1, R2, R4, R12}
l554: ldmIA R13!, {R1, R3, R4, R9}
l555: ldmDA R13!, {R0, R1, R2, R3, R6, R8, R9, R11, R12, R14}
l556: nop
l557: stmEQDA R13, {R1, R2, R10, R12}
l558: stmVSIA R13, {R1, R9, R11}
l559: ldmDA R13, {R14}
l560: ldmIA R13!, {R2, R7, R8, R9, R10}
l561: ldmDB R13!, {R0, R2, R3, R4, R6, R12, R14}
l562: stmIB R13!, {R13, R14}
l563: stmIB R13!, {R4, R10}
l564: nop
l565: nop
l566: stmIA R13!, {R0, R3, R14}
l567: nop
l568: stmDB R13!, {R5}
l569: ldmIA R13!, {R5, R6}
l570: stmCCIA R13, {R2, R4, R11}
l571: ldmDA R13!, {R0, R1, R3, R4, R5, R6, R7, R9, R10, R12, R14}
l572: nop
l573: nop
l574: stmIB R13!, {R1, R5, R7, R9, R10, R12, R15}
l575: ldmIA R13!, {R5, R12}
l576: ldmIB R13!, {R0, R2, R11}
l577: ldmIB R13!, {R10}
l578: stmIA R13!, {R7, R10, R14}
l579: nop
l580: nop
l581: nop
l582: nop
l583: nop
l584: ldmDA R13!, {R0, R1, R5, R6, R7, R8, R9, R10, R14}
l585: stmIB R13!, {R1, R7, R8, R11}
l586: nop
l587: ldmEQIA R13, {R4, R6, R7, R11}
l588: stmLSIB R13, {R13}
l589: stmIB R13!, {R3, R5, R14}
l590: stmVSDB R13, {R10}
l591: ldmIA R13!, {R0, R2}
l592: nop
l593: stmDA R13!, {R13, R15}
l594: stmDB R13!, {R0, R1, R2, R3, R5, R8, R9, R11, R12, R15}
l595: stmDB R13!, {R2, R5, R10}
l596: stmDB R13!, {R4}
l597: ldmIA R13!, {R0, R2, R3, R5, R6, R7, R9}
l598: stmIB R13!, {R13, R15}
l599: nop
l600: ldmIA R13!, {R0, R2, R3, R4, R6, R7, R14}
l601: ldmVSDB R13, {R5}
l602: ldmDB R13!, {R2, R9, R10}
l603: ldmIA R13!, {R9}
l604: stmDA R13, {R1, R2, R4, R5, R6, R8, R11, R12, R13, R14, R15}
l605: ldmDA R13, {R4, R6}
l606: ldmIB R13!, {R5}
l607: ldmDB R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l608: ldmLEIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12}
l609: stmHIDA R13, {R9, R12}
l610: ldmDB R13!, {R8}
l611: ldmIA R13, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l612: ldmDA R13!, {R7}
l613: nop
l614: nop
l615: stmIB R13, {R0, R1, R3, R4, R6, R7, R8, R9, R12, R14, R15}
l616: ldmIA R13!, {R1, R2, R6, R8, R9, R10, R11, R12, R14}
l617: ldmDA R13!, {R0, R1, R3, R6, R7, R8, R11, R14}
l618: stmVCIA R13, {R2, R4, R5, R6, R7, R8, R11, R13, R15}
l619: stmDB R13!, {R12}
l620: nop
l621: nop
l622: nop
l623: stmIA R13!, {R3, R4, R7, R11, R12, R14}
l624: stmDA R13, {R5, R7}
l625: stmPLIB R13, {R1, R4, R6, R9, R13, R15}
l626: nop
l627: ldmIA R13!, {R4, R5, R6, R8}
l628: stmDB R13!, {R0, R1, R2, R6, R9, R10, R11, R14}
l629: stmDB R13!, {R13}
l630: nop
l631: ldmLSIB R13, {R0, R5, R7, R8, R9, R10}
l632: stmIB R13!, {R2}
l633: stmDB R13, {R11, R14}
l634: stmDB R13!, {R13}
l635: ldmGEDA R13, {R2}
l636: ldmDB R13!, {R2}
l637: ldmIA R13, {R2, R3, R5, R6, R7, R8, R10, R11, R12, R14}
l638: nop
l639: nop
l640: ldmIB R13!, {R1, R3, R5, R6, R7, R12}
l641: stmDB R13, {R1, R4, R6, R11}
l642: stmDB R13!, {R13}
l643: ldmDB R13!, {R5, R7, R9}
l644: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R14}
l645: stmDB R13, {R0, R9, R10, R15}
l646: ldmIB R13!, {R14}
l647: ldmIB R13!, {R0, R4}
l648: nop
l649: nop
l650: ldmDA R13!, {R2, R5, R6}
l651: ldmDA R13!, {R3, R7, R8, R14}
l652: ldmIA R13!, {R5, R9, R10, R11, R14}
l653: nop
l654: ldmDA R13!, {R0, R3, R6, R9, R12}
l655: ldmIA R13!, {R0, R1, R4, R5, R6, R9, R14}
l656: stmDB R13!, {R1, R2, R8, R11, R15}
l657: ldmEQIA R13, {R4}
l658: ldmDA R13, {R0, R2, R6, R7, R8, R9}
l659: stmDA R13, {R5, R12}
l660: nop
l661: ldmDB R13!, {R0, R2}
l662: stmIB R13, {R13}
l663: stmIA R13, {R4, R10, R13, R14, R15}
l664: nop
l665: stmDB R13!, {R13, R14}
l666: ldmDB R13!, {R1, R4, R5, R11, R14}
l667: ldmVCDA R13, {R10}
l668: ldmDA R13!, {R11}
l669: stmLEIA R13, {R0, R3, R5, R10, R14}
l670: ldmIB R13, {R0, R2, R3, R4, R5, R7, R8, R10, R11, R12, R14}
l671: nop
l672: ldmGTIB R13, {R0, R2, R4, R6}
l673: ldmIA R13, {R2, R3, R4, R6, R7, R9, R10, R11, R14}
l674: nop
l675: nop
l676: stmGEIB R13, {R0, R2, R6, R7, R8, R10, R13, R14}
l677: ldmIB R13!, {R0, R2, R3, R4, R5, R6, R9, R10, R11, R12, R14}
l678: ldmDA R13!, {R0, R1, R2, R3, R4, R6, R8, R9, R10, R12, R14}
l679: stmIA R13!, {R13}
l680: nop
l681: ldmHIDA R13, {R1, R3}
l682: ldmDA R13!, {R6, R9}
l683: nop
l684: nop
l685: nop
l686: nop
l687: ldmVSIB R13, {R2, R4, R5}
l688: ldmIB R13!, {R2, R3, R5, R6, R7, R9, R11, R14}
l689: ldmIB R13!, {R0, R1, R8, R9, R12, R14}
l690: ldmIA R13!, {R0}
l691: nop
l692: stmDA R13!, {R11}
l693: nop
l694: stmDB R13!, {R13, R14, R15}
l695: ldmDB R13!, {R0, R1, R4, R6, R7, R9, R11, R12}
l696: stmDB R13, {R11}
l697: ldmIB R13!, {R4, R6, R7, R8}
l698: nop
l699: stmIB R13!, {R13}
l700: ldmDA R13, {R0, R2, R3, R4, R6, R7, R9, R11}
l701: stmIA R13!, {R1, R4, R5, R6, R7, R8, R10}
l702: stmDB R13!, {R7}
l703: ldmIA R13, {R14}
l704: stmDA R13!, {R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l705: ldmIB R13!, {R2, R3, R6, R7, R14}
l706: ldmDA R13!, {R3, R5, R9, R10}
l707: stmGEIB R13, {R7}
l708: stmIA R13!, {R13}
l709: stmIB R13!, {R13, R15}
l710: nop
l711: stmDA R13!, {R0, R2, R3, R4, R5, R15}
l712: ldmIA R13!, {R3}
l713: stmIA R13!, {R7}
l714: ldmDB R13!, {R6}
l715: stmDB R13!, {R4}
l716: nop
l717: nop
l718: nop
l719: stmIB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R11, R12, R13, R14, R15}
l720: nop
l721: nop
l722: ldmIB R13!, {R0, R2, R3, R5, R6, R11, R12, R14}
l723: stmLTIB R13, {R5, R6, R11, R12, R13, R15}
l724: ldmIA R13!, {R0, R3, R10, R11, R14}
l725: ldmDA R13!, {R0, R2, R3, R4, R8, R9, R10, R12, R14}
l726: stmIA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R11, R12, R15}
l727: ldmGEDA R13, {R1, R2}
l728: ldmIA R13!, {R8}
l729: ldmIB R13!, {R0, R1, R2, R5, R6, R8, R9, R11, R14}
l730: stmLEIB R13, {R8}
l731: nop
l732: stmIB R13!, {R2, R15}
l733: stmMIDA R13, {R1, R3, R4, R5, R6, R7, R8, R10, R11, R12, R13, R15}
l734: nop
l735: nop
l736: ldmDA R13!, {R2}
l737: nop
l738: stmDB R13!, {R2, R3, R5, R7, R8, R10, R12, R14, R15}
l739: stmIA R13, {R0, R2, R7, R11, R12, R13}
l740: nop
l741: nop
l742: stmDB R13!, {R3, R4, R6, R11}
l743: nop
l744: nop
l745: ldmDB R13!, {R7, R10}
l746: stmVCIB R13, {R2, R4, R7, R8, R10, R12, R13, R14}
l747: stmIB R13, {R2, R5, R7, R8, R10, R12, R13, R14}
l748: nop
l749: ldmIA R13!, {R2, R5, R6, R8, R10, R12}
l750: stmDA R13, {R3, R10, R12, R15}
l751: ldmIB R13, {R2, R4, R5, R8, R10, R11, R14}
l752: stmDA R13, {R12, R13, R14}
l753: stmIA R13!, {R0, R1, R2, R6, R11, R15}
l754: stmIA R13!, {R2, R3, R4}
l755: stmDB R13!, {R2, R3, R5, R8, R11, R15}
l756: ldmIA R13!, {R4, R12}
l757: nop
l758: stmDB R13!, {R13, R15}
l759: ldmDB R13!, {R4, R9}
l760: ldmLSIA R13, {R0, R3, R11, R12}
l761: stmDA R13, {R1, R2, R3, R15}
l762: stmIB R13!, {R13, R15}
l763: ldmIB R13!, {R5, R6, R12}
l764: stmDA R13!, {R1, R6, R8, R11, R14}
l765: stmIB R13, {R2, R3, R6, R7, R10, R12, R13, R15}
l766: ldmIA R13!, {R0, R3, R5, R14}
l767: stmDA R13!, {R1, R2, R5, R7, R12, R14, R15}
l768: ldmIB R13!, {R1, R8, R12}
l769: ldmDA R13!, {R12}
l770: ldmIA R13!, {R1, R3, R5, R6, R7, R9, R12}
l771: stmLTIB R13, {R0, R14}
l772: stmGTDA R13, {R2, R6, R8, R10, R12, R13, R14}
l773: ldmVSIA R13, {R3}
l774: nop
l775: nop
l776: stmVSIB R13, {R5, R8}
l777: stmIB R13!, {R3, R8, R11}
l778: nop
l779: nop
l780: ldmDB R13!, {R2, R3, R7, R10, R11, R14}
l781: stmIB R13!, {R5, R6, R15}
l782: ldmDB R13!, {R2, R6, R12}
l783: stmIA R13!, {R5, R6, R14}
l784: stmDB R13, {R3, R5, R7, R8, R12}
l785: stmDB R13!, {R1, R3, R4, R6, R12, R15}
l786: ldmDA R13!, {R0, R4, R9, R12}
l787: stmDA R13!, {R5, R10}
l788: nop
l789: nop
l790: ldmIA R13!, {R0, R1, R2, R3, R6, R9, R11, R12}
l791: stmIB R13!, {R0, R1, R9, R12}
l792: stmDB R13, {R1}
l793: ldmDA R13!, {R10}
l794: stmEQIA R13, {R6, R11, R14}
l795: ldmLEDA R13, {R0, R2, R3, R6, R7, R8, R9, R10, R11, R12, R14}
l796: ldmIB R13!, {R5, R6, R7, R11}
l797: nop
l798: nop
l799: nop
l800: stmVCDA R13, {R0, R1, R2, R3, R4, R5, R7, R9, R10, R11, R12, R13, R14, R15}
l801: stmDA R13!, {R1, R3, R4, R10, R11, R12, R14, R15}
l802: stmIB R13!, {R12}
l803: stmDB R13!, {R13, R14, R15}
l804: ldmDB R13!, {R1, R4, R6, R8, R11, R14}
l805: nop
l806: nop
l807: nop
l808: nop
l809: ldmIA R13!, {R9}
l810: stmIA R13, {R1, R2, R3, R5, R6, R7, R8, R10, R11, R12, R13, R14, R15}
l811: stmIA R13!, {R1, R6, R10, R14}
l812: stmVSIA R13, {R8}
l813: ldmIB R13!, {R0, R2, R3, R7, R8, R10, R11, R12, R14}
l814: stmIA R13!, {R12}
l815: nop
l816: ldmDB R13!, {R3, R8, R12, R14}
l817: ldmDA R13!, {R3, R4, R5, R6, R7, R10, R11, R14}
l818: stmCSIA R13, {R1, R2, R3, R4, R5, R6, R7, R9, R12, R13, R14, R15}
l819: ldmIA R13!, {R1, R2, R3, R8}
l820: stmDA R13!, {R6, R7, R10, R11, R14, R15}
l821: stmEQDB R13, {R10}
l822: ldmIB R13!, {R0, R3, R5, R9, R10, R12}
l823: ldmVSDA R13, {R2, R5, R11}
l824: stmIB R13!, {R13, R15}
l825: ldmDA R13, {R6}
l826: stmLEIB R13, {R0}
l827: ldmIB R13, {R1, R2, R4, R9}
l828: stmIA R13!, {R3, R7, R8, R10, R11, R12, R15}
l829: stmDA R13!, {R6}
l830: ldmDB R13!, {R4}
l831: stmCSDA R13, {R0, R4, R7, R12, R13, R14}
l832: stmIA R13!, {R6, R10}
l833: nop
l834: stmDA R13, {R10, R12}
l835: ldmDB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l836: ldmIA R13!, {R0, R1, R3, R5, R6, R7, R8, R9, R11, R12}
l837: stmVCDA R13, {R3, R7, R8, R9, R13}
l838: stmIB R13, {R12, R13}
l839: stmIB R13, {R2, R13}
l840: stmMIDB R13, {R0, R2, R4, R7, R9, R12, R13, R15}
l841: stmDB R13!, {R13, R14}
l842: stmDA R13!, {R13, R14, R15}
l843: ldmMIIB R13, {R0, R2, R3, R4, R8, R10, R12, R14}
l844: ldmDA R13!, {R0, R3, R4, R5, R7, R9, R11, R14}
l845: nop
l846: ldmIB R13, {R8, R9, R11}
l847: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R14}
l848: stmDB R13!, {R13, R14, R15}
l849: stmDB R13!, {R4, R7}
l850: nop
l851: ldmCSDB R13, {R2, R3, R5, R7, R8, R9, R14}
l852: stmDA R13, {R2, R4, R6, R7, R8, R14}
l853: ldmDA R13, {R1, R4, R5, R6, R8, R9}
l854: nop
l855: stmIA R13!, {R0, R1, R6, R7, R9, R11, R12, R15}
l856: ldmDB R13!, {R4}
l857: nop
l858: nop
l859: nop
l860: ldmDB R13, {R0, R7, R9, R11, R12, R14}
l861: ldmIA R13!, {R1, R12}
l862: nop
l863: ldmDA R13!, {R0, R5, R12}
l864: ldmIA R13!, {R7}
l865: ldmDA R13, {R6, R9, R10}
l866: stmDA R13!, {R0, R1, R2, R3, R4, R6, R8, R9, R10, R11, R12, R14, R15}
l867: stmDA R13!, {R10}
l868: stmIA R13!, {R13, R14, R15}
l869: ldmIA R13!, {R0, R4, R5, R8, R10, R11, R12, R14}
l870: ldmDA R13!, {R1, R3, R4, R5, R7, R12}
l871: stmMIIB R13, {R0, R1, R5, R6, R7, R8, R9, R10, R11, R12, R15}
l872: ldmVCIB R13, {R1, R2, R5, R8, R9, R10, R12}
l873: stmPLIB R13, {R1, R2, R5, R12}
l874: stmIA R13!, {R4, R9, R10, R11}
l875: ldmIB R13!, {R0, R1, R3, R4, R8, R9, R10}
l876: ldmGTDA R13, {R6, R7, R10, R14}
l877: ldmPLDB R13, {R0, R1, R3, R5, R6, R8, R9, R10}
l878: nop
l879: nop
l880: ldmVCDB R13, {R3, R5}
l881: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l882: stmDA R13, {R0, R9, R12}
l883: ldmPLDB R13, {R2}
l884: ldmDB R13!, {R8, R14}
l885: nop
l886: ldmDB R13!, {R14}
l887: nop
l888: stmIB R13!, {R13, R14, R15}
l889: stmDA R13!, {R6, R9, R11}
l890: nop
l891: ldmIB R13!, {R1, R4, R11}
l892: stmIA R13!, {R2, R8, R9}
l893: stmIB R13!, {R13, R14, R15}
l894: stmDB R13!, {R6, R9, R14, R15}
l895: stmDA R13, {R0, R3, R6, R8, R10}
l896: ldmDA R13!, {R0, R6, R11, R14}
l897: nop
l898: stmDA R13!, {R10}
l899: stmIA R13!, {R13, R15}
l900: ldmDA R13!, {R2}
l901: ldmDA R13!, {R1}
l902: nop
l903: ldmVCIA R13, {R0, R1, R2, R3, R5, R6, R7, R9, R10, R11, R12, R14}
l904: nop
l905: stmIB R13!, {R2, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l906: stmIA R13!, {R1, R5, R6, R7, R8, R10}
l907: nop
l908: stmDA R13!, {R0, R1, R7, R9, R14, R15}
l909: stmIB R13!, {R1, R6, R7, R10, R12}
l910: nop
l911: ldmIB R13!, {R9}
l912: nop
l913: nop
l914: stmDB R13!, {R13}
l915: stmDB R13!, {R13, R14, R15}
l916: stmMIDB R13, {R1, R3, R11}
l917: ldmDA R13!, {R0, R3, R5, R6, R7, R8, R11, R12}
l918: ldmGTDA R13, {R1, R2, R10}
l919: stmIA R13!, {R0, R6, R7, R8, R10, R14, R15}
l920: nop
l921: ldmDB R13, {R7, R9, R11, R12, R14}
l922: ldmDB R13!, {R0, R2, R7, R10, R14}
l923: nop
l924: ldmIA R13, {R1, R2, R3, R6, R8, R9, R10, R11, R12, R14}
l925: stmDB R13!, {R4, R8, R14}
l926: ldmIB R13!, {R1, R2, R3, R4, R5, R7, R8, R10, R12}
l927: ldmDA R13!, {R3, R6, R7, R11, R12, R14}
l928: stmIA R13, {R2, R3, R4, R11, R14}
l929: ldmDB R13!, {R1, R14}
l930: ldmIB R13!, {R1, R2, R3, R4, R5, R7, R10, R11, R12, R14}
l931: ldmIA R13!, {R2}
l932: ldmGTDA R13, {R1, R3, R5, R8, R11, R12}
l933: nop
l934: ldmDA R13!, {R0, R3, R9, R11}
l935: stmDA R13, {R5, R10}
l936: ldmDA R13!, {R2, R3, R5, R6, R7, R9, R10, R11, R12, R14}
l937: nop
l938: ldmVSIA R13, {R0, R8, R10, R11, R12, R14}
l939: nop
l940: ldmDB R13!, {R9}
l941: ldmIA R13!, {R1, R2, R4, R5, R6, R7, R11, R12, R14}
l942: stmIB R13!, {R1, R4, R15}
l943: ldmIA R13!, {R5, R6, R7}
l944: ldmVCIA R13, {R12}
l945: ldmDA R13!, {R3, R14}
l946: stmLTDA R13, {R0, R3, R4, R5, R8, R10, R12, R13, R14, R15}
l947: ldmVCDA R13, {R1, R2, R4, R5, R6, R7, R9, R10, R11}
l948: stmDB R13, {R0, R1, R2, R4, R5, R7, R9, R11, R12, R13, R15}
l949: stmDB R13!, {R2, R4, R7, R8, R9, R10, R11}
l950: ldmIB R13!, {R0, R1, R2, R4, R5, R6, R9, R12, R14}
l951: stmIB R13!, {R2}
l952: stmDA R13!, {R1, R3, R5, R9, R14, R15}
l953: ldmIB R13!, {R0, R9}
l954: ldmDB R13!, {R0, R2, R3, R4, R5, R10, R12, R14}
l955: nop
l956: ldmDB R13!, {R4, R6}
l957: stmIB R13, {R0, R9, R10}
l958: ldmIB R13!, {R1, R6, R8, R10, R12}
l959: ldmHIDB R13, {R0, R3, R7, R8, R9, R14}
l960: stmIA R13!, {R3, R11}
l961: stmDB R13!, {R13}
l962: nop
l963: stmIB R13!, {R13}
l964: stmDB R13, {R1, R5, R6, R7, R8}
l965: stmIA R13!, {R5, R6, R8, R11, R12, R14, R15}
l966: stmVCDB R13, {R1, R4, R5, R8, R14, R15}
l967: stmDB R13!, {R13, R14, R15}
l968: ldmDA R13!, {R4}
l969: stmDB R13, {R0, R2, R3, R8, R9, R11, R12, R15}
l970: stmDB R13!, {R8, R11}
l971: stmIB R13!, {R2, R12, R14}
l972: nop
l973: ldmIB R13!, {R2, R10, R14}
l974: nop
l975: nop
l976: ldmDB R13!, {R1, R8}
l977: ldmDA R13!, {R0, R5, R8, R11}
l978: ldmIB R13!, {R3, R7, R12}
l979: ldmLSDB R13, {R0, R2, R3, R4, R5, R6, R10, R12, R14}
l980: nop
l981: ldmDA R13!, {R0, R2, R6, R7, R10, R14}
l982: stmIA R13!, {R0, R6, R7, R8, R9, R10, R12}
l983: ldmIB R13, {R6, R11}
l984: ldmDA R13!, {R2, R6, R8, R10}
l985: stmDA R13!, {R5, R9}
l986: ldmGEDB R13, {R1}
l987: ldmVSIB R13, {R0}
l988: ldmIB R13!, {R0, R1, R2, R7, R8, R10}
l989: stmIA R13!, {R0}
l990: ldmDA R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l991: ldmIB R13, {R1, R4, R10}
l992: ldmIB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l993: stmGTIB R13, {R15}
l994: stmNEIA R13, {R0, R3, R7}
l995: nop
l996: nop
l997: stmIA R13!, {R13, R14}
l998: nop
l999: ldmDB R13, {R0}
l1000: nop
end: b end

