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
val1: .word 3488206055
next1:ldr R2, val2
b next2
val2: .word 2749492875
next2:ldr R3, val3
b next3
val3: .word 2603634474
next3:ldr R4, val4
b next4
val4: .word 2443006808
next4:ldr R5, val5
b next5
val5: .word 2158244099
next5:ldr R6, val6
b next6
val6: .word 2937537953
next6:ldr R7, val7
b next7
val7: .word 2660865922
next7:ldr R8, val8
b next8
val8: .word 19726662
next8:ldr R9, val9
b next9
val9: .word 27596442
next9:ldr R10, val10
b next10
val10: .word 2108959580
next10:ldr R11, val11
b next11
val11: .word 3074071414
next11:ldr R12, val12
b next12
val12: .word 3528931401
next12:ldr R14, val14
b next14
val14: .word 1395126343

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1971854868
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1616943300
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 2277539896
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 168922814
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 565828225
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3710332456
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1293950852
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 1455896776
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 4242506923
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2411069325
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2095552520
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1804618003
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1891560766
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 434797097
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1485283474
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3043224207
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2895246538
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 4072323925
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 4219715482
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2870389041
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1881596328
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: umlalPL R14, R10, R6, R14
l2: umlalEQ R10, R8, R7, R5
l3: umlalVCs R7, R5, R14, R11
l4: umlalCS R8, R5, R6, R11
l5: umlalHI R2, R4, R0, R14
l6: umlalVSs R6, R5, R0, R1
l7: umlal R8, R14, R7, R7
l8: umlalPL R5, R3, R8, R6
l9: umlalHI R2, R7, R0, R2
l10: umlalGEs R12, R6, R3, R7
l11: umlal R7, R6, R2, R3
l12: umlalMI R4, R8, R3, R6
l13: umlalCCs R3, R12, R2, R11
l14: umlalLEs R2, R5, R4, R8
l15: umlalMI R0, R14, R6, R5
l16: umlalCSs R4, R10, R3, R4
l17: umlalGTs R14, R10, R11, R7
l18: umlalGT R4, R11, R12, R14
l19: umlalNEs R4, R8, R10, R5
l20: umlal R5, R7, R9, R1
l21: umlalHIs R2, R7, R6, R7
l22: umlalCC R11, R8, R0, R6
l23: umlalVC R9, R8, R7, R2
l24: umlalNEs R8, R3, R2, R1
l25: umlal R1, R3, R4, R7
l26: umlalLT R7, R10, R9, R12
l27: umlal R3, R9, R7, R2
l28: umlalLTs R10, R8, R9, R1
l29: umlalVC R0, R4, R10, R9
l30: umlals R0, R9, R11, R10
l31: umlalLT R5, R4, R11, R2
l32: umlals R11, R9, R5, R10
l33: umlalCSs R11, R0, R12, R14
l34: umlalGTs R0, R6, R7, R7
l35: umlalVSs R7, R9, R1, R6
l36: umlalVCs R6, R11, R7, R5
l37: umlalHI R3, R6, R11, R9
l38: umlal R10, R14, R4, R2
l39: umlalVS R11, R12, R1, R10
l40: umlal R6, R1, R2, R0
l41: umlalCS R9, R7, R11, R8
l42: umlal R9, R7, R6, R3
l43: umlalCSs R6, R4, R12, R10
l44: umlalCS R4, R7, R0, R1
l45: umlals R9, R6, R3, R0
l46: umlalGT R4, R10, R8, R11
l47: umlalLT R9, R3, R4, R5
l48: umlalGE R8, R12, R1, R2
l49: umlalVC R10, R11, R1, R12
l50: umlalGE R1, R5, R11, R5
l51: umlalVC R9, R11, R3, R7
l52: umlal R14, R3, R5, R12
l53: umlalLT R4, R8, R3, R1
l54: umlal R14, R0, R11, R14
l55: umlalNEs R12, R4, R1, R9
l56: umlalEQs R10, R1, R3, R2
l57: umlals R6, R3, R4, R3
l58: umlalGEs R8, R12, R4, R2
l59: umlalVSs R0, R14, R3, R8
l60: umlalHIs R14, R8, R9, R14
l61: umlals R9, R14, R2, R1
l62: umlal R9, R10, R6, R7
l63: umlal R7, R3, R12, R9
l64: umlalVC R12, R11, R8, R3
l65: umlal R0, R11, R14, R14
l66: umlals R14, R10, R0, R7
l67: umlal R12, R3, R5, R1
l68: umlal R10, R14, R6, R0
l69: umlal R9, R3, R10, R2
l70: umlals R8, R12, R7, R8
l71: umlal R3, R1, R5, R7
l72: umlalGTs R9, R5, R14, R0
l73: umlalLEs R6, R11, R7, R3
l74: umlalPL R6, R11, R2, R5
l75: umlalGE R14, R8, R1, R1
l76: umlalHI R11, R7, R9, R5
l77: umlalCS R0, R9, R6, R5
l78: umlalGE R8, R6, R1, R1
l79: umlals R10, R8, R7, R1
l80: umlal R9, R0, R2, R1
l81: umlal R7, R10, R0, R12
l82: umlalMIs R2, R5, R11, R11
l83: umlalMI R10, R12, R14, R3
l84: umlal R9, R4, R14, R9
l85: umlalVCs R7, R9, R3, R5
l86: umlals R1, R2, R10, R8
l87: umlalLEs R14, R10, R8, R3
l88: umlalGE R0, R1, R14, R12
l89: umlalLT R3, R10, R7, R2
l90: umlals R7, R0, R14, R9
l91: umlals R11, R5, R10, R5
l92: umlalLS R8, R14, R0, R4
l93: umlal R9, R11, R7, R4
l94: umlal R5, R11, R14, R10
l95: umlalMI R6, R2, R7, R14
l96: umlalEQs R6, R14, R1, R0
l97: umlal R1, R6, R14, R8
l98: umlalPL R11, R2, R4, R4
l99: umlalPL R0, R1, R7, R12
l100: umlalLS R11, R3, R2, R14
l101: umlals R6, R1, R14, R11
l102: umlalGTs R0, R8, R1, R5
l103: umlals R6, R1, R7, R0
l104: umlalVSs R12, R4, R14, R7
l105: umlal R8, R3, R6, R2
l106: umlals R0, R10, R8, R3
l107: umlalCSs R4, R9, R11, R7
l108: umlalLEs R1, R3, R9, R7
l109: umlal R5, R7, R10, R9
l110: umlalGEs R11, R8, R0, R6
l111: umlals R2, R3, R0, R4
l112: umlalLEs R10, R12, R9, R11
l113: umlalGT R4, R6, R5, R14
l114: umlalEQ R12, R6, R7, R7
l115: umlalNEs R1, R3, R5, R7
l116: umlal R4, R7, R9, R3
l117: umlals R14, R0, R1, R12
l118: umlals R11, R3, R5, R3
l119: umlals R7, R8, R10, R1
l120: umlalVCs R4, R5, R9, R5
l121: umlalVSs R1, R11, R3, R4
l122: umlalVCs R14, R5, R9, R14
l123: umlalPL R10, R9, R0, R0
l124: umlal R5, R8, R6, R14
l125: umlal R1, R5, R14, R10
l126: umlalCSs R2, R10, R9, R14
l127: umlal R8, R14, R10, R3
l128: umlalGE R12, R2, R4, R9
l129: umlals R7, R8, R9, R2
l130: umlalGT R0, R10, R1, R0
l131: umlal R3, R12, R5, R8
l132: umlalMIs R7, R6, R1, R3
l133: umlalVS R9, R12, R14, R7
l134: umlalLTs R1, R5, R11, R11
l135: umlalHI R0, R8, R9, R3
l136: umlal R14, R7, R12, R11
l137: umlalCC R10, R3, R11, R9
l138: umlal R3, R14, R11, R4
l139: umlalHIs R6, R8, R4, R14
l140: umlalEQ R10, R1, R5, R4
l141: umlals R6, R14, R11, R1
l142: umlals R2, R5, R8, R1
l143: umlalCC R10, R11, R14, R5
l144: umlalNE R5, R0, R10, R2
l145: umlalLSs R2, R6, R14, R12
l146: umlalMIs R9, R6, R11, R0
l147: umlalCC R8, R11, R6, R2
l148: umlalGEs R14, R0, R8, R3
l149: umlals R0, R12, R11, R8
l150: umlalVS R5, R0, R11, R8
l151: umlalNEs R9, R6, R11, R8
l152: umlalCC R5, R3, R9, R11
l153: umlalVS R5, R11, R4, R12
l154: umlal R3, R14, R8, R12
l155: umlalLEs R11, R14, R5, R7
l156: umlalVS R0, R5, R4, R8
l157: umlals R6, R7, R12, R1
l158: umlals R14, R11, R9, R4
l159: umlalCS R1, R3, R11, R0
l160: umlalVSs R6, R12, R5, R1
l161: umlals R4, R7, R6, R1
l162: umlalLSs R5, R4, R1, R11
l163: umlalLEs R6, R5, R3, R1
l164: umlalLS R6, R0, R11, R7
l165: umlalCS R11, R2, R5, R12
l166: umlal R10, R8, R3, R10
l167: umlal R5, R7, R10, R3
l168: umlal R9, R7, R8, R3
l169: umlalVSs R10, R5, R4, R7
l170: umlalCC R12, R4, R8, R11
l171: umlals R11, R7, R10, R10
l172: umlalVSs R10, R8, R4, R8
l173: umlalVCs R8, R4, R2, R5
l174: umlalLSs R14, R1, R2, R11
l175: umlal R3, R8, R4, R0
l176: umlalEQs R11, R8, R1, R6
l177: umlal R8, R5, R2, R14
l178: umlalEQs R7, R3, R1, R14
l179: umlalHIs R9, R5, R14, R5
l180: umlalLTs R1, R12, R6, R14
l181: umlals R8, R5, R11, R9
l182: umlalNEs R11, R2, R0, R14
l183: umlalCSs R4, R14, R5, R0
l184: umlalEQs R5, R9, R3, R6
l185: umlalVSs R11, R7, R0, R8
l186: umlal R3, R6, R0, R4
l187: umlalMIs R1, R8, R4, R10
l188: umlalVS R6, R8, R0, R12
l189: umlal R2, R4, R8, R5
l190: umlalLT R7, R14, R9, R5
l191: umlalGTs R7, R10, R9, R0
l192: umlalCS R3, R5, R10, R12
l193: umlalGTs R1, R7, R5, R1
l194: umlals R5, R4, R7, R3
l195: umlal R8, R4, R0, R10
l196: umlals R1, R0, R11, R9
l197: umlalHIs R14, R3, R11, R8
l198: umlalCCs R10, R7, R6, R12
l199: umlalGTs R9, R2, R12, R8
l200: umlal R8, R4, R12, R0
l201: umlalCSs R5, R9, R0, R12
l202: umlals R1, R8, R7, R3
l203: umlalCSs R4, R0, R11, R4
l204: umlal R2, R14, R4, R9
l205: umlalLSs R5, R14, R6, R8
l206: umlalLEs R10, R4, R9, R8
l207: umlals R2, R11, R10, R7
l208: umlalLT R9, R1, R6, R14
l209: umlals R0, R2, R14, R12
l210: umlalPL R5, R12, R0, R5
l211: umlalLSs R1, R2, R9, R7
l212: umlalEQs R6, R12, R11, R4
l213: umlalNE R8, R3, R10, R6
l214: umlals R5, R12, R7, R7
l215: umlals R1, R12, R4, R3
l216: umlalLE R12, R10, R14, R3
l217: umlalVS R5, R9, R2, R10
l218: umlals R9, R4, R10, R4
l219: umlalGT R8, R4, R6, R14
l220: umlalCSs R14, R5, R11, R7
l221: umlalCSs R5, R4, R11, R2
l222: umlal R6, R4, R1, R9
l223: umlal R7, R4, R12, R12
l224: umlalCS R10, R8, R9, R9
l225: umlal R0, R4, R8, R0
l226: umlal R0, R9, R3, R2
l227: umlalVCs R12, R4, R0, R7
l228: umlals R4, R12, R1, R10
l229: umlalGE R6, R11, R14, R7
l230: umlalNEs R1, R7, R3, R4
l231: umlals R11, R5, R2, R11
l232: umlals R14, R6, R8, R0
l233: umlalGE R5, R11, R12, R7
l234: umlal R1, R7, R5, R4
l235: umlalCC R8, R7, R6, R1
l236: umlals R2, R8, R9, R4
l237: umlalGEs R6, R12, R5, R7
l238: umlal R6, R3, R9, R0
l239: umlalNEs R8, R3, R0, R4
l240: umlalGT R6, R2, R1, R12
l241: umlalVSs R11, R5, R1, R2
l242: umlals R7, R11, R12, R6
l243: umlals R9, R11, R12, R0
l244: umlal R4, R0, R3, R7
l245: umlalGT R9, R6, R7, R6
l246: umlal R11, R7, R5, R8
l247: umlal R9, R1, R4, R5
l248: umlal R6, R7, R11, R9
l249: umlalLSs R4, R0, R12, R5
l250: umlalLEs R14, R12, R0, R3
l251: umlals R7, R6, R10, R8
l252: umlalCCs R7, R1, R5, R1
l253: umlalGTs R3, R8, R6, R11
l254: umlalVS R2, R6, R12, R12
l255: umlals R0, R8, R4, R11
l256: umlalCCs R8, R14, R3, R7
l257: umlalEQs R11, R7, R0, R5
l258: umlalGT R8, R14, R9, R0
l259: umlalVC R9, R14, R11, R11
l260: umlalGT R8, R6, R0, R2
l261: umlal R4, R7, R8, R5
l262: umlal R3, R5, R12, R10
l263: umlals R7, R8, R4, R6
l264: umlalGTs R12, R5, R11, R5
l265: umlalCSs R10, R1, R11, R5
l266: umlalGT R8, R11, R10, R4
l267: umlal R3, R10, R14, R5
l268: umlals R9, R12, R11, R8
l269: umlal R3, R1, R6, R5
l270: umlals R11, R12, R4, R10
l271: umlal R6, R10, R14, R10
l272: umlalGE R5, R8, R4, R2
l273: umlal R10, R7, R11, R3
l274: umlalMI R1, R0, R8, R1
l275: umlal R14, R11, R1, R14
l276: umlals R4, R2, R7, R3
l277: umlalNEs R12, R4, R6, R6
l278: umlal R10, R4, R9, R4
l279: umlalCCs R7, R4, R12, R4
l280: umlalLEs R14, R3, R9, R14
l281: umlalEQ R2, R0, R14, R8
l282: umlals R6, R14, R12, R2
l283: umlalLT R14, R2, R10, R12
l284: umlalHIs R12, R11, R3, R3
l285: umlal R0, R2, R7, R8
l286: umlals R7, R4, R2, R14
l287: umlal R12, R10, R8, R12
l288: umlals R5, R2, R8, R3
l289: umlals R12, R8, R4, R6
l290: umlalLS R10, R7, R11, R10
l291: umlalHIs R1, R7, R14, R5
l292: umlalVSs R8, R1, R9, R11
l293: umlal R6, R3, R9, R5
l294: umlalPLs R2, R0, R11, R1
l295: umlalEQs R12, R8, R5, R8
l296: umlalVS R12, R10, R7, R1
l297: umlals R9, R10, R7, R12
l298: umlalLT R4, R7, R3, R4
l299: umlals R12, R5, R11, R3
l300: umlalCCs R7, R10, R6, R1
l301: umlals R6, R12, R14, R1
l302: umlal R10, R14, R11, R12
l303: umlal R9, R10, R1, R0
l304: umlalLS R1, R2, R4, R5
l305: umlalMI R7, R6, R9, R9
l306: umlal R7, R8, R10, R10
l307: umlal R11, R1, R9, R1
l308: umlalNEs R11, R1, R3, R6
l309: umlalLSs R3, R0, R9, R14
l310: umlals R11, R3, R14, R9
l311: umlalGEs R10, R11, R2, R12
l312: umlalVSs R8, R11, R2, R2
l313: umlal R7, R4, R9, R6
l314: umlal R11, R3, R7, R10
l315: umlalGT R1, R8, R11, R12
l316: umlal R8, R10, R14, R5
l317: umlalEQ R12, R8, R4, R0
l318: umlals R0, R11, R7, R2
l319: umlalVC R12, R8, R11, R3
l320: umlal R1, R14, R11, R12
l321: umlalGTs R6, R1, R3, R12
l322: umlal R1, R11, R5, R3
l323: umlalLT R9, R14, R0, R5
l324: umlalHIs R11, R5, R12, R8
l325: umlalCC R2, R1, R11, R1
l326: umlalGT R1, R9, R6, R11
l327: umlals R3, R14, R11, R3
l328: umlalEQs R10, R8, R0, R1
l329: umlals R10, R14, R5, R3
l330: umlalVS R7, R6, R11, R5
l331: umlals R12, R1, R4, R10
l332: umlal R9, R2, R3, R2
l333: umlalVCs R4, R11, R2, R1
l334: umlal R4, R3, R7, R8
l335: umlalVSs R1, R4, R9, R3
l336: umlal R4, R2, R0, R0
l337: umlalPLs R8, R14, R12, R10
l338: umlalNE R1, R14, R2, R10
l339: umlal R14, R2, R8, R14
l340: umlal R14, R10, R0, R9
l341: umlalCS R2, R1, R9, R12
l342: umlals R7, R14, R8, R6
l343: umlalMI R2, R6, R5, R2
l344: umlal R9, R0, R12, R9
l345: umlalPL R3, R5, R10, R8
l346: umlals R1, R4, R10, R8
l347: umlalLEs R11, R12, R7, R2
l348: umlals R7, R8, R9, R10
l349: umlalLS R14, R12, R4, R7
l350: umlals R2, R3, R10, R11
l351: umlalLS R1, R10, R8, R14
l352: umlalGEs R5, R3, R12, R6
l353: umlalVCs R11, R1, R10, R10
l354: umlals R14, R7, R8, R11
l355: umlalHI R0, R3, R9, R2
l356: umlalMIs R5, R11, R2, R10
l357: umlalLT R12, R3, R9, R12
l358: umlal R0, R2, R1, R12
l359: umlalEQs R4, R9, R8, R2
l360: umlalEQ R0, R14, R8, R7
l361: umlalLSs R7, R9, R1, R0
l362: umlalVC R12, R0, R4, R1
l363: umlalHI R3, R0, R1, R11
l364: umlal R0, R4, R1, R6
l365: umlalMIs R14, R0, R9, R1
l366: umlalLS R4, R0, R7, R8
l367: umlals R8, R7, R3, R11
l368: umlalLS R6, R12, R4, R9
l369: umlalHI R4, R12, R10, R8
l370: umlal R2, R6, R0, R5
l371: umlalHIs R0, R14, R8, R10
l372: umlals R8, R7, R11, R14
l373: umlalVCs R6, R1, R2, R4
l374: umlalGE R9, R6, R5, R8
l375: umlalCC R8, R7, R12, R0
l376: umlals R9, R10, R14, R3
l377: umlals R8, R4, R3, R14
l378: umlal R2, R11, R12, R9
l379: umlals R3, R7, R11, R14
l380: umlalMIs R12, R10, R2, R10
l381: umlalGEs R1, R4, R14, R5
l382: umlals R6, R5, R12, R7
l383: umlalHI R0, R12, R4, R4
l384: umlalGE R10, R8, R11, R10
l385: umlalLEs R11, R8, R3, R0
l386: umlalPLs R3, R11, R6, R2
l387: umlals R5, R9, R0, R0
l388: umlals R5, R1, R6, R2
l389: umlals R3, R6, R1, R6
l390: umlalCCs R2, R6, R5, R7
l391: umlalNE R3, R7, R8, R0
l392: umlal R2, R10, R1, R2
l393: umlal R14, R11, R6, R2
l394: umlalVS R14, R3, R7, R9
l395: umlalEQs R8, R11, R3, R12
l396: umlals R1, R0, R12, R1
l397: umlalPL R6, R8, R12, R2
l398: umlalHI R11, R5, R12, R10
l399: umlal R7, R8, R4, R4
l400: umlals R7, R0, R14, R7
l401: umlalVSs R10, R6, R7, R8
l402: umlalVS R3, R0, R2, R2
l403: umlals R12, R5, R4, R12
l404: umlals R9, R7, R10, R1
l405: umlalVS R6, R5, R10, R3
l406: umlals R3, R2, R11, R4
l407: umlalVCs R10, R0, R2, R2
l408: umlalLE R3, R1, R14, R8
l409: umlalEQs R3, R2, R10, R14
l410: umlalGT R8, R5, R1, R5
l411: umlals R9, R10, R4, R1
l412: umlal R3, R11, R12, R10
l413: umlalEQs R3, R11, R14, R8
l414: umlalLT R11, R14, R5, R11
l415: umlals R0, R3, R14, R6
l416: umlal R0, R5, R12, R2
l417: umlal R3, R2, R12, R6
l418: umlalGE R11, R4, R10, R9
l419: umlalPL R0, R9, R7, R1
l420: umlalPL R5, R6, R9, R9
l421: umlalVC R10, R8, R3, R8
l422: umlalPL R5, R11, R3, R6
l423: umlalHIs R7, R0, R5, R14
l424: umlalMIs R14, R9, R4, R9
l425: umlal R0, R10, R6, R11
l426: umlalVC R8, R10, R0, R7
l427: umlalHI R14, R10, R8, R10
l428: umlals R0, R12, R6, R11
l429: umlal R12, R14, R7, R9
l430: umlals R2, R11, R10, R11
l431: umlalHI R9, R14, R11, R1
l432: umlal R11, R6, R2, R10
l433: umlalCCs R9, R10, R0, R2
l434: umlalVCs R4, R0, R7, R5
l435: umlal R0, R3, R7, R8
l436: umlalGT R0, R9, R11, R9
l437: umlalMI R1, R12, R2, R3
l438: umlalVC R2, R5, R6, R0
l439: umlalGTs R14, R8, R12, R12
l440: umlals R9, R8, R4, R11
l441: umlal R5, R6, R1, R4
l442: umlals R2, R10, R12, R2
l443: umlalGEs R4, R5, R0, R4
l444: umlalGE R3, R2, R10, R4
l445: umlal R6, R9, R4, R5
l446: umlalCC R1, R2, R6, R11
l447: umlalVS R5, R6, R3, R6
l448: umlals R2, R11, R5, R2
l449: umlals R8, R2, R1, R5
l450: umlalVSs R2, R1, R4, R0
l451: umlalVS R9, R10, R14, R14
l452: umlalPLs R6, R12, R11, R8
l453: umlalGTs R1, R8, R11, R10
l454: umlalMI R9, R8, R12, R5
l455: umlalCS R11, R6, R5, R4
l456: umlals R9, R2, R12, R2
l457: umlal R1, R9, R10, R14
l458: umlal R14, R6, R12, R1
l459: umlals R9, R12, R3, R9
l460: umlal R7, R9, R5, R9
l461: umlalCSs R0, R12, R7, R7
l462: umlalLE R9, R14, R2, R4
l463: umlalCCs R2, R8, R11, R6
l464: umlalCSs R12, R14, R8, R7
l465: umlals R9, R6, R7, R12
l466: umlalNE R3, R10, R6, R4
l467: umlals R14, R11, R3, R5
l468: umlalCCs R11, R3, R1, R4
l469: umlalGTs R1, R10, R0, R0
l470: umlalVSs R7, R2, R14, R11
l471: umlals R4, R6, R10, R1
l472: umlalNE R1, R6, R2, R2
l473: umlal R3, R2, R6, R14
l474: umlalEQ R4, R14, R8, R5
l475: umlal R12, R4, R9, R7
l476: umlal R1, R10, R9, R7
l477: umlalCCs R3, R8, R12, R9
l478: umlals R4, R1, R7, R10
l479: umlalPL R5, R3, R0, R11
l480: umlal R8, R11, R14, R2
l481: umlalEQs R3, R8, R1, R9
l482: umlalLS R1, R14, R5, R2
l483: umlalPLs R5, R2, R7, R8
l484: umlals R2, R11, R1, R10
l485: umlals R1, R8, R10, R11
l486: umlalGTs R5, R8, R10, R5
l487: umlalLT R3, R2, R11, R14
l488: umlalLT R2, R11, R10, R12
l489: umlalNEs R4, R8, R0, R3
l490: umlal R8, R6, R4, R9
l491: umlalVC R12, R2, R5, R6
l492: umlal R5, R6, R0, R0
l493: umlalLTs R9, R2, R11, R5
l494: umlals R12, R11, R8, R12
l495: umlalPL R14, R5, R3, R1
l496: umlal R14, R10, R11, R10
l497: umlalCSs R12, R0, R8, R6
l498: umlals R2, R8, R9, R14
l499: umlalNE R4, R10, R6, R10
l500: umlalGTs R5, R4, R8, R0
l501: umlal R14, R4, R3, R8
l502: umlalPLs R9, R11, R0, R12
l503: umlal R4, R8, R0, R4
l504: umlals R10, R9, R14, R6
l505: umlals R9, R1, R5, R5
l506: umlalCC R5, R4, R0, R11
l507: umlal R1, R5, R0, R0
l508: umlal R8, R7, R0, R6
l509: umlalVS R6, R9, R8, R6
l510: umlalPLs R1, R5, R11, R4
l511: umlalPLs R1, R12, R6, R7
l512: umlalLSs R3, R7, R1, R10
l513: umlalHI R14, R1, R7, R7
l514: umlalCSs R3, R7, R2, R8
l515: umlalEQ R3, R0, R11, R14
l516: umlals R12, R8, R4, R8
l517: umlalPL R2, R1, R5, R0
l518: umlalCS R14, R3, R4, R8
l519: umlalNE R12, R2, R8, R5
l520: umlalHI R8, R6, R2, R8
l521: umlal R9, R10, R5, R1
l522: umlals R4, R5, R11, R9
l523: umlal R1, R9, R0, R9
l524: umlalVSs R2, R1, R5, R12
l525: umlals R5, R4, R12, R6
l526: umlalGE R12, R5, R2, R2
l527: umlals R9, R1, R14, R10
l528: umlalEQs R7, R11, R1, R0
l529: umlalVS R2, R7, R4, R1
l530: umlalVS R4, R6, R8, R11
l531: umlalLS R11, R0, R8, R0
l532: umlalEQs R4, R12, R11, R12
l533: umlalGEs R10, R4, R1, R6
l534: umlals R6, R11, R12, R1
l535: umlals R12, R9, R14, R9
l536: umlalNE R4, R6, R5, R14
l537: umlalMI R10, R4, R14, R11
l538: umlalGE R14, R7, R9, R0
l539: umlalLSs R1, R4, R2, R10
l540: umlalLE R8, R6, R0, R9
l541: umlalGT R5, R0, R9, R7
l542: umlal R9, R3, R10, R14
l543: umlalLS R12, R10, R6, R6
l544: umlals R1, R5, R4, R8
l545: umlalCS R9, R7, R3, R2
l546: umlal R11, R0, R8, R7
l547: umlalEQs R14, R1, R6, R0
l548: umlals R14, R9, R2, R7
l549: umlal R14, R10, R11, R5
l550: umlalLEs R7, R3, R8, R1
l551: umlal R5, R7, R9, R3
l552: umlals R7, R0, R10, R14
l553: umlalGE R14, R5, R4, R8
l554: umlal R3, R12, R1, R0
l555: umlalGE R8, R2, R9, R8
l556: umlalVCs R12, R7, R6, R7
l557: umlal R3, R11, R10, R3
l558: umlal R9, R10, R3, R0
l559: umlal R10, R12, R1, R10
l560: umlalHI R3, R7, R9, R4
l561: umlalHI R6, R4, R10, R7
l562: umlalEQs R5, R14, R0, R1
l563: umlalNE R11, R4, R9, R2
l564: umlal R8, R4, R11, R5
l565: umlalGEs R2, R4, R6, R0
l566: umlalHI R14, R6, R2, R12
l567: umlalLTs R14, R12, R3, R3
l568: umlals R3, R9, R5, R9
l569: umlalCC R6, R10, R0, R5
l570: umlalGE R6, R10, R12, R10
l571: umlal R7, R5, R12, R5
l572: umlalGTs R10, R9, R7, R14
l573: umlal R6, R2, R14, R7
l574: umlals R0, R12, R7, R4
l575: umlalLE R10, R4, R5, R1
l576: umlalEQs R11, R2, R14, R7
l577: umlalVCs R7, R6, R8, R11
l578: umlalGEs R10, R2, R1, R11
l579: umlalNEs R3, R0, R7, R5
l580: umlals R3, R2, R14, R9
l581: umlalLS R4, R11, R14, R5
l582: umlalMI R1, R9, R2, R5
l583: umlalPLs R0, R7, R1, R3
l584: umlalEQs R14, R10, R6, R4
l585: umlals R8, R1, R14, R7
l586: umlals R5, R1, R12, R8
l587: umlals R1, R14, R3, R12
l588: umlalPL R12, R4, R0, R10
l589: umlalVS R0, R12, R7, R2
l590: umlal R14, R2, R12, R2
l591: umlalLS R1, R4, R11, R10
l592: umlal R11, R10, R9, R4
l593: umlalLT R8, R0, R3, R7
l594: umlalVSs R12, R1, R10, R9
l595: umlals R3, R12, R5, R10
l596: umlalHIs R8, R10, R6, R1
l597: umlalEQs R0, R11, R6, R9
l598: umlalVC R12, R2, R6, R5
l599: umlalCS R6, R4, R12, R3
l600: umlal R3, R8, R7, R5
l601: umlalVSs R4, R11, R10, R10
l602: umlalLT R0, R11, R8, R5
l603: umlal R4, R9, R11, R9
l604: umlalGT R1, R0, R5, R11
l605: umlalGTs R2, R0, R11, R10
l606: umlals R8, R2, R10, R1
l607: umlalHI R14, R12, R4, R2
l608: umlalNE R4, R1, R8, R11
l609: umlalMIs R5, R10, R11, R10
l610: umlals R5, R4, R12, R3
l611: umlalLS R0, R8, R6, R2
l612: umlalHIs R4, R1, R14, R5
l613: umlalGT R5, R2, R6, R3
l614: umlalLE R3, R2, R8, R3
l615: umlals R11, R8, R6, R0
l616: umlalGEs R14, R4, R8, R4
l617: umlalGT R5, R1, R9, R14
l618: umlalPLs R7, R1, R9, R0
l619: umlalCS R0, R12, R9, R4
l620: umlalGT R12, R9, R5, R12
l621: umlalPLs R8, R9, R7, R3
l622: umlalVSs R1, R12, R4, R4
l623: umlalEQs R4, R0, R7, R6
l624: umlalHIs R2, R1, R12, R12
l625: umlalEQs R14, R8, R2, R7
l626: umlalEQ R11, R5, R2, R3
l627: umlal R1, R5, R3, R9
l628: umlalGTs R12, R6, R14, R6
l629: umlalCS R11, R14, R7, R8
l630: umlalMIs R6, R11, R4, R5
l631: umlals R2, R3, R7, R7
l632: umlal R2, R14, R10, R3
l633: umlal R14, R12, R5, R7
l634: umlalVS R4, R12, R7, R2
l635: umlalGTs R4, R14, R5, R6
l636: umlal R8, R0, R14, R11
l637: umlalCCs R14, R2, R10, R6
l638: umlalGTs R9, R11, R0, R6
l639: umlalVC R11, R2, R10, R9
l640: umlalNE R6, R9, R5, R11
l641: umlalPLs R3, R7, R5, R14
l642: umlals R5, R0, R4, R7
l643: umlalNE R11, R6, R14, R4
l644: umlalLT R2, R0, R3, R3
l645: umlalLT R1, R9, R10, R4
l646: umlalCS R5, R7, R6, R14
l647: umlalLT R12, R11, R3, R7
l648: umlals R2, R1, R10, R2
l649: umlalGT R3, R4, R11, R2
l650: umlals R1, R11, R14, R5
l651: umlalLS R12, R3, R9, R0
l652: umlal R1, R12, R4, R7
l653: umlalHIs R6, R5, R0, R10
l654: umlals R10, R12, R2, R11
l655: umlal R8, R12, R4, R10
l656: umlalVSs R1, R9, R7, R6
l657: umlalLE R14, R8, R0, R0
l658: umlalVC R3, R6, R4, R9
l659: umlals R4, R5, R6, R10
l660: umlalGT R5, R14, R12, R1
l661: umlals R12, R6, R1, R0
l662: umlal R5, R10, R9, R14
l663: umlals R1, R6, R3, R2
l664: umlal R2, R3, R8, R5
l665: umlal R7, R4, R14, R12
l666: umlal R6, R3, R14, R3
l667: umlalCSs R12, R4, R9, R10
l668: umlalPLs R9, R1, R2, R8
l669: umlalMI R8, R12, R3, R10
l670: umlalGT R3, R11, R5, R12
l671: umlalVCs R14, R5, R8, R11
l672: umlals R7, R1, R0, R6
l673: umlalVCs R12, R11, R2, R10
l674: umlal R10, R8, R11, R8
l675: umlalHIs R9, R2, R1, R8
l676: umlalLTs R1, R0, R9, R7
l677: umlals R9, R5, R11, R12
l678: umlalVS R10, R5, R4, R3
l679: umlalNE R2, R6, R9, R2
l680: umlal R0, R6, R11, R5
l681: umlals R11, R4, R10, R10
l682: umlals R14, R7, R2, R3
l683: umlalVS R1, R7, R14, R7
l684: umlalCSs R7, R5, R6, R12
l685: umlalCS R2, R8, R14, R1
l686: umlalEQ R9, R11, R3, R3
l687: umlals R4, R10, R7, R6
l688: umlalGT R1, R11, R7, R12
l689: umlalLE R5, R3, R7, R7
l690: umlals R12, R5, R4, R8
l691: umlals R9, R6, R8, R10
l692: umlalLE R14, R9, R11, R14
l693: umlal R0, R5, R6, R10
l694: umlalCSs R10, R14, R9, R2
l695: umlals R14, R10, R11, R1
l696: umlals R8, R11, R12, R10
l697: umlals R7, R3, R1, R9
l698: umlalPL R0, R11, R7, R10
l699: umlals R12, R14, R2, R4
l700: umlal R10, R1, R0, R5
l701: umlalEQ R14, R9, R0, R1
l702: umlalGE R7, R12, R4, R5
l703: umlalVSs R14, R1, R12, R1
l704: umlalNEs R6, R9, R14, R12
l705: umlals R9, R0, R7, R5
l706: umlal R6, R3, R9, R8
l707: umlalMIs R9, R4, R2, R6
l708: umlal R11, R5, R0, R9
l709: umlal R12, R8, R3, R6
l710: umlal R0, R10, R14, R9
l711: umlal R3, R2, R7, R8
l712: umlals R3, R0, R6, R12
l713: umlalVCs R7, R8, R9, R4
l714: umlalCC R8, R2, R9, R12
l715: umlal R1, R10, R2, R3
l716: umlalEQs R5, R4, R7, R12
l717: umlal R2, R1, R8, R12
l718: umlal R14, R11, R10, R0
l719: umlals R0, R6, R7, R10
l720: umlalCC R8, R7, R12, R7
l721: umlalHI R3, R12, R14, R3
l722: umlalHIs R8, R12, R7, R3
l723: umlals R0, R1, R8, R1
l724: umlal R8, R10, R9, R5
l725: umlalLTs R12, R7, R5, R10
l726: umlals R10, R5, R9, R7
l727: umlal R2, R1, R9, R10
l728: umlalMIs R0, R8, R4, R2
l729: umlalLTs R4, R8, R12, R3
l730: umlalLT R9, R8, R0, R11
l731: umlalGE R11, R0, R6, R5
l732: umlal R6, R5, R12, R1
l733: umlalLTs R1, R6, R12, R9
l734: umlalVC R5, R14, R3, R2
l735: umlals R9, R3, R14, R11
l736: umlalNE R14, R11, R10, R1
l737: umlalEQ R12, R2, R3, R2
l738: umlal R14, R4, R2, R2
l739: umlals R11, R8, R6, R6
l740: umlal R7, R6, R14, R8
l741: umlalMI R14, R0, R7, R5
l742: umlalLS R11, R10, R6, R11
l743: umlalPL R7, R2, R9, R11
l744: umlalNE R5, R0, R10, R6
l745: umlalLT R4, R11, R7, R4
l746: umlal R2, R9, R11, R11
l747: umlalLT R12, R7, R9, R14
l748: umlalLT R10, R7, R3, R6
l749: umlals R4, R7, R11, R9
l750: umlals R3, R14, R11, R4
l751: umlals R3, R4, R11, R2
l752: umlal R1, R12, R2, R1
l753: umlalMIs R6, R10, R3, R8
l754: umlalMIs R9, R6, R4, R6
l755: umlal R3, R8, R1, R12
l756: umlalGTs R2, R10, R11, R3
l757: umlals R8, R11, R12, R12
l758: umlalVS R11, R14, R0, R11
l759: umlalLSs R1, R2, R8, R11
l760: umlalVC R5, R3, R8, R14
l761: umlalCSs R0, R10, R12, R0
l762: umlalVS R2, R8, R7, R2
l763: umlal R0, R5, R10, R8
l764: umlalVCs R11, R6, R12, R1
l765: umlalCCs R7, R12, R4, R14
l766: umlal R6, R7, R8, R8
l767: umlalLSs R4, R10, R6, R1
l768: umlalNE R0, R7, R4, R14
l769: umlalLSs R7, R9, R3, R9
l770: umlalLSs R2, R5, R3, R0
l771: umlals R1, R3, R6, R5
l772: umlals R14, R4, R7, R6
l773: umlals R7, R10, R14, R5
l774: umlalMIs R8, R11, R4, R5
l775: umlal R7, R6, R12, R2
l776: umlal R6, R10, R14, R5
l777: umlalVCs R12, R10, R1, R6
l778: umlalLS R9, R11, R1, R14
l779: umlalCCs R5, R10, R0, R8
l780: umlals R6, R14, R5, R6
l781: umlals R3, R4, R7, R0
l782: umlalVS R1, R2, R14, R11
l783: umlals R6, R5, R7, R9
l784: umlal R0, R8, R4, R0
l785: umlalCSs R10, R14, R5, R7
l786: umlalMI R6, R11, R8, R7
l787: umlalHI R3, R10, R11, R11
l788: umlalCCs R11, R5, R1, R5
l789: umlal R6, R5, R3, R10
l790: umlals R10, R2, R14, R14
l791: umlalHIs R8, R2, R3, R3
l792: umlalPLs R8, R3, R14, R0
l793: umlalEQs R12, R1, R10, R12
l794: umlalGT R1, R12, R6, R6
l795: umlalLT R4, R0, R12, R0
l796: umlal R2, R11, R6, R4
l797: umlalGTs R1, R0, R5, R8
l798: umlalEQ R9, R3, R7, R11
l799: umlal R11, R6, R12, R11
l800: umlal R12, R4, R5, R10
l801: umlalEQ R1, R5, R12, R1
l802: umlals R12, R14, R8, R9
l803: umlalPL R2, R4, R7, R9
l804: umlal R3, R2, R14, R1
l805: umlal R10, R12, R9, R1
l806: umlalMIs R10, R8, R7, R6
l807: umlals R4, R5, R6, R8
l808: umlalLE R9, R4, R7, R1
l809: umlalLT R3, R12, R2, R9
l810: umlalCS R12, R2, R5, R9
l811: umlalMI R9, R5, R7, R12
l812: umlalCCs R1, R14, R7, R10
l813: umlalVCs R12, R0, R11, R1
l814: umlalHI R3, R5, R12, R11
l815: umlalLTs R8, R11, R2, R6
l816: umlalHIs R14, R12, R7, R5
l817: umlal R5, R4, R8, R2
l818: umlalLTs R9, R10, R0, R7
l819: umlals R0, R3, R6, R4
l820: umlalEQs R14, R0, R3, R6
l821: umlalNEs R0, R10, R7, R12
l822: umlals R14, R7, R6, R4
l823: umlal R14, R7, R5, R3
l824: umlalCCs R2, R6, R3, R6
l825: umlalLS R2, R5, R6, R11
l826: umlal R1, R11, R5, R5
l827: umlalHIs R7, R14, R9, R7
l828: umlal R12, R2, R8, R3
l829: umlalNEs R11, R2, R5, R9
l830: umlalMIs R7, R14, R8, R12
l831: umlalGE R0, R11, R3, R7
l832: umlal R11, R1, R5, R1
l833: umlalMIs R9, R3, R7, R2
l834: umlals R0, R4, R12, R5
l835: umlalVCs R3, R14, R4, R3
l836: umlals R9, R4, R3, R5
l837: umlal R2, R1, R0, R12
l838: umlalVC R14, R1, R7, R5
l839: umlalGEs R6, R10, R12, R8
l840: umlals R1, R3, R7, R8
l841: umlalLE R9, R4, R11, R11
l842: umlal R10, R3, R4, R4
l843: umlalGE R10, R11, R1, R4
l844: umlalNEs R3, R0, R4, R10
l845: umlalLE R1, R3, R9, R1
l846: umlals R9, R11, R8, R11
l847: umlal R10, R6, R5, R12
l848: umlals R0, R7, R10, R11
l849: umlal R4, R12, R5, R12
l850: umlalCCs R5, R4, R14, R9
l851: umlalVCs R9, R5, R1, R5
l852: umlalEQ R0, R3, R6, R0
l853: umlalCSs R7, R12, R0, R6
l854: umlalLSs R10, R11, R14, R10
l855: umlalCC R14, R2, R7, R12
l856: umlalVC R6, R5, R4, R1
l857: umlal R6, R12, R2, R8
l858: umlalEQ R11, R7, R12, R10
l859: umlals R10, R8, R1, R0
l860: umlal R1, R8, R5, R7
l861: umlalCSs R5, R7, R8, R14
l862: umlalMI R4, R5, R10, R3
l863: umlalPLs R2, R12, R1, R7
l864: umlalCSs R1, R2, R14, R12
l865: umlal R12, R14, R0, R14
l866: umlalPL R7, R2, R10, R10
l867: umlals R10, R1, R3, R1
l868: umlal R11, R0, R2, R6
l869: umlalCC R6, R1, R4, R6
l870: umlalLS R8, R11, R4, R6
l871: umlals R0, R5, R4, R0
l872: umlalGT R11, R14, R5, R5
l873: umlalEQ R4, R12, R2, R12
l874: umlals R7, R2, R12, R2
l875: umlalPL R11, R14, R9, R10
l876: umlalHIs R0, R10, R1, R9
l877: umlalNEs R14, R1, R6, R4
l878: umlals R4, R1, R2, R8
l879: umlalLT R8, R10, R14, R2
l880: umlals R1, R10, R3, R14
l881: umlalPL R14, R3, R0, R7
l882: umlalMIs R6, R5, R4, R6
l883: umlal R8, R9, R2, R12
l884: umlalCC R0, R1, R14, R11
l885: umlalVCs R0, R7, R10, R7
l886: umlalLEs R9, R2, R10, R2
l887: umlalCSs R0, R6, R10, R7
l888: umlalLS R2, R10, R8, R14
l889: umlal R10, R3, R4, R9
l890: umlalLE R4, R3, R14, R3
l891: umlalLT R10, R8, R14, R12
l892: umlals R6, R9, R0, R3
l893: umlalPLs R3, R8, R6, R2
l894: umlalCC R1, R11, R10, R8
l895: umlalEQ R10, R6, R14, R9
l896: umlals R8, R2, R12, R14
l897: umlalLT R3, R12, R10, R2
l898: umlalVS R6, R4, R1, R4
l899: umlals R9, R5, R2, R5
l900: umlals R7, R10, R1, R7
l901: umlalVC R14, R9, R0, R10
l902: umlals R14, R7, R8, R2
l903: umlals R0, R7, R8, R12
l904: umlal R5, R3, R11, R10
l905: umlals R1, R5, R14, R8
l906: umlalHI R7, R10, R14, R4
l907: umlal R12, R4, R8, R8
l908: umlalCSs R14, R6, R5, R5
l909: umlal R6, R2, R1, R6
l910: umlals R6, R0, R11, R4
l911: umlal R6, R4, R7, R12
l912: umlal R5, R1, R9, R8
l913: umlal R3, R4, R6, R12
l914: umlalLS R9, R5, R10, R3
l915: umlals R12, R10, R7, R1
l916: umlalCSs R0, R6, R2, R12
l917: umlalMIs R14, R12, R10, R7
l918: umlalCCs R11, R1, R3, R14
l919: umlalCC R6, R11, R5, R11
l920: umlalGT R8, R2, R0, R5
l921: umlalVC R11, R5, R10, R4
l922: umlalLT R5, R7, R1, R11
l923: umlals R2, R14, R6, R9
l924: umlals R2, R10, R14, R1
l925: umlalNE R14, R0, R12, R14
l926: umlalLE R10, R1, R9, R9
l927: umlalVC R2, R12, R10, R1
l928: umlalLTs R12, R11, R0, R2
l929: umlal R7, R5, R6, R5
l930: umlals R1, R10, R12, R7
l931: umlals R5, R3, R11, R7
l932: umlalPL R2, R11, R7, R6
l933: umlalMI R0, R10, R7, R1
l934: umlalNE R0, R12, R14, R6
l935: umlalGTs R1, R2, R0, R1
l936: umlals R8, R0, R2, R8
l937: umlalCS R4, R12, R6, R8
l938: umlalCC R5, R0, R6, R3
l939: umlal R5, R6, R2, R6
l940: umlalCC R10, R1, R8, R9
l941: umlalEQ R10, R12, R6, R8
l942: umlalLE R6, R10, R11, R8
l943: umlalPLs R4, R8, R5, R6
l944: umlalLSs R14, R1, R7, R1
l945: umlalPL R2, R3, R7, R8
l946: umlal R5, R0, R3, R6
l947: umlalEQs R6, R8, R3, R6
l948: umlal R14, R5, R9, R8
l949: umlal R9, R4, R0, R4
l950: umlalHIs R0, R11, R1, R11
l951: umlal R9, R5, R11, R12
l952: umlal R6, R4, R3, R12
l953: umlalGT R1, R6, R2, R9
l954: umlal R2, R4, R9, R8
l955: umlal R12, R2, R6, R4
l956: umlal R3, R7, R5, R14
l957: umlalHIs R4, R11, R10, R9
l958: umlalLSs R8, R11, R4, R4
l959: umlal R1, R5, R7, R12
l960: umlal R12, R8, R1, R2
l961: umlalVS R9, R12, R7, R6
l962: umlal R4, R14, R9, R0
l963: umlalLEs R1, R8, R12, R14
l964: umlalGE R1, R8, R3, R4
l965: umlalGEs R3, R4, R11, R8
l966: umlalNE R6, R2, R7, R1
l967: umlal R2, R9, R11, R4
l968: umlalHI R0, R3, R7, R1
l969: umlals R5, R12, R7, R10
l970: umlal R1, R8, R5, R4
l971: umlals R7, R10, R12, R11
l972: umlalMI R10, R4, R2, R4
l973: umlalLEs R12, R14, R4, R7
l974: umlalLSs R9, R8, R3, R4
l975: umlal R4, R7, R0, R10
l976: umlalCS R6, R4, R2, R4
l977: umlalLS R5, R9, R14, R5
l978: umlalNE R3, R1, R8, R10
l979: umlals R9, R11, R10, R0
l980: umlalGE R11, R2, R4, R5
l981: umlalNE R1, R11, R7, R1
l982: umlalGT R7, R2, R3, R5
l983: umlalVC R9, R7, R0, R10
l984: umlalVS R6, R7, R2, R8
l985: umlalNE R12, R11, R9, R2
l986: umlals R9, R4, R10, R14
l987: umlals R11, R7, R8, R6
l988: umlalPL R5, R9, R3, R7
l989: umlalPL R7, R10, R11, R2
l990: umlal R6, R9, R1, R12
l991: umlalLSs R10, R12, R3, R8
l992: umlalCS R10, R1, R14, R8
l993: umlalLSs R12, R6, R2, R12
l994: umlalGE R11, R7, R8, R4
l995: umlals R4, R14, R1, R14
l996: umlalLEs R11, R12, R0, R1
l997: umlal R5, R8, R1, R14
l998: umlalLSs R10, R12, R7, R6
l999: umlals R10, R6, R4, R9
l1000: umlalCC R2, R6, R5, R11
end: b end

