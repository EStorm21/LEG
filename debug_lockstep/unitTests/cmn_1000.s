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
val1: .word 3438542595
next1:ldr R2, val2
b next2
val2: .word 3421579722
next2:ldr R3, val3
b next3
val3: .word 3429910830
next3:ldr R4, val4
b next4
val4: .word 1441944005
next4:ldr R5, val5
b next5
val5: .word 1049960048
next5:ldr R6, val6
b next6
val6: .word 3690624048
next6:ldr R7, val7
b next7
val7: .word 880948836
next7:ldr R8, val8
b next8
val8: .word 1358013612
next8:ldr R9, val9
b next9
val9: .word 1084968320
next9:ldr R10, val10
b next10
val10: .word 3298573093
next10:ldr R11, val11
b next11
val11: .word 699476938
next11:ldr R12, val12
b next12
val12: .word 1856022463
next12:ldr R14, val14
b next14
val14: .word 3801478811

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3987430044
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3263692886
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 2865361256
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1121340423
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 4288751805
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 266791781
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2519635355
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3545380518
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3390259891
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 41035003
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2330518078
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2193124086
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2333137781
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2805000265
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2243669200
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 4109083435
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 568219022
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3121581571
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 405023889
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1590363455
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 222207562
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: cmnPL R15, R14
l2: cmnLE R0, R12
l3: cmnGE R1, R9
l4: cmnCS R4, R5, ASR #23
l5: cmnPL R9, #42205184
l6: cmnCC R6, R12, LSL #9
l7: cmnLE R0, R11, LSL R1
l8: cmnVC R15, #-536870897
l9: cmnLE R12, R7, ASR R4
l10: cmnMI R12, #33816576
l11: cmnVC R3, R6, LSL #16
l12: cmnMI R11, R11, LSL R14
l13: cmnCS R14, #822083584
l14: cmnMI R1, R10, ROR #19
l15: cmn R11, R14, LSL #5
l16: cmnCS R10, R4
l17: cmn R10, R12, ROR #26
l18: cmn R3, R3, ROR R11
l19: cmnVS R2, #1879048195
l20: cmn R7, R9
l21: cmnGT R5, R11
l22: cmnHI R1, R14
l23: cmn R5, R11, LSR #9
l24: cmn R14, R5, LSR R5
l25: cmnLS R2, R15, RRX 
l26: cmnVS R14, R15, ROR #1
l27: cmn R6, R3
l28: cmnGE R11, R15, ROR #22
l29: cmn R10, #1245184
l30: cmn R4, R5, RRX 
l31: cmnGT R1, R14
l32: cmnLS R0, R12, ASR R10
l33: cmnLT R14, R14
l34: cmn R7, R5, LSR R12
l35: cmnLT R7, R9, RRX 
l36: cmnHI R3, #181
l37: cmn R11, R11, LSL #22
l38: cmnCS R5, R8, LSR R0
l39: cmnVS R9, R7
l40: cmn R1, R15, LSR #19
l41: cmn R12, #3904
l42: cmn R5, R10
l43: cmn R4, R10
l44: cmnCC R1, R11, ASR R14
l45: cmn R2, R7, ROR #16
l46: cmnCS R2, #-1744830464
l47: cmnEQ R10, #796
l48: cmn R6, R10, ASR #14
l49: cmn R5, R9, ASR #24
l50: cmn R2, R10
l51: cmn R4, R0, LSR #30
l52: cmn R4, R12
l53: cmn R10, R5
l54: cmn R12, R2, LSR #9
l55: cmn R6, #704
l56: cmnMI R14, R7, LSR #21
l57: cmnCS R15, R10, LSL #12
l58: cmnEQ R0, R8, ROR #26
l59: cmnHI R15, R12, LSL #13
l60: cmnNE R5, R2
l61: cmnHI R7, R6, ASR R14
l62: cmn R7, #36
l63: cmn R11, R7
l64: cmn R5, R10
l65: cmnEQ R14, #-738197501
l66: cmnPL R1, R12, LSR R7
l67: cmnNE R5, R8, ASR #31
l68: cmn R9, R1, LSR #7
l69: cmn R8, #200278016
l70: cmnLS R10, R5
l71: cmn R9, R4, LSL R5
l72: cmnNE R5, R0
l73: cmnMI R8, R11, LSR R11
l74: cmnCC R0, R15, ROR #28
l75: cmnHI R4, R14, ASR #7
l76: cmn R12, #11272192
l77: cmn R12, R14, LSL R1
l78: cmnVC R9, R11
l79: cmn R8, R11, ASR R1
l80: cmnVC R2, R11, ROR R1
l81: cmn R8, R5, LSL R9
l82: cmn R7, #22528
l83: cmn R4, R2, ASR #3
l84: cmn R11, #805306371
l85: cmnLE R2, R7, ASR R0
l86: cmn R1, R1
l87: cmnGT R6, R4, RRX 
l88: cmnNE R14, R11, ASR #19
l89: cmnCS R4, R15, LSL #12
l90: cmn R12, R7, ROR R11
l91: cmnCS R12, #409600
l92: cmn R12, #11904
l93: cmn R4, R8, LSR #30
l94: cmnHI R3, R0
l95: cmnNE R9, R2
l96: cmn R10, R3, LSL #22
l97: cmnLT R14, R9
l98: cmn R1, #1052770304
l99: cmnLE R0, R2
l100: cmn R10, R12
l101: cmnEQ R15, #630784
l102: cmnVC R1, R0, ROR #12
l103: cmn R12, R2, ROR R9
l104: cmnMI R9, #-1073741801
l105: cmn R7, #1073741829
l106: cmnEQ R0, R9
l107: cmn R1, R9, ROR R7
l108: cmnGE R8, R1, LSL R10
l109: cmnHI R14, R2, ROR R12
l110: cmnNE R2, R2, ROR R0
l111: cmn R2, R12, RRX 
l112: cmnLT R15, R1
l113: cmnPL R4, R12
l114: cmnEQ R7, R5
l115: cmnNE R12, #36864
l116: cmn R0, #45613056
l117: cmn R8, R15, ASR #19
l118: cmn R12, R7
l119: cmn R7, #258048
l120: cmnLS R10, R3, ASR R4
l121: cmn R2, #561152
l122: cmnEQ R3, R14, RRX 
l123: cmn R11, R4, RRX 
l124: cmnMI R10, R7, ROR R7
l125: cmnGE R11, R4, ROR R7
l126: cmnPL R12, R15, LSR #18
l127: cmnMI R6, R1, LSR #6
l128: cmn R8, #-1879048179
l129: cmn R12, R1, LSL R2
l130: cmnCC R7, R3, ROR R8
l131: cmnHI R7, R10, ROR #21
l132: cmn R12, #169
l133: cmnNE R5, R2
l134: cmnLE R10, R14, RRX 
l135: cmn R6, #28
l136: cmnLT R9, R10, LSL R14
l137: cmn R9, R5
l138: cmn R5, R9, ASR #8
l139: cmn R10, R4, LSL #20
l140: cmnGE R0, R11
l141: cmnPL R10, #244318208
l142: cmnLT R1, R6, LSL #30
l143: cmnNE R4, R3, RRX 
l144: cmnPL R11, R14
l145: cmnLE R3, #12672
l146: cmnLS R12, #851968
l147: cmnMI R14, #30720
l148: cmnEQ R0, R10, LSR R4
l149: cmnMI R11, R2, LSL R6
l150: cmnLS R1, R9, LSR R0
l151: cmn R10, R5
l152: cmn R6, R10, RRX 
l153: cmn R12, R8, ROR R7
l154: cmn R11, R11, ASR R3
l155: cmnGE R10, R2
l156: cmnLS R12, R0
l157: cmnPL R10, R11, RRX 
l158: cmn R1, R8
l159: cmnLT R1, R9, ASR R0
l160: cmnPL R10, R12, LSR R7
l161: cmnLS R11, #218103808
l162: cmnLT R11, R12, ASR R11
l163: cmn R3, R11
l164: cmnGE R12, R0, ASR #14
l165: cmnMI R5, R6, ASR R7
l166: cmnHI R15, #28
l167: cmn R0, R5, RRX 
l168: cmn R7, R12, LSR #14
l169: cmnCC R8, R0, ASR #16
l170: cmnLT R0, #272
l171: cmnLT R11, R8, ASR #29
l172: cmn R9, R5
l173: cmnMI R6, R11, RRX 
l174: cmnCC R10, R10, ROR #28
l175: cmnGT R15, R2, LSR #6
l176: cmnVS R11, R11, ASR R12
l177: cmnVS R4, R1, ROR R6
l178: cmnLE R12, R5
l179: cmnEQ R6, R9, ROR #25
l180: cmn R3, R8, RRX 
l181: cmnCC R10, R8
l182: cmnVS R1, R9
l183: cmnNE R4, #27
l184: cmn R15, R0, RRX 
l185: cmn R1, #1073741880
l186: cmn R7, #6750208
l187: cmn R0, R11
l188: cmnCS R0, R1, RRX 
l189: cmnVC R2, R12, ASR R10
l190: cmnVC R9, R7
l191: cmn R8, #1610612751
l192: cmnCC R14, R4, LSR #6
l193: cmnMI R12, #18
l194: cmnCC R12, R8, ROR #3
l195: cmnHI R5, R14, LSL #31
l196: cmnEQ R4, R12, ROR R5
l197: cmnPL R15, R14
l198: cmnMI R12, R4
l199: cmn R9, R3, ASR R7
l200: cmn R5, R7, LSL R9
l201: cmnGT R11, R4, LSR R6
l202: cmnVS R12, R9, ASR R10
l203: cmn R6, R8, RRX 
l204: cmn R12, R1, LSR #22
l205: cmn R3, R1, ASR R5
l206: cmnEQ R11, R6, ASR R9
l207: cmnGT R12, R9
l208: cmnPL R8, R8
l209: cmn R2, R10, LSR #27
l210: cmnLS R14, R1
l211: cmnLS R1, R15, RRX 
l212: cmnMI R15, R5, RRX 
l213: cmn R15, R14
l214: cmn R0, R12, ASR #29
l215: cmnLS R2, R14, ROR R3
l216: cmnVC R11, R0
l217: cmn R9, R5, RRX 
l218: cmnNE R11, #235
l219: cmnPL R11, R1, ROR R4
l220: cmnGT R14, R0, LSL R7
l221: cmn R0, R14, ROR #27
l222: cmn R11, R0
l223: cmn R14, R4, LSR #9
l224: cmnGE R3, R14, LSR #24
l225: cmn R4, R1, ASR #21
l226: cmn R5, #1952
l227: cmnGE R1, R14, ASR #28
l228: cmn R2, R5
l229: cmnGT R5, R5
l230: cmn R2, R14, LSR #6
l231: cmn R2, #36096
l232: cmnHI R6, R2, LSR #14
l233: cmn R15, #1879048207
l234: cmnGT R8, R1, LSR #18
l235: cmnNE R12, R1, ASR R4
l236: cmnLT R4, R5
l237: cmnLE R5, R0, LSR R14
l238: cmnCC R7, R3, LSL R4
l239: cmnLE R12, R3, ASR R8
l240: cmnLT R10, R6, ROR R3
l241: cmn R9, #-1711276032
l242: cmnVC R6, R11, ROR R4
l243: cmnPL R3, #194560
l244: cmn R10, R10
l245: cmnEQ R0, R0
l246: cmnVS R11, R3
l247: cmnVS R8, R10
l248: cmnPL R9, R5, LSL R2
l249: cmnHI R4, #1073741829
l250: cmn R7, R9, ROR R12
l251: cmnMI R14, #35
l252: cmnNE R6, R5, RRX 
l253: cmnVC R12, R10, RRX 
l254: cmnGE R2, R2
l255: cmn R2, #319488
l256: cmn R12, R7
l257: cmnVC R6, R3, RRX 
l258: cmnEQ R1, #14417920
l259: cmn R7, R2
l260: cmnCS R3, R9
l261: cmnGE R10, R3
l262: cmn R5, R2, RRX 
l263: cmnVS R9, R12, RRX 
l264: cmnPL R15, #2048
l265: cmn R0, R8, LSL R5
l266: cmn R4, R10
l267: cmn R12, R12
l268: cmn R12, R1
l269: cmnGE R2, R5
l270: cmn R6, R7, RRX 
l271: cmn R11, R5, ROR R0
l272: cmnLE R12, #13
l273: cmnHI R2, R14, ASR R0
l274: cmn R9, #5888
l275: cmn R3, R4, ROR #8
l276: cmn R5, R7, ASR #2
l277: cmn R11, #241664
l278: cmnLE R6, R4, LSR #1
l279: cmnLT R7, R15
l280: cmn R1, R12, ROR R9
l281: cmn R3, #1966080
l282: cmnCS R5, R12
l283: cmnMI R5, #184549376
l284: cmn R4, R4
l285: cmn R7, R7
l286: cmnLS R15, #901120
l287: cmn R11, #-805306367
l288: cmn R2, R10
l289: cmnCC R3, R12, LSL #28
l290: cmnVS R7, #50
l291: cmn R15, R6, ASR #20
l292: cmn R9, R14
l293: cmnEQ R9, #2672
l294: cmn R12, R6, RRX 
l295: cmnLT R14, R6, ROR R5
l296: cmnMI R6, R0, ROR #20
l297: cmnVS R12, R0, RRX 
l298: cmnVC R5, R4, LSL R4
l299: cmnCS R7, R3
l300: cmn R8, #2352
l301: cmn R5, R7, ASR R8
l302: cmnMI R1, #29696
l303: cmnCC R8, R5, ASR R2
l304: cmn R0, R14, ASR R3
l305: cmnVS R4, R0, LSL R2
l306: cmnGT R3, #189440
l307: cmn R1, R2
l308: cmn R14, R11
l309: cmnEQ R2, #28049408
l310: cmn R0, #88080384
l311: cmnPL R15, #475136
l312: cmn R4, #-67108864
l313: cmnPL R5, R11, LSR R4
l314: cmn R7, R0, ASR #30
l315: cmnCS R8, R6, RRX 
l316: cmnCS R12, R10, LSR R8
l317: cmnVC R5, R5, ASR R2
l318: cmnGT R4, R15, RRX 
l319: cmn R14, R14
l320: cmnGE R3, R2, LSR #22
l321: cmnCC R1, #13828096
l322: cmn R8, #2408448
l323: cmnVC R4, R10, ROR R11
l324: cmnPL R3, R9, RRX 
l325: cmnCS R11, #469762049
l326: cmn R10, #848
l327: cmnPL R1, #0
l328: cmnLT R11, R3, LSR R10
l329: cmnPL R7, #16128
l330: cmnNE R11, R4, ASR R4
l331: cmnLT R15, #805306368
l332: cmn R4, R0, RRX 
l333: cmnVS R9, #256
l334: cmn R12, #63963136
l335: cmnPL R0, R14, ASR #5
l336: cmnCS R6, R0, RRX 
l337: cmn R7, R9
l338: cmnLS R4, R7, LSL R5
l339: cmnLT R0, R6, LSL #19
l340: cmnCS R5, #-520093696
l341: cmnCS R7, R8, ASR R3
l342: cmnCC R4, R5
l343: cmn R12, R7
l344: cmnLT R10, R9, LSL #27
l345: cmnEQ R2, R7, LSR R7
l346: cmnVS R10, R5
l347: cmnLE R1, R15, RRX 
l348: cmnEQ R5, #-1241513984
l349: cmnPL R11, R8, ROR #23
l350: cmnVS R10, R3
l351: cmn R10, R3, LSL R1
l352: cmn R9, R9, LSL #31
l353: cmn R2, R10, RRX 
l354: cmn R7, R11, LSR R2
l355: cmnHI R15, R14, RRX 
l356: cmnCS R11, R10, LSR R12
l357: cmnCC R10, R5
l358: cmn R12, R10, ASR #25
l359: cmnNE R12, R3
l360: cmn R3, R0, LSR #14
l361: cmn R1, #131
l362: cmn R14, R11, LSL R6
l363: cmn R12, #16777216
l364: cmn R2, R4, RRX 
l365: cmnGT R15, #380928
l366: cmnNE R5, #756
l367: cmnNE R12, R8, ASR #1
l368: cmnPL R7, R0, ROR R1
l369: cmn R8, #4032
l370: cmn R4, #1011712
l371: cmn R6, R8
l372: cmn R0, R7, RRX 
l373: cmnMI R14, R7, LSL #7
l374: cmnNE R11, R3, RRX 
l375: cmn R2, #805306368
l376: cmnGE R14, #114688
l377: cmnMI R0, #1168
l378: cmnPL R11, R14, LSL R1
l379: cmnGE R9, R10
l380: cmn R4, R6, ASR #15
l381: cmn R6, R6, LSL #14
l382: cmn R5, R6, LSR R8
l383: cmnVS R5, R4
l384: cmnPL R5, #1677721601
l385: cmnCC R11, R15, LSL #19
l386: cmnPL R7, R6, LSR R12
l387: cmn R5, R0, ROR #2
l388: cmn R15, R12
l389: cmn R9, R7, ASR #0
l390: cmnCC R7, #2063597568
l391: cmnCC R3, R7
l392: cmnPL R3, R11, LSL R6
l393: cmnGT R15, R10
l394: cmn R10, R3, RRX 
l395: cmnGT R11, R2, ROR #30
l396: cmnPL R6, #48128
l397: cmnLS R9, R2, ROR #23
l398: cmnCS R15, R10, RRX 
l399: cmn R14, R15
l400: cmnVC R10, R0, ASR R6
l401: cmnMI R5, #233832448
l402: cmn R2, #1073741884
l403: cmn R6, R8
l404: cmn R12, R2
l405: cmn R0, #469762050
l406: cmnMI R3, R9
l407: cmnLS R10, R9, LSL R6
l408: cmn R2, R1, LSR R7
l409: cmnVC R5, R11
l410: cmn R10, #-1342177278
l411: cmnLE R6, R6, LSL #13
l412: cmnEQ R10, R0
l413: cmn R10, R6, RRX 
l414: cmn R7, R5, RRX 
l415: cmnCS R11, R14, LSR R9
l416: cmn R10, R5
l417: cmn R0, R10, ASR R14
l418: cmnCC R2, R9, LSL R7
l419: cmn R0, R12, ASR R7
l420: cmn R8, R2, ROR R4
l421: cmnLE R15, R8, ASR #27
l422: cmnNE R11, R14
l423: cmn R15, R11
l424: cmn R1, R1, ASR R2
l425: cmnPL R0, R14, LSL #6
l426: cmnHI R1, R10, ROR R1
l427: cmnLT R1, R12
l428: cmn R2, R12
l429: cmn R0, R15
l430: cmnMI R0, R2, LSR R11
l431: cmn R1, R5
l432: cmn R11, R1, RRX 
l433: cmn R12, R10
l434: cmn R2, R8, ROR #25
l435: cmn R9, #-889192448
l436: cmn R1, #15728640
l437: cmn R2, R2
l438: cmn R6, R3, LSR R3
l439: cmn R1, #12032
l440: cmnVC R5, #3293184
l441: cmnLT R6, R0, RRX 
l442: cmnCS R3, #1168
l443: cmnCS R9, #245760
l444: cmnGE R2, #32505856
l445: cmnNE R6, R7, ROR R12
l446: cmnLT R11, R8, ROR #8
l447: cmnCC R9, R5, ASR R8
l448: cmnGT R6, R1, RRX 
l449: cmn R7, R7, LSL #28
l450: cmnLT R9, #144
l451: cmn R4, R8, RRX 
l452: cmnLE R5, R11, ASR #3
l453: cmnCS R3, #1888
l454: cmn R1, R11
l455: cmnLE R14, R12, ASR #19
l456: cmn R7, R10
l457: cmnGE R3, R14, ROR #31
l458: cmn R10, R10, ROR #30
l459: cmnCC R11, R7
l460: cmnGE R0, R8, LSR #6
l461: cmn R8, R6, LSR R11
l462: cmn R9, R5, ROR #6
l463: cmnLT R3, R9, LSR R6
l464: cmn R9, R3, ASR R3
l465: cmnVC R3, R5
l466: cmnGT R12, R8, RRX 
l467: cmnGT R14, R0, RRX 
l468: cmnHI R3, R8, LSR #23
l469: cmn R5, R7, ROR #27
l470: cmnNE R3, #499712
l471: cmnLE R11, R3, LSL R4
l472: cmn R10, R10
l473: cmnNE R7, R1, RRX 
l474: cmnVC R4, R2
l475: cmnGT R9, R7, LSL #26
l476: cmn R2, #1687552
l477: cmnHI R15, R2
l478: cmn R11, R15
l479: cmnMI R11, #1946157059
l480: cmnVC R15, R9, RRX 
l481: cmn R2, #255852544
l482: cmn R10, R1, RRX 
l483: cmnHI R4, R11, ASR #29
l484: cmnEQ R11, R12, LSR #6
l485: cmn R4, #155189248
l486: cmn R0, #-1073741765
l487: cmn R11, R8, ROR #18
l488: cmnNE R11, R3, LSR #4
l489: cmn R8, R11, LSR #26
l490: cmnGE R3, #1879048193
l491: cmn R14, R14, LSL R8
l492: cmn R11, #491520
l493: cmn R9, R4, ASR #4
l494: cmn R11, R9
l495: cmnMI R15, R8
l496: cmn R8, R10, ASR #17
l497: cmn R1, R0
l498: cmn R14, R3, RRX 
l499: cmnPL R3, #666894336
l500: cmnGE R10, R11
l501: cmnGT R5, R1
l502: cmnCC R1, R10, LSR #11
l503: cmnCS R9, #939524097
l504: cmnGE R12, R9, ROR R8
l505: cmn R5, #16711680
l506: cmnHI R14, R6, LSL R1
l507: cmnNE R9, #153600
l508: cmn R6, R1
l509: cmn R1, #-2147483648
l510: cmnLS R11, R10, LSR R4
l511: cmn R14, R12
l512: cmnCS R3, #32768
l513: cmnHI R0, #671088642
l514: cmnGE R3, R12, ROR R5
l515: cmnVC R7, R3, ASR #21
l516: cmnHI R12, R8, ROR R11
l517: cmnPL R11, R11, LSR #1
l518: cmnLT R9, R0, ROR #23
l519: cmnPL R6, R8
l520: cmn R9, #61865984
l521: cmnGT R5, R7
l522: cmnVC R7, R9, ASR #10
l523: cmnLS R12, R11, ROR R0
l524: cmnPL R4, #15616
l525: cmnCS R0, #1073741871
l526: cmn R15, R1, ROR #29
l527: cmn R7, R2, ASR R10
l528: cmn R5, R0, LSR R0
l529: cmn R9, R12, ASR R14
l530: cmnLT R2, R1, ROR #13
l531: cmnEQ R8, R12, LSR R11
l532: cmnLE R11, #528384
l533: cmn R1, R12
l534: cmnCS R5, R12
l535: cmnCS R15, #188743680
l536: cmnLE R8, R8, RRX 
l537: cmn R9, #10
l538: cmnLE R3, R7, ASR #22
l539: cmnLE R14, R9
l540: cmnEQ R15, #3840
l541: cmnGE R15, R2
l542: cmnVC R7, #95
l543: cmn R15, R9
l544: cmn R5, R9, LSR #17
l545: cmn R3, R9, LSR R1
l546: cmnCC R11, R5
l547: cmnNE R8, R6
l548: cmnVS R4, R10
l549: cmn R4, R4, RRX 
l550: cmnEQ R0, R9, LSR #24
l551: cmn R1, #1040187392
l552: cmn R11, R5, ASR R6
l553: cmn R12, R8
l554: cmnGE R8, #12416
l555: cmn R6, R14, LSR #13
l556: cmnCC R0, R6, ASR R10
l557: cmnPL R10, R2
l558: cmn R0, R10, RRX 
l559: cmnMI R5, R11, LSL #24
l560: cmn R2, #13893632
l561: cmnLT R9, R15
l562: cmn R1, R5
l563: cmnEQ R2, #3883008
l564: cmn R5, #12288
l565: cmn R4, R12
l566: cmnVS R7, R5, ASR R8
l567: cmnHI R8, R6, LSL #3
l568: cmn R14, R11, ASR #27
l569: cmnEQ R4, R1
l570: cmn R10, R10, RRX 
l571: cmn R14, R3, ROR #13
l572: cmn R15, R10
l573: cmnLE R15, R3, RRX 
l574: cmn R4, R0, RRX 
l575: cmn R0, #34
l576: cmn R1, #128000
l577: cmn R6, R0, RRX 
l578: cmn R7, R0, ROR #16
l579: cmnVS R10, R8
l580: cmnGT R1, R12, ASR #7
l581: cmnMI R14, R15
l582: cmn R15, R11
l583: cmn R10, R2, ASR #17
l584: cmn R0, R8, ASR #4
l585: cmnEQ R9, R3, LSL #20
l586: cmnGT R7, R4, LSL R1
l587: cmnVC R11, R8
l588: cmn R1, R7
l589: cmnCC R3, R2, ASR #16
l590: cmnVS R10, #3981312
l591: cmn R14, R0
l592: cmnHI R4, #4194304
l593: cmnVC R11, R3, RRX 
l594: cmn R9, #1584
l595: cmn R1, R14, ASR #14
l596: cmnPL R5, R9, ASR R11
l597: cmnCC R11, R7, LSL #28
l598: cmnNE R0, R0
l599: cmn R12, R3, LSR #1
l600: cmn R3, R12, LSL R5
l601: cmnGE R0, R7
l602: cmnPL R6, R8, ROR #12
l603: cmn R9, R8, ASR R5
l604: cmn R6, R3
l605: cmnPL R0, R2
l606: cmnEQ R3, R5, RRX 
l607: cmnLE R5, R11
l608: cmnCS R6, R7, RRX 
l609: cmn R7, #16252928
l610: cmnLS R4, R9, ROR R5
l611: cmn R8, #1610612741
l612: cmnGT R8, R7, LSR R8
l613: cmnCC R11, R9, ROR R14
l614: cmnGE R11, R11, ROR R5
l615: cmn R15, R11
l616: cmnEQ R9, #107
l617: cmnCC R7, R0
l618: cmnCS R2, R10, LSR R7
l619: cmnPL R3, #11468800
l620: cmn R10, #81920
l621: cmn R2, #11796480
l622: cmnPL R7, R15, LSL #24
l623: cmnVS R8, R7, RRX 
l624: cmnVS R5, #11264
l625: cmnLE R4, R8
l626: cmnGE R5, R14, RRX 
l627: cmn R9, R2, LSL #0
l628: cmn R6, #134217728
l629: cmn R0, R14
l630: cmnLS R6, #1073741856
l631: cmn R14, #5952
l632: cmn R3, #1073741833
l633: cmn R15, R7, ROR #21
l634: cmnGE R7, R5, RRX 
l635: cmnHI R10, R9
l636: cmnMI R3, R9
l637: cmn R8, R8, LSL #5
l638: cmnCS R7, R2, ASR R12
l639: cmnVC R15, R1, ASR #0
l640: cmn R10, #-1610612735
l641: cmn R8, R2
l642: cmnHI R14, #-268435444
l643: cmn R3, R5, LSR R2
l644: cmnEQ R6, #304
l645: cmn R6, #225
l646: cmn R8, R14, LSL #8
l647: cmn R6, R12
l648: cmnEQ R8, R5
l649: cmnMI R2, R0, ROR #21
l650: cmn R3, R12, LSL #31
l651: cmnEQ R8, R0
l652: cmnGE R9, R0, LSR #10
l653: cmn R0, R9, ASR #16
l654: cmn R7, R3, ASR R0
l655: cmnLS R5, R11, LSL #31
l656: cmnVC R12, R1, LSL #4
l657: cmn R10, R12
l658: cmn R14, R5
l659: cmnLS R8, R5, RRX 
l660: cmnGT R2, R4, ROR #8
l661: cmn R3, R6, LSR #7
l662: cmnGT R4, R8
l663: cmn R11, R15
l664: cmn R4, R10, LSR #15
l665: cmn R6, #223
l666: cmnVS R9, R1, ASR #6
l667: cmn R10, R9, ROR R5
l668: cmn R7, #60672
l669: cmnHI R0, #1584
l670: cmn R1, R5
l671: cmnGE R5, R5
l672: cmnHI R14, R9, LSL R2
l673: cmnHI R7, R1, LSR R8
l674: cmn R15, R15, ASR #31
l675: cmn R11, R6, ASR #23
l676: cmn R2, R6, RRX 
l677: cmnMI R6, R1, ROR R12
l678: cmn R1, R14, ASR R1
l679: cmnCC R8, #9
l680: cmnVC R14, R5
l681: cmnGT R10, R1, ASR #0
l682: cmn R9, #32
l683: cmnEQ R4, #121634816
l684: cmnVC R10, R3, LSL R14
l685: cmnCC R1, R11, LSR #27
l686: cmn R10, R15, LSL #7
l687: cmnLE R9, R14, LSR #8
l688: cmn R6, R6
l689: cmnGT R0, #-1879048184
l690: cmnNE R5, R12
l691: cmnEQ R2, R3, LSL #9
l692: cmn R12, R2
l693: cmnNE R3, R10
l694: cmn R11, R0, LSR R14
l695: cmnNE R12, R1, LSL #18
l696: cmnMI R8, #3808
l697: cmn R5, #49152
l698: cmn R1, R7, LSL #30
l699: cmnGT R4, R1, LSR R3
l700: cmnPL R9, #1073741824
l701: cmnVC R12, R3
l702: cmnLS R10, R1, LSR #29
l703: cmn R5, #629145600
l704: cmnCC R10, #1032192
l705: cmn R11, R14, RRX 
l706: cmnPL R12, #9043968
l707: cmnMI R15, R11, RRX 
l708: cmn R4, R8, RRX 
l709: cmn R3, #-1879048189
l710: cmn R4, R5, ASR #1
l711: cmnGE R5, R2
l712: cmnGE R0, R8, ASR R4
l713: cmn R8, R2, ROR #17
l714: cmn R14, #805306370
l715: cmn R10, R2, ROR R8
l716: cmn R4, R3
l717: cmn R6, R9, RRX 
l718: cmnGT R15, #14016
l719: cmnEQ R8, R2, ASR #19
l720: cmnCC R12, #152
l721: cmnCC R15, R1
l722: cmn R8, R15, RRX 
l723: cmn R4, R14
l724: cmnLS R2, #2588672
l725: cmn R14, R5, ASR R2
l726: cmn R5, R9, RRX 
l727: cmnGT R8, R14, RRX 
l728: cmn R1, #65536000
l729: cmn R1, R14, LSR R12
l730: cmnLE R1, #159383552
l731: cmnNE R2, R3
l732: cmnGT R11, R7, ROR #21
l733: cmnCC R2, R11
l734: cmn R7, #406847488
l735: cmnGT R0, R8
l736: cmnPL R4, R11
l737: cmn R2, R4
l738: cmn R1, R3, LSR R8
l739: cmn R0, R1, ROR #16
l740: cmnVC R2, #96468992
l741: cmnEQ R10, R5, ROR R3
l742: cmnCC R4, R1, RRX 
l743: cmn R4, R2, ASR R6
l744: cmn R1, R9, LSR R7
l745: cmn R8, R2, RRX 
l746: cmnCS R10, R3
l747: cmnGE R12, R0
l748: cmn R8, R11
l749: cmnEQ R1, R1, LSR #17
l750: cmnGE R0, R5
l751: cmnEQ R4, R2
l752: cmnEQ R5, #13184
l753: cmn R4, #992
l754: cmnVC R4, R2
l755: cmnVS R14, #-1342177277
l756: cmnNE R10, R1, ROR #19
l757: cmn R9, #20971520
l758: cmnEQ R0, #11
l759: cmn R7, #54001664
l760: cmn R14, R12
l761: cmn R15, #52
l762: cmnGE R0, R1, ASR R3
l763: cmnLT R14, #20709376
l764: cmnLT R7, R11, LSL R8
l765: cmnGE R8, R10, LSL #2
l766: cmn R3, R8
l767: cmnLS R8, R2, ROR #7
l768: cmn R15, R1
l769: cmn R11, R2, ROR R12
l770: cmnPL R2, R11, ASR R4
l771: cmn R0, R3, ASR R0
l772: cmnMI R7, R1
l773: cmnVC R2, R5, RRX 
l774: cmnCC R3, R6
l775: cmn R0, R11, RRX 
l776: cmnLE R0, R14, ROR #25
l777: cmnCS R11, R10, RRX 
l778: cmnCS R5, R2, ASR #26
l779: cmn R7, R12, LSR #6
l780: cmn R10, #1073741858
l781: cmnMI R0, R10, LSR #22
l782: cmn R5, R6, RRX 
l783: cmn R6, R3
l784: cmn R1, R3, RRX 
l785: cmn R10, R1, ASR R1
l786: cmnCS R4, #16777216
l787: cmnLS R11, R4
l788: cmnPL R6, R5, ASR #7
l789: cmn R12, R8, ASR R11
l790: cmn R0, R9
l791: cmnHI R0, R6, LSL R6
l792: cmn R14, R7
l793: cmnGE R6, #968
l794: cmnPL R3, R6, LSL #26
l795: cmnCS R2, R3, ASR #8
l796: cmnMI R5, R7
l797: cmn R2, R12, LSL #12
l798: cmnLT R14, R2, ROR #28
l799: cmnGT R2, R6, ROR R0
l800: cmnMI R0, #560
l801: cmnVC R9, R6, ROR #2
l802: cmnVS R12, R3, LSL #17
l803: cmnCS R10, R6, ROR R2
l804: cmnGE R12, #-1979711488
l805: cmn R0, R11, LSL R0
l806: cmnGT R3, #3872
l807: cmnLE R0, R14
l808: cmn R11, R6
l809: cmnEQ R12, #7232
l810: cmn R0, R0
l811: cmnPL R11, #557842432
l812: cmn R7, R12
l813: cmnVS R0, R5
l814: cmn R5, R0
l815: cmn R9, R5, RRX 
l816: cmnCS R9, R5
l817: cmn R7, R1
l818: cmn R4, R5
l819: cmnEQ R15, R8, LSR #5
l820: cmn R6, #393216
l821: cmn R3, R0, LSR #16
l822: cmn R9, #167772160
l823: cmnHI R4, R7, RRX 
l824: cmn R2, R8, LSL #31
l825: cmn R7, #72351744
l826: cmn R2, R14, LSR #0
l827: cmnHI R5, R14
l828: cmnLS R6, R14, LSR #25
l829: cmnMI R7, #-134217725
l830: cmn R10, #75776
l831: cmnHI R10, R5
l832: cmn R14, R3, LSR R1
l833: cmn R14, R6
l834: cmn R8, #252
l835: cmnVS R6, R14
l836: cmn R10, #268435469
l837: cmn R2, #3899392
l838: cmnMI R10, R10
l839: cmn R5, R11, LSR #2
l840: cmnLE R8, R8, RRX 
l841: cmnMI R0, R12
l842: cmn R6, R14, LSL #23
l843: cmn R1, R14
l844: cmnEQ R1, R14, LSR R9
l845: cmnLS R14, R4, ASR R10
l846: cmn R4, R4, ASR #7
l847: cmnVC R14, R10
l848: cmnLE R0, R8, LSL R1
l849: cmn R9, #512
l850: cmnGE R9, R3, LSR R14
l851: cmnCS R4, R12
l852: cmnEQ R3, R2, ROR R11
l853: cmn R3, R0
l854: cmnLE R9, R1, RRX 
l855: cmn R10, R2, RRX 
l856: cmnLS R12, R5
l857: cmn R14, #1867776
l858: cmnCS R11, R1, LSR R5
l859: cmn R11, R5, RRX 
l860: cmnLT R5, R14
l861: cmn R3, R1, LSL R14
l862: cmn R15, R10, RRX 
l863: cmnNE R12, R12, RRX 
l864: cmnCC R5, R10, RRX 
l865: cmnLS R15, #11599872
l866: cmn R0, R4, ROR #27
l867: cmnGE R3, #-1610612728
l868: cmnEQ R11, R11, RRX 
l869: cmnCS R15, R1, RRX 
l870: cmnCS R1, R8, RRX 
l871: cmnMI R9, #-1140850685
l872: cmn R0, #112197632
l873: cmnGE R7, #97280
l874: cmnHI R10, R8, ROR #13
l875: cmn R6, R8, ASR #18
l876: cmnLE R15, R15, LSR #31
l877: cmn R10, R9, ASR #13
l878: cmn R15, #179200
l879: cmnNE R3, R11, LSL R5
l880: cmn R9, #10485760
l881: cmnNE R11, R3, ROR R4
l882: cmn R7, #-738197504
l883: cmn R15, #1228800
l884: cmn R11, R7
l885: cmn R1, R6
l886: cmnLS R5, R0, LSR R3
l887: cmn R3, R4
l888: cmnGT R6, #3948544
l889: cmn R1, R9
l890: cmnGE R14, #994050048
l891: cmnPL R14, R0, LSR R6
l892: cmn R10, R8
l893: cmn R2, #-1342177277
l894: cmnLE R2, #268435456
l895: cmn R3, R1
l896: cmn R2, R0
l897: cmnPL R7, R8, ASR #27
l898: cmnCS R5, R1, LSR R14
l899: cmn R14, R8
l900: cmnGE R3, R4
l901: cmnHI R0, R0
l902: cmnVC R5, R5, ROR R3
l903: cmn R7, R9
l904: cmn R3, R2, ROR #14
l905: cmn R6, #5952
l906: cmnVS R7, R6
l907: cmn R9, #989855744
l908: cmn R8, R14
l909: cmnLE R8, R10
l910: cmn R10, R12
l911: cmnPL R5, R0, RRX 
l912: cmnGE R11, R12, ROR R9
l913: cmnNE R7, R7, LSR R8
l914: cmn R7, R8, RRX 
l915: cmnCC R7, R2, ROR R1
l916: cmn R7, #733184
l917: cmn R3, R7
l918: cmn R2, R2
l919: cmn R5, R6
l920: cmn R11, R9
l921: cmn R14, #2752
l922: cmnGT R14, R12
l923: cmn R11, R14, ASR R1
l924: cmn R2, R0
l925: cmnVC R6, R0, ROR R12
l926: cmnCC R9, R9
l927: cmnVS R12, R4
l928: cmnLT R7, R8, ROR R4
l929: cmn R2, #9600
l930: cmn R0, #5
l931: cmnLE R12, #83886080
l932: cmnLS R12, R11, ASR #21
l933: cmnLS R8, R3, RRX 
l934: cmnVC R5, R12, ASR R14
l935: cmn R11, #794624
l936: cmnLT R4, R11, ROR #23
l937: cmnVS R10, R0, RRX 
l938: cmnPL R10, R11, ASR #0
l939: cmnGT R9, R9, LSL #7
l940: cmn R5, R1, ASR #16
l941: cmn R11, R7
l942: cmn R4, R11
l943: cmnLE R0, R11
l944: cmn R1, #675840
l945: cmn R15, R0
l946: cmn R1, R8, LSL #5
l947: cmnEQ R6, R7, ROR R9
l948: cmnGT R3, R8, ROR R4
l949: cmnHI R0, R5, RRX 
l950: cmnCC R12, R5
l951: cmn R1, R8, ROR R2
l952: cmnMI R10, #57671680
l953: cmn R3, R0, RRX 
l954: cmnGE R8, R0, RRX 
l955: cmn R8, #1426063360
l956: cmn R8, R14, ASR R4
l957: cmnVS R3, R15, LSL #4
l958: cmn R11, R8, LSL R12
l959: cmn R11, #-1073741818
l960: cmnVC R9, R8, ASR #26
l961: cmnLT R6, #56623104
l962: cmnHI R15, R5, LSR #16
l963: cmnVS R12, R6, LSL #13
l964: cmnHI R10, R8
l965: cmn R7, #49152
l966: cmnGT R4, #2048
l967: cmnEQ R3, R15, RRX 
l968: cmnVC R3, R7
l969: cmnGT R9, R14, ROR #29
l970: cmnCS R10, #-805306355
l971: cmn R9, R5
l972: cmn R6, R14, ROR R4
l973: cmnEQ R3, #23592960
l974: cmn R10, #204800
l975: cmn R11, R9
l976: cmn R8, #225
l977: cmnPL R7, R1, ROR #11
l978: cmnLT R11, #-1073741791
l979: cmn R5, #1073741858
l980: cmnNE R6, R0, LSR R4
l981: cmn R10, #195584
l982: cmnVC R3, R3
l983: cmnLS R4, R6, ROR R5
l984: cmnGT R1, R4, ASR R12
l985: cmnGT R6, R4
l986: cmn R6, #264241152
l987: cmn R6, #289406976
l988: cmnLS R3, #-1677721597
l989: cmn R12, R4, LSR #30
l990: cmnCC R1, R8, LSR R6
l991: cmnMI R1, R15
l992: cmn R3, R7, LSR R14
l993: cmn R11, R9
l994: cmnGE R7, R2, ASR #6
l995: cmn R1, #14848
l996: cmn R12, R10, LSL R1
l997: cmn R8, R3, LSR #4
l998: cmnLE R2, R10
l999: cmnLT R1, R14, RRX 
l1000: cmnVS R11, R9, ROR #6
end: b end

