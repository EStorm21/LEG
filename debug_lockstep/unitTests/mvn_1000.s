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
val1: .word 947068410
next1:ldr R2, val2
b next2
val2: .word 2192651216
next2:ldr R3, val3
b next3
val3: .word 2717185117
next3:ldr R4, val4
b next4
val4: .word 1544935358
next4:ldr R5, val5
b next5
val5: .word 3328249622
next5:ldr R6, val6
b next6
val6: .word 2976035906
next6:ldr R7, val7
b next7
val7: .word 1418948095
next7:ldr R8, val8
b next8
val8: .word 1447425375
next8:ldr R9, val9
b next9
val9: .word 2671634805
next9:ldr R10, val10
b next10
val10: .word 4084795866
next10:ldr R11, val11
b next11
val11: .word 4171130332
next11:ldr R12, val12
b next12
val12: .word 2312016038
next12:ldr R14, val14
b next14
val14: .word 1229428976

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3129984083
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2536040128
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3280287757
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 335188458
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3371317469
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 393185168
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3078385732
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2822457997
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3097580665
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1028047202
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1941830681
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2774604472
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2462431150
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 740360624
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3729865519
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3053585637
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 832742699
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2853660007
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1216587962
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2329395396
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1646524381
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mvnLSs R10, #1840
l2: mvnEQ R6, R6
l3: mvnLT R8, R0
l4: mvns R1, R4, ROR R4
l5: mvnGE R0, R11, LSR R3
l6: mvnLSs R7, R9, RRX 
l7: mvnLT R3, R7
l8: mvn R9, R9
l9: mvnLE R6, R2, RRX 
l10: mvns R3, R2
l11: mvnMIs R0, #252
l12: mvn R3, R0, ROR R14
l13: mvnPL R14, R2, LSR R3
l14: mvn R3, R11
l15: mvnGE R6, R4, ASR #2
l16: mvns R6, #3702784
l17: mvns R4, R0, RRX 
l18: mvnPLs R4, R5, ASR #31
l19: mvns R3, R8, ASR R4
l20: mvn R7, #-2147483611
l21: mvns R11, R12, ROR #18
l22: mvn R11, R6, RRX 
l23: mvnGEs R3, #-1627389952
l24: mvn R8, #503316480
l25: mvns R0, R9, LSL R3
l26: mvnPL R0, R8, ROR R0
l27: mvn R7, R9, ROR R11
l28: mvnLTs R2, R8, ROR #11
l29: mvn R12, R12, LSL R2
l30: mvnEQs R8, #13369344
l31: mvn R12, R4, LSL R0
l32: mvnGE R4, #7360
l33: mvns R2, #4128768
l34: mvns R2, #1275068417
l35: mvnLSs R10, R2, RRX 
l36: mvn R0, #265289728
l37: mvnLT R10, R9, RRX 
l38: mvns R4, R11, LSL R8
l39: mvnGE R9, #1879048204
l40: mvn R7, #1006632960
l41: mvnGTs R2, R9, LSL #25
l42: mvnCSs R6, R2, RRX 
l43: mvnHIs R3, R9
l44: mvn R12, R0, LSL R4
l45: mvns R12, R10
l46: mvnHIs R11, R7
l47: mvns R8, R8, LSL R0
l48: mvn R12, R2, LSL R7
l49: mvns R2, R6, RRX 
l50: mvnLS R6, R3
l51: mvnVCs R1, R11, LSL R2
l52: mvnVC R0, R1
l53: mvn R1, R6, LSR R1
l54: mvnLEs R9, R11, ASR R0
l55: mvnVC R1, R11, LSR R7
l56: mvnGTs R6, R3
l57: mvnLTs R12, R2
l58: mvnMIs R6, R2, RRX 
l59: mvnCS R6, R12
l60: mvnVC R2, R8, ROR #6
l61: mvnLSs R10, R15
l62: mvnMIs R1, R7
l63: mvn R4, R12, ASR R2
l64: mvnNE R4, R12, LSL #9
l65: mvnCCs R8, #142606336
l66: mvnVSs R14, R3
l67: mvns R3, R4, ASR R6
l68: mvnLTs R2, R3
l69: mvn R14, R10
l70: mvnVS R8, R10, ASR R7
l71: mvn R2, R10
l72: mvns R5, R8
l73: mvnLTs R5, R10, LSR #0
l74: mvn R2, #3856
l75: mvnVSs R10, R11
l76: mvnLEs R7, R7
l77: mvnCS R1, R2, RRX 
l78: mvns R8, #57344
l79: mvns R12, R12
l80: mvn R0, R5, LSR #27
l81: mvns R4, #266240
l82: mvn R6, R1, LSR #27
l83: mvns R1, R1
l84: mvn R7, R9
l85: mvnLS R11, R1, LSL R0
l86: mvnCSs R0, R8, LSR #21
l87: mvnHIs R12, R2, LSR R3
l88: mvnCC R0, #36864
l89: mvns R10, R5
l90: mvnLT R0, R14
l91: mvns R2, R3, LSR #19
l92: mvn R8, R6, LSR R7
l93: mvns R4, #-1140850687
l94: mvns R7, R3, ASR R1
l95: mvnVCs R0, #3719168
l96: mvn R11, R5, RRX 
l97: mvn R3, #1694498816
l98: mvnHIs R5, #206
l99: mvn R3, R14
l100: mvns R8, R1, RRX 
l101: mvnHI R3, R4
l102: mvn R9, R14, LSL #13
l103: mvnVSs R7, #68
l104: mvnCSs R14, R4
l105: mvns R0, #647168
l106: mvnLTs R12, R9, RRX 
l107: mvnCSs R6, R5, ASR R9
l108: mvnCCs R0, R12, LSL #2
l109: mvnHIs R11, R11, LSL R11
l110: mvns R7, #-1006632958
l111: mvnLS R3, #1040
l112: mvnLE R6, R1, ASR R1
l113: mvnHI R7, R11, ASR R6
l114: mvnVC R12, #205
l115: mvnGE R4, R12, ASR #26
l116: mvn R11, #14336
l117: mvns R6, R15
l118: mvnGT R0, R8, ROR #8
l119: mvn R5, #656
l120: mvnGTs R0, #-805306363
l121: mvnPLs R4, R7
l122: mvnCS R5, #167772160
l123: mvn R5, R4
l124: mvnGTs R10, R10, LSR #6
l125: mvnEQs R3, #1344
l126: mvnNE R1, #-1879048191
l127: mvns R3, #1879048197
l128: mvnLE R1, R9, ROR #20
l129: mvnVCs R2, R3, ROR R7
l130: mvnPLs R4, R3, LSL R2
l131: mvns R3, R6, RRX 
l132: mvnLS R10, R9, RRX 
l133: mvnPLs R0, R8, ASR #2
l134: mvn R9, R9, ROR R5
l135: mvns R1, R0, LSL #0
l136: mvn R5, R1, LSL #5
l137: mvnHIs R2, R8, RRX 
l138: mvns R0, R1
l139: mvns R11, #643072
l140: mvnCSs R10, R0, ASR #22
l141: mvns R5, R7
l142: mvns R5, R5, ASR #17
l143: mvn R4, #196608
l144: mvns R11, R8, ROR R9
l145: mvns R7, R1
l146: mvn R12, R7
l147: mvnGTs R5, #910163968
l148: mvns R5, R9
l149: mvns R11, #43515904
l150: mvnVC R6, R3, RRX 
l151: mvnHI R3, R8
l152: mvnGEs R0, R6, LSL R11
l153: mvns R12, R9, LSR #31
l154: mvns R1, R11, LSL R12
l155: mvnVSs R4, R3, ASR #7
l156: mvnVS R12, R10
l157: mvnEQs R7, R1, ASR R8
l158: mvn R2, #-2013265917
l159: mvnCC R2, R4
l160: mvnLEs R8, R6, RRX 
l161: mvnGEs R6, R8, ASR #27
l162: mvn R4, R15
l163: mvnLS R2, R6
l164: mvnGEs R1, R6, RRX 
l165: mvnNEs R14, R11, ROR #6
l166: mvns R6, R2, ROR #12
l167: mvnLTs R9, #1441792
l168: mvns R12, R6, ROR #22
l169: mvns R6, #18612224
l170: mvnCCs R3, R6, ROR #9
l171: mvn R12, R7, RRX 
l172: mvnNEs R11, R10, ROR #31
l173: mvn R1, #1638400
l174: mvn R2, R14, LSL #27
l175: mvnLT R14, R2, ASR #4
l176: mvnEQ R14, R14
l177: mvnMI R9, R11, ROR #7
l178: mvns R11, R10, ASR R3
l179: mvns R8, R0
l180: mvnCCs R7, R8, LSR R1
l181: mvns R12, R9, LSL #6
l182: mvnMIs R8, R1, LSR #23
l183: mvnVC R3, R5
l184: mvns R9, R8, ROR #8
l185: mvn R5, R11, RRX 
l186: mvns R7, R5
l187: mvn R3, R9, RRX 
l188: mvns R3, R12, RRX 
l189: mvnNEs R3, R2, LSR R12
l190: mvns R5, #222
l191: mvn R9, R6
l192: mvns R2, R5, ROR #8
l193: mvn R4, R10, ROR #24
l194: mvnVS R4, R9, LSR #4
l195: mvnPL R5, #327680
l196: mvnLS R6, R9, ROR #26
l197: mvnMIs R2, R4, ASR R0
l198: mvnNE R7, R15
l199: mvns R3, #48128
l200: mvn R0, R5, ROR #11
l201: mvnVCs R6, #16515072
l202: mvns R3, R12, ROR R11
l203: mvnGTs R0, R14, LSL R5
l204: mvnEQ R6, R10, RRX 
l205: mvnLS R3, #408
l206: mvnCSs R10, R10
l207: mvn R10, #233472
l208: mvnVSs R7, R6, RRX 
l209: mvnLT R5, R9, LSR R1
l210: mvns R8, R10, RRX 
l211: mvnVC R10, R11, LSL #24
l212: mvnMIs R8, R15, ROR #15
l213: mvnNE R12, R11, ROR R6
l214: mvnLT R12, R3
l215: mvnPLs R12, R4, RRX 
l216: mvnNE R0, R2, LSR #12
l217: mvn R14, R15, LSR #12
l218: mvns R11, R14
l219: mvnVC R9, R9
l220: mvnCCs R7, R2, ASR #7
l221: mvnMI R3, R5
l222: mvnVC R3, R9, RRX 
l223: mvn R12, #32512
l224: mvnVS R6, R9
l225: mvnEQs R2, R1
l226: mvnCCs R10, R1, ASR #11
l227: mvnVS R11, R7, ASR R10
l228: mvnHIs R12, R7, LSR #11
l229: mvns R10, R14, LSL R2
l230: mvnLS R14, #1224736768
l231: mvn R11, R2
l232: mvnLE R3, R4, LSR #10
l233: mvn R3, R1, ASR #25
l234: mvnMI R3, #33792
l235: mvn R9, #37486592
l236: mvn R0, R9
l237: mvnGEs R9, R8, ASR R3
l238: mvns R9, R15
l239: mvnCSs R10, #9792
l240: mvnLE R11, #62
l241: mvnCS R12, R9
l242: mvnLS R3, R11, LSL #20
l243: mvnGEs R5, R1, LSR R2
l244: mvn R3, R1, ROR #25
l245: mvnEQs R12, R2, LSL #31
l246: mvn R2, R6
l247: mvnGEs R8, R3, LSR R6
l248: mvnNEs R2, R11
l249: mvns R14, #1610612740
l250: mvnMI R10, R2, LSR R12
l251: mvnNEs R4, #-2080374781
l252: mvnCS R9, #1811939328
l253: mvnVC R4, R8
l254: mvnGEs R3, R4, LSR R0
l255: mvns R9, R3
l256: mvnVC R4, R10, ROR R8
l257: mvn R10, R7
l258: mvnMIs R2, R1, LSL #24
l259: mvn R3, R8, ASR R6
l260: mvnLS R10, #0
l261: mvnGE R3, R7
l262: mvnHIs R4, #480
l263: mvnLTs R10, R2, LSL R11
l264: mvnHI R12, R5
l265: mvnLSs R14, R2, LSL R14
l266: mvns R1, R9
l267: mvnLT R4, #60030976
l268: mvns R8, R2, LSR #29
l269: mvn R8, R10
l270: mvnPLs R12, R2
l271: mvns R7, #1968
l272: mvn R10, R14, LSL R12
l273: mvnVS R3, R0, RRX 
l274: mvn R10, R1, LSL #20
l275: mvnLE R6, R5, ROR R6
l276: mvns R7, R0, LSR #18
l277: mvnPL R12, #18874368
l278: mvns R14, #55574528
l279: mvns R1, #2130706432
l280: mvnVC R9, R12, RRX 
l281: mvnGTs R0, R5
l282: mvn R10, R1, ROR R3
l283: mvnHIs R5, R6, LSR #25
l284: mvnVS R7, R7, LSR R11
l285: mvnVC R3, R3, ASR R11
l286: mvns R2, R5
l287: mvnVC R6, R14, LSR R10
l288: mvns R11, R9
l289: mvnMIs R8, #394264576
l290: mvnVS R3, R10, ROR #11
l291: mvnNE R14, R0, LSR #19
l292: mvn R8, #-1660944384
l293: mvns R8, R9, ROR R7
l294: mvnHI R5, R3, LSR #16
l295: mvns R1, R2, ASR #28
l296: mvn R12, R5, ASR #14
l297: mvns R0, #59768832
l298: mvnCS R4, #1933312
l299: mvnPL R1, R6
l300: mvnMIs R1, R2, LSL R4
l301: mvnPL R8, R2, ASR R6
l302: mvnMI R1, R8, ROR R14
l303: mvns R9, R7, ROR #30
l304: mvnVSs R8, R5, LSR #28
l305: mvns R12, R14
l306: mvns R1, #160
l307: mvnVSs R1, R1, ASR R9
l308: mvnCSs R9, R12, LSR R3
l309: mvnLT R10, R9
l310: mvnLEs R5, R15, LSR #20
l311: mvnMI R14, #17408
l312: mvnLSs R11, R0
l313: mvn R11, R10, ROR R2
l314: mvn R4, R15
l315: mvnCC R3, #956
l316: mvn R7, R10, LSL R8
l317: mvn R8, R4, RRX 
l318: mvns R4, R15, RRX 
l319: mvns R0, R2, ROR #26
l320: mvnEQs R14, #4736
l321: mvns R4, R1, ASR #23
l322: mvns R5, #167
l323: mvns R8, R12
l324: mvn R7, R4
l325: mvnNE R7, R9
l326: mvnPL R1, R0
l327: mvnCCs R7, R9
l328: mvnVS R12, R12, ROR #17
l329: mvnVSs R14, #37486592
l330: mvnLTs R7, R12, LSL R11
l331: mvnGEs R8, R7
l332: mvns R8, #1312
l333: mvn R10, R8, LSR #19
l334: mvnHIs R6, #7536640
l335: mvnCCs R4, R8, ROR #16
l336: mvn R0, #805306368
l337: mvnVS R14, R1
l338: mvnGEs R6, R0, RRX 
l339: mvn R5, R9, ASR R12
l340: mvnLEs R12, R14
l341: mvnNE R2, R4, ASR R9
l342: mvnHI R0, R0, RRX 
l343: mvnHI R7, R9
l344: mvnHI R9, R2
l345: mvnLTs R6, R10
l346: mvns R3, R10
l347: mvns R4, R0
l348: mvnGTs R6, R0
l349: mvnLT R3, R3
l350: mvns R0, R1
l351: mvns R1, R2
l352: mvns R3, R6, LSL #20
l353: mvnHI R3, R2, LSR #27
l354: mvns R3, R4
l355: mvns R8, R9
l356: mvnNE R12, R3, ASR #9
l357: mvn R6, R5
l358: mvnEQ R0, R6, RRX 
l359: mvnVSs R2, R4
l360: mvn R7, R0, LSR R2
l361: mvnLSs R9, #4608
l362: mvnCC R10, #14221312
l363: mvn R0, R15
l364: mvnCCs R10, R5, RRX 
l365: mvns R3, R8
l366: mvnHIs R1, #-268435456
l367: mvnLE R8, R10, RRX 
l368: mvnLTs R9, R8, ROR #25
l369: mvn R4, R7, LSR #29
l370: mvnVC R6, R14
l371: mvnLT R12, #162
l372: mvns R14, #-100663296
l373: mvn R9, R14, LSR #11
l374: mvnEQs R9, R14, RRX 
l375: mvnMIs R0, R9, ASR #0
l376: mvnNEs R10, R12, RRX 
l377: mvnLTs R5, R5, ASR R7
l378: mvnLE R5, #1073741886
l379: mvnLE R1, #856064
l380: mvn R1, R9, LSL #1
l381: mvnGE R0, R5, LSR R12
l382: mvns R1, R9, RRX 
l383: mvn R9, #63
l384: mvnGTs R2, R9
l385: mvn R2, R5, RRX 
l386: mvnHIs R12, R11
l387: mvn R1, R8, LSR #15
l388: mvnNEs R0, R8, ROR R8
l389: mvnVCs R14, R5
l390: mvnCC R4, #-2046820352
l391: mvnLSs R12, R1, LSL R4
l392: mvn R8, R9, LSR R5
l393: mvn R11, R2, LSR #29
l394: mvnEQs R1, R8, LSL #25
l395: mvnHIs R12, R6, ROR #29
l396: mvnVC R12, R3, ASR R7
l397: mvnLEs R14, R1, RRX 
l398: mvnPL R10, #4014080
l399: mvns R9, R7, ROR #7
l400: mvnLE R1, R15, ROR #21
l401: mvn R10, R6, LSL R7
l402: mvns R7, #34816
l403: mvns R4, #6656
l404: mvn R2, #14464
l405: mvns R10, R14, ASR #10
l406: mvn R2, R5, ROR #23
l407: mvnLSs R11, R10, LSR R3
l408: mvns R0, #-570425344
l409: mvnNEs R3, #1073741858
l410: mvnMI R9, R6, LSR R6
l411: mvnVCs R11, R4, ASR #16
l412: mvnVSs R0, R11, LSL #13
l413: mvnLTs R6, R14
l414: mvn R0, R2, ASR R4
l415: mvnVCs R14, R2
l416: mvn R6, #2352
l417: mvn R1, R5, LSL R10
l418: mvnCS R6, R8, RRX 
l419: mvnCSs R8, R12, LSL R9
l420: mvnHI R0, R0, RRX 
l421: mvnGTs R12, #687865856
l422: mvnLTs R5, R4, RRX 
l423: mvnCCs R11, R2, RRX 
l424: mvnLEs R1, R10
l425: mvnHI R0, R1, LSL R10
l426: mvnVSs R12, R7
l427: mvnCCs R1, R8, ROR #26
l428: mvnLTs R4, R9, ASR #13
l429: mvnGEs R4, #494927872
l430: mvnLT R4, #-1677721599
l431: mvns R10, #419430400
l432: mvn R2, R14, ROR R11
l433: mvnGE R7, R6, RRX 
l434: mvnNEs R6, R15
l435: mvns R10, #-1073741786
l436: mvn R8, R4, ROR R1
l437: mvnPL R6, R8, ROR R3
l438: mvnPL R8, R12, RRX 
l439: mvn R5, R0, LSL R2
l440: mvnHI R0, R12
l441: mvns R0, R2, ASR #9
l442: mvnLS R2, R10, ROR #25
l443: mvnLS R14, R15
l444: mvns R10, R10
l445: mvnMIs R4, R3
l446: mvnHIs R14, #222208
l447: mvnLEs R5, R0, ROR R10
l448: mvn R14, R4, ASR #28
l449: mvns R4, R3, RRX 
l450: mvn R12, R5
l451: mvn R5, #360448
l452: mvns R14, R0, ASR #19
l453: mvnMI R11, R7, ROR R6
l454: mvnCC R10, #956301312
l455: mvns R10, R10, ROR R14
l456: mvnEQs R7, R14, ROR #16
l457: mvnLE R11, R2
l458: mvn R4, #393216
l459: mvnPLs R5, R11, ASR R9
l460: mvnNEs R9, R8
l461: mvns R8, R14, LSR #15
l462: mvnLS R3, R0, LSR #28
l463: mvnVC R9, R3
l464: mvn R6, R0
l465: mvnLTs R5, R0
l466: mvn R0, R11, ASR R2
l467: mvns R8, R9, ASR #29
l468: mvnGEs R0, R0, LSR R8
l469: mvn R10, #-2147483609
l470: mvnLTs R10, R7
l471: mvn R8, R7, RRX 
l472: mvnVCs R10, R1, ASR #24
l473: mvn R12, R11
l474: mvnPLs R6, #176128
l475: mvnEQs R11, R12, RRX 
l476: mvnGE R0, R2, LSR R8
l477: mvn R1, R6, LSR #16
l478: mvnHIs R6, R7
l479: mvnEQ R4, #201326592
l480: mvnHI R9, R3, ROR R14
l481: mvns R5, R6, ROR #22
l482: mvn R8, R12
l483: mvn R8, R5
l484: mvnLEs R8, R7, ASR R7
l485: mvns R9, R3, LSL R8
l486: mvnHIs R11, R7, LSL R10
l487: mvnCSs R12, #1073741830
l488: mvns R6, #55574528
l489: mvnHI R4, R14, LSL R5
l490: mvnEQ R10, R0, ASR #21
l491: mvnNE R9, R9
l492: mvnPL R4, R10, RRX 
l493: mvnLT R10, #154624
l494: mvnLS R5, #3932160
l495: mvns R14, R10, RRX 
l496: mvn R1, R9, RRX 
l497: mvns R3, #856064
l498: mvns R11, R7
l499: mvn R8, R3, LSR #31
l500: mvn R11, R14
l501: mvnHIs R4, R8, ROR #13
l502: mvnEQ R9, R5
l503: mvns R8, #496
l504: mvn R6, R2, LSL R9
l505: mvnCC R0, #802816
l506: mvns R6, #185
l507: mvnEQs R1, #64
l508: mvn R6, R0, LSL R2
l509: mvnLEs R4, #855638016
l510: mvnLE R6, #17
l511: mvnPL R6, R8
l512: mvn R7, R3, ROR R5
l513: mvnPL R4, R4, LSR #22
l514: mvnVS R12, R11
l515: mvnLT R9, R7, ROR #11
l516: mvns R1, R1, LSL R6
l517: mvnPL R7, R6
l518: mvns R5, R2, ASR R9
l519: mvnGEs R12, R5, LSL R9
l520: mvns R3, #48758784
l521: mvn R10, R11
l522: mvnLSs R0, R14
l523: mvnCCs R14, R5, ROR #7
l524: mvnMI R11, R6, ASR R5
l525: mvnCCs R14, R12, LSL R1
l526: mvnGEs R4, R4, RRX 
l527: mvns R3, #2624
l528: mvnVCs R12, #40960
l529: mvnPL R8, R9, RRX 
l530: mvnVSs R6, R8, ASR #2
l531: mvns R10, R2, LSR #27
l532: mvnEQ R7, R14
l533: mvnEQs R11, R15, ASR #4
l534: mvns R12, R8, RRX 
l535: mvn R5, R12, LSR R4
l536: mvnVC R6, R0, ASR R8
l537: mvnLTs R14, #765952
l538: mvn R9, R3
l539: mvnMIs R14, R9, ROR #5
l540: mvnLS R11, R2, LSR R14
l541: mvnPL R8, R0
l542: mvnVCs R6, #16192
l543: mvn R3, R7, ROR R1
l544: mvn R10, R7, ROR R3
l545: mvnLS R0, R0, RRX 
l546: mvnNE R12, R9, LSR #11
l547: mvnHI R11, R4
l548: mvnMI R12, R7, ASR #19
l549: mvns R5, R2, LSL R1
l550: mvnLT R5, R0, ROR R10
l551: mvnVCs R11, R7
l552: mvnNEs R14, #-2130706432
l553: mvns R3, #1946157056
l554: mvnCS R2, R6
l555: mvn R2, #46137344
l556: mvns R2, R12, RRX 
l557: mvnCC R2, #-2147483646
l558: mvnMIs R1, R4, LSR #4
l559: mvnCS R1, R3, RRX 
l560: mvnGT R10, R3, ASR #10
l561: mvns R11, R6, ASR #24
l562: mvns R5, R7, LSR R1
l563: mvnCSs R3, R11, ROR R14
l564: mvnCCs R7, R9
l565: mvnCS R9, R14, RRX 
l566: mvnGE R8, R8, LSL #6
l567: mvnCS R12, R8, RRX 
l568: mvnGT R8, R4, LSL #30
l569: mvns R10, R10, ROR #7
l570: mvnPLs R5, R4, ASR #19
l571: mvns R4, R2, ASR R6
l572: mvnCS R10, #772
l573: mvnCSs R8, R10, ASR R0
l574: mvns R4, R12
l575: mvnCS R6, #6656
l576: mvns R3, R5, RRX 
l577: mvnHI R9, R4
l578: mvn R3, R8, ASR R6
l579: mvnMI R11, R14
l580: mvnLSs R12, R7, LSL #20
l581: mvnCS R12, R8
l582: mvnCC R9, R1, LSL R5
l583: mvns R2, R6, RRX 
l584: mvnGT R11, R2, LSL #4
l585: mvnCCs R4, R7, ROR R12
l586: mvnPLs R10, R0, RRX 
l587: mvnGEs R12, R9
l588: mvn R11, R4, RRX 
l589: mvnNEs R0, #-1811939328
l590: mvns R7, R11, LSR R4
l591: mvnCSs R0, #58368
l592: mvnLE R9, R15
l593: mvnPL R2, #13248
l594: mvns R9, R1, LSL #12
l595: mvns R1, #-1073741775
l596: mvns R3, #1008
l597: mvnLE R10, R2
l598: mvns R4, #939524098
l599: mvnLE R12, #1996488704
l600: mvn R8, R11, ROR #11
l601: mvns R0, #13632
l602: mvn R8, R9, ROR #20
l603: mvnEQs R5, R0, ASR R3
l604: mvns R8, R15, LSR #30
l605: mvnVS R5, R10, ROR #29
l606: mvnEQs R9, R9, ROR #8
l607: mvnLE R10, R2
l608: mvnGE R7, R10, RRX 
l609: mvn R5, R5, LSL #21
l610: mvn R3, R14, ASR R3
l611: mvnVS R9, R10, ASR R7
l612: mvns R7, R14
l613: mvnCC R6, R3, RRX 
l614: mvns R10, R0, ROR R12
l615: mvn R9, R10
l616: mvnPLs R8, R7
l617: mvnLEs R9, R3, ASR R7
l618: mvnLTs R5, R8
l619: mvn R2, R10, LSL R6
l620: mvnLS R4, R2
l621: mvnLS R9, R5, LSL #29
l622: mvns R10, #628
l623: mvns R1, R1
l624: mvnMIs R6, R6, RRX 
l625: mvn R3, R8, ROR R11
l626: mvns R5, #3473408
l627: mvnLS R14, R3
l628: mvnCS R12, R8, LSR #0
l629: mvnCS R14, R3
l630: mvnCSs R5, R12, LSL #30
l631: mvns R1, R2, ASR R3
l632: mvnPL R2, R15
l633: mvnVS R2, R2
l634: mvnGTs R6, R7
l635: mvnCC R0, R14, LSL #14
l636: mvns R8, #10816
l637: mvns R11, R12, ASR R2
l638: mvnEQs R1, R8, RRX 
l639: mvns R3, R11
l640: mvn R5, R3, LSL #16
l641: mvnLTs R9, R7, LSL R12
l642: mvn R6, R5, ASR R5
l643: mvnGE R14, R7, LSL #20
l644: mvnEQ R8, R11, LSL #9
l645: mvns R6, R2, RRX 
l646: mvnGTs R2, R10
l647: mvnMI R6, R14
l648: mvnVS R9, #-2147483622
l649: mvnVCs R3, #805306377
l650: mvn R14, R1
l651: mvnCCs R14, R3
l652: mvn R0, R8, LSR R0
l653: mvnLSs R11, R15
l654: mvn R7, R8, RRX 
l655: mvn R8, #-1610612725
l656: mvns R1, R10, ASR #10
l657: mvns R8, R6, LSL #20
l658: mvnVS R0, #-2147483639
l659: mvn R8, R10
l660: mvn R6, R4, LSR R12
l661: mvn R11, R9
l662: mvnCC R8, R2
l663: mvns R3, #260046848
l664: mvn R8, R14, ROR R1
l665: mvnGT R5, #406847488
l666: mvnCCs R7, R6, ROR #17
l667: mvnLS R5, R15, LSR #20
l668: mvnPLs R12, #31
l669: mvn R6, R0
l670: mvnVCs R10, R4, ROR R11
l671: mvnMI R1, R7
l672: mvnGTs R1, R0, LSR R11
l673: mvnLS R4, #212992
l674: mvn R6, R15
l675: mvnVSs R8, R14, ASR R3
l676: mvns R2, R10, ROR #4
l677: mvn R10, R4
l678: mvnPLs R1, R0
l679: mvns R2, #265289728
l680: mvnCCs R0, R10
l681: mvnCC R7, R2, LSL #11
l682: mvns R6, R4, LSL #23
l683: mvn R1, R12
l684: mvns R5, R3, ROR R8
l685: mvnVC R0, R7
l686: mvnVSs R10, R6, LSL #11
l687: mvnCC R0, R5, ASR #27
l688: mvnLTs R6, R15, ROR #7
l689: mvnMI R3, R6, LSR R5
l690: mvnCSs R14, R7, ASR #6
l691: mvns R7, R6, RRX 
l692: mvnHIs R6, R11, LSR R2
l693: mvnLT R7, R4, RRX 
l694: mvnVC R7, R1, ROR R9
l695: mvn R8, #339968
l696: mvnGEs R5, #43
l697: mvns R0, R6, LSR #18
l698: mvnCSs R1, R11, ROR #19
l699: mvn R12, R3, RRX 
l700: mvns R11, #24
l701: mvn R10, #947912704
l702: mvnGTs R7, #175104
l703: mvnMIs R6, #143654912
l704: mvnCSs R7, R3, ASR #29
l705: mvnGT R3, R15
l706: mvnGTs R12, #247463936
l707: mvns R2, #-536870911
l708: mvnCS R6, R11
l709: mvnVS R4, R10, ASR #29
l710: mvnNEs R0, #389120
l711: mvn R10, #-671088638
l712: mvnGE R0, #240123904
l713: mvns R8, R15, ROR #25
l714: mvnGEs R0, R5
l715: mvnGE R7, R12, LSL #20
l716: mvns R8, R14, RRX 
l717: mvnHIs R5, R7, ROR R0
l718: mvn R4, R6, LSR #2
l719: mvn R2, R9, ROR R12
l720: mvns R2, R14, ROR #17
l721: mvnCSs R3, #6684672
l722: mvns R9, R0
l723: mvnEQ R4, R14, LSR R9
l724: mvnHIs R9, #-1006632959
l725: mvn R9, R1, ROR R11
l726: mvns R0, R11, LSL R6
l727: mvnVSs R10, R3, ASR R9
l728: mvnLSs R14, R0
l729: mvn R7, R4, ASR #14
l730: mvns R2, #2375680
l731: mvns R5, #4992
l732: mvnNE R1, R9
l733: mvnMI R12, R4
l734: mvnVS R6, R7
l735: mvn R9, R15
l736: mvns R12, #-268435454
l737: mvnHI R11, R5, RRX 
l738: mvn R3, R5, LSR #10
l739: mvns R3, R3, LSL #31
l740: mvns R14, R8
l741: mvns R6, R1
l742: mvnLEs R8, R0, RRX 
l743: mvnCC R5, #-2147483644
l744: mvns R8, R3, ASR R12
l745: mvns R8, R6, ROR #5
l746: mvn R6, R12, ASR #14
l747: mvnGEs R8, R6
l748: mvnGE R3, R1, LSL R0
l749: mvn R11, R11, RRX 
l750: mvnGT R6, #1073741880
l751: mvnMIs R2, R6, LSL #17
l752: mvnCCs R10, R14, LSL #10
l753: mvnLT R10, R1, RRX 
l754: mvns R0, R4, LSL R1
l755: mvns R6, R6, ASR #21
l756: mvnLS R14, R11, RRX 
l757: mvnMIs R9, R8, ASR R1
l758: mvnLT R3, R4
l759: mvnEQ R5, R2, RRX 
l760: mvn R14, R10, ROR R10
l761: mvn R4, R14
l762: mvnLEs R6, R1
l763: mvns R10, #10813440
l764: mvnHIs R14, #1360
l765: mvnMIs R1, #-2147483645
l766: mvns R2, R2, RRX 
l767: mvn R10, R7, LSL #6
l768: mvns R12, #281018368
l769: mvnLEs R6, R0
l770: mvn R6, R1, ROR #21
l771: mvns R3, #11520
l772: mvnCC R4, R8, RRX 
l773: mvnMI R1, R3, ASR R2
l774: mvnNEs R1, R2
l775: mvnMIs R1, R14, LSR #21
l776: mvn R7, R14, RRX 
l777: mvnNEs R11, R3, ROR #7
l778: mvn R6, #1179648
l779: mvns R11, R12, ROR R4
l780: mvnLSs R4, R6, ASR R12
l781: mvnHI R8, #931135488
l782: mvns R0, R5
l783: mvn R10, R14, LSL #21
l784: mvnLT R9, R8, ROR #8
l785: mvnGTs R11, R15
l786: mvnGTs R5, #10878976
l787: mvnVS R14, #94208
l788: mvnGE R10, R11
l789: mvns R0, #176
l790: mvn R5, R2, ROR R12
l791: mvnLS R3, R0, ASR R5
l792: mvnLTs R5, #1828716544
l793: mvnGE R8, R3, LSR R0
l794: mvns R14, #1610612745
l795: mvnMIs R12, R4
l796: mvn R4, R15, ROR #16
l797: mvnMIs R1, R3, ROR R11
l798: mvns R6, R6
l799: mvn R8, R0, RRX 
l800: mvnHI R9, R4
l801: mvn R8, R1, RRX 
l802: mvnCSs R14, R5
l803: mvn R12, #53504
l804: mvnNEs R8, R7
l805: mvns R9, #688
l806: mvnGT R3, R9, ROR #25
l807: mvns R6, R10
l808: mvnCS R14, R7, LSR R9
l809: mvn R3, #293601280
l810: mvns R5, #784334848
l811: mvnCCs R6, R2
l812: mvns R9, #1376
l813: mvnPL R5, R4
l814: mvns R14, R8, ROR #25
l815: mvn R0, R14
l816: mvnPL R2, R8, LSR R8
l817: mvnVCs R11, R9, RRX 
l818: mvns R5, #-1409286144
l819: mvnLE R0, R0
l820: mvnNEs R8, R0, ROR R10
l821: mvnLT R11, #851968
l822: mvns R6, R15
l823: mvns R2, R7, ROR #14
l824: mvns R11, R4
l825: mvnEQs R2, #-1845493760
l826: mvns R3, R14, LSL R11
l827: mvn R4, R5, LSL #23
l828: mvnGE R10, R2, LSL R5
l829: mvnPL R8, R6, RRX 
l830: mvns R14, #60817408
l831: mvnGE R0, R0
l832: mvns R5, R2, ROR R5
l833: mvnGT R7, R4, LSR #11
l834: mvns R7, #1000
l835: mvns R14, R14, ASR #1
l836: mvn R0, #138412032
l837: mvnGEs R8, R7
l838: mvnCCs R2, R6, LSR R3
l839: mvnHI R10, R3, ROR R5
l840: mvnLTs R11, R10, ROR #17
l841: mvnLE R9, #110
l842: mvnLE R0, R6, LSR R5
l843: mvn R11, #2592
l844: mvnVSs R0, #562036736
l845: mvns R1, #4194304
l846: mvnHIs R7, #33554432
l847: mvnLE R14, R7, RRX 
l848: mvn R4, #268435457
l849: mvnCSs R6, R9
l850: mvnVSs R6, #81788928
l851: mvnVS R11, R11
l852: mvns R6, R14
l853: mvnLEs R5, R14
l854: mvn R8, R7, ROR R4
l855: mvnHIs R8, R10, ROR R8
l856: mvn R2, R5, RRX 
l857: mvns R11, R10, ASR #26
l858: mvn R6, R3, ROR R14
l859: mvns R1, R11, LSR R3
l860: mvnLT R10, #111616
l861: mvns R1, #3325952
l862: mvn R6, R14
l863: mvnCCs R1, R9, ASR R7
l864: mvnPLs R3, R1, LSR R3
l865: mvnLS R4, R5
l866: mvnCCs R3, R2, ASR #21
l867: mvnEQs R0, R6, ASR R11
l868: mvns R6, R3, LSL #19
l869: mvnHIs R5, R4, RRX 
l870: mvn R1, #412
l871: mvnMIs R3, #3456
l872: mvns R1, R5
l873: mvnHI R3, R10
l874: mvns R9, R12, LSL R4
l875: mvnLEs R9, #214958080
l876: mvns R1, R7
l877: mvns R10, R0
l878: mvnCC R1, R11, ROR R10
l879: mvnVSs R1, #30
l880: mvnLTs R11, #8126464
l881: mvn R4, R10
l882: mvns R7, R10, ASR R10
l883: mvns R6, R11, ROR R2
l884: mvn R7, #-1073741806
l885: mvnPL R11, R3, LSL R6
l886: mvn R7, R14
l887: mvnEQ R14, R0
l888: mvnVCs R4, R1, ASR R14
l889: mvnGTs R8, #671088641
l890: mvnCCs R14, R3, LSR R12
l891: mvnNEs R12, R5, ASR #1
l892: mvnPLs R10, #21248
l893: mvn R8, R7, LSL R6
l894: mvnVS R9, R15, LSL #2
l895: mvn R14, R11
l896: mvnPL R2, #79
l897: mvn R9, R4, RRX 
l898: mvns R4, #159383552
l899: mvn R14, R10
l900: mvnCC R2, R0
l901: mvnEQ R14, #828
l902: mvns R0, R10, ROR R4
l903: mvns R14, #168960
l904: mvns R5, R2, RRX 
l905: mvnGTs R11, R2
l906: mvns R8, R9
l907: mvns R3, #61865984
l908: mvns R1, R6
l909: mvnNEs R11, R3, RRX 
l910: mvnLEs R4, R14, LSL R12
l911: mvns R0, R5, RRX 
l912: mvns R5, R15, LSR #17
l913: mvnMIs R12, R10, LSL R7
l914: mvnLTs R6, R0
l915: mvn R8, R14, ROR #16
l916: mvnMI R11, #95420416
l917: mvnPLs R8, R1, RRX 
l918: mvnGE R5, R8, ROR #30
l919: mvnGT R6, R5, LSR #6
l920: mvns R5, #553648128
l921: mvnEQ R4, R7, ROR R2
l922: mvn R4, R2, LSR #25
l923: mvnCSs R9, R5, RRX 
l924: mvnLTs R14, R10, ROR R14
l925: mvnCC R10, R12
l926: mvns R3, R6, ROR #5
l927: mvnVS R5, R3, LSR R12
l928: mvnCC R9, R6
l929: mvns R12, R7, RRX 
l930: mvnHIs R4, #-2147483632
l931: mvns R10, R4, RRX 
l932: mvnLS R6, R11, LSR #8
l933: mvn R5, R5, ASR #31
l934: mvnEQs R6, R8, LSR R3
l935: mvns R6, #189792256
l936: mvn R14, R3, ASR #7
l937: mvnNE R8, R3, LSR R11
l938: mvnEQ R10, R15, RRX 
l939: mvns R9, #175112192
l940: mvnGT R9, #60416
l941: mvnVSs R12, R1, LSR R9
l942: mvnCS R6, R14, ROR R10
l943: mvnCC R3, R2, LSL #8
l944: mvnMIs R9, R14, LSR #13
l945: mvns R10, R0, ASR #5
l946: mvnVSs R6, #450560
l947: mvns R8, #4864
l948: mvnLEs R8, R2, RRX 
l949: mvnLT R1, R11
l950: mvn R0, #2176
l951: mvnPLs R6, R7
l952: mvnCS R7, #57344
l953: mvnLSs R6, R8
l954: mvns R11, #6684672
l955: mvnPL R9, #29696
l956: mvns R3, #83
l957: mvn R10, R9
l958: mvn R7, R0, ROR #13
l959: mvns R2, R1
l960: mvn R3, R4, LSL R7
l961: mvns R8, R11
l962: mvn R3, R4
l963: mvnEQ R8, #123731968
l964: mvnVCs R7, R6, LSL #16
l965: mvnVC R9, R0, LSL #10
l966: mvnLEs R1, #684032
l967: mvn R9, R14, ASR R7
l968: mvnMIs R0, R12
l969: mvnEQs R10, #-2147483637
l970: mvnEQs R9, R1
l971: mvnGT R10, #1392508928
l972: mvnVS R14, R2, ASR R10
l973: mvnGEs R11, #38797312
l974: mvnCC R5, R4, ROR #19
l975: mvnGTs R2, R5, ASR R1
l976: mvns R3, R4, LSL R0
l977: mvnLT R7, R3, ASR R14
l978: mvnLS R6, R8, ASR R2
l979: mvnLS R6, R8, RRX 
l980: mvnLE R9, R5, LSR #23
l981: mvnMIs R2, R6, LSL R0
l982: mvns R12, R11, LSL R11
l983: mvnPL R4, #-1073741818
l984: mvnVS R0, R8, ASR #0
l985: mvn R3, R12
l986: mvnMI R2, R9, ASR R0
l987: mvnCSs R2, R11, ROR #29
l988: mvnLSs R12, #2342912
l989: mvns R1, #1879048204
l990: mvnPL R7, #-2147483648
l991: mvn R10, R15, LSL #18
l992: mvnCSs R4, R5, LSL R4
l993: mvn R2, R3, LSR R7
l994: mvnNE R0, R11, RRX 
l995: mvnGTs R7, #15925248
l996: mvnGTs R1, #3932160
l997: mvns R14, #692224
l998: mvns R0, R4
l999: mvn R0, #12736
l1000: mvnPLs R1, R5
end: b end

