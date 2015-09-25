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
val1: .word 1852947628
next1:ldr R2, val2
b next2
val2: .word 3282253392
next2:ldr R3, val3
b next3
val3: .word 1749837475
next3:ldr R4, val4
b next4
val4: .word 4167647527
next4:ldr R5, val5
b next5
val5: .word 2127771846
next5:ldr R6, val6
b next6
val6: .word 970661089
next6:ldr R7, val7
b next7
val7: .word 1716495651
next7:ldr R8, val8
b next8
val8: .word 879119964
next8:ldr R9, val9
b next9
val9: .word 4186698087
next9:ldr R10, val10
b next10
val10: .word 938139416
next10:ldr R11, val11
b next11
val11: .word 872473395
next11:ldr R12, val12
b next12
val12: .word 1469484609
next12:ldr R14, val14
b next14
val14: .word 2678125596

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 4140925889
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1245854045
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1717562529
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2707892103
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2521698426
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3303793639
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1088722786
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2916920949
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 4109948392
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 856114658
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1424368924
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1901518307
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 4200941113
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 402764764
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1882649892
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2963817118
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3467971650
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2261276024
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2550593587
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 4088671281
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2329520470
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: tst R5, R12, RRX 
l2: tstMI R1, R12
l3: tst R2, R2, ASR R0
l4: tstVC R5, #-1610612728
l5: tstGT R6, #268
l6: tstPL R10, #3342336
l7: tstLS R0, R2, RRX 
l8: tst R3, R5, LSL #1
l9: tstGE R11, R3, LSR R8
l10: tst R15, R3, RRX 
l11: tst R3, R1, RRX 
l12: tstMI R14, R0
l13: tstVC R14, #132096
l14: tst R0, R6, LSR R10
l15: tst R1, R11, LSR #20
l16: tstPL R8, #1342177291
l17: tstPL R0, #504
l18: tstHI R1, R4
l19: tstCS R15, #599785472
l20: tst R1, R15, RRX 
l21: tstLT R10, R7, RRX 
l22: tstNE R5, R9, LSR #13
l23: tstHI R3, #1409286146
l24: tstGT R0, #566231040
l25: tstCS R0, R6, ROR R7
l26: tstNE R12, R2, ASR R1
l27: tstHI R3, #245366784
l28: tst R11, R11, RRX 
l29: tst R15, R12
l30: tst R11, R4, ROR R12
l31: tst R7, R2, RRX 
l32: tst R8, R1, LSR R7
l33: tst R2, R12, LSR R5
l34: tstGT R0, R8
l35: tstLT R3, #335544321
l36: tst R3, R1, ROR #1
l37: tst R9, R3
l38: tstGT R0, R10
l39: tstVC R7, R7
l40: tstLS R4, R1, ASR #15
l41: tst R2, #33024
l42: tst R3, R15
l43: tst R2, #119
l44: tstMI R9, R0, ASR R7
l45: tstLE R11, R1, RRX 
l46: tstLT R0, R12, RRX 
l47: tst R8, R8, ROR #7
l48: tstMI R12, #3776
l49: tst R0, R7, RRX 
l50: tstVC R2, R12
l51: tst R12, R0, LSR #6
l52: tstCC R3, R5, ROR #11
l53: tst R3, R12, ASR #28
l54: tstHI R14, R8, RRX 
l55: tst R10, R9
l56: tstLT R15, #1895825408
l57: tstCC R3, R3, LSR #31
l58: tst R4, #-1275068413
l59: tst R8, #64
l60: tstCS R10, #656
l61: tstLT R5, R5
l62: tstVS R14, #1753088
l63: tstVS R8, R14
l64: tst R11, R6, LSR #2
l65: tstVS R1, #1879048195
l66: tstPL R5, #-268435445
l67: tst R6, #33792
l68: tstLE R0, #26214400
l69: tstLE R7, R7
l70: tst R1, R3
l71: tstGT R1, R7
l72: tstHI R7, #5
l73: tstEQ R8, #1342177292
l74: tst R15, #966656
l75: tstHI R12, R4
l76: tst R6, #41
l77: tst R1, R11, LSR #30
l78: tst R1, R6
l79: tst R14, R4, LSL #24
l80: tst R2, #67108864
l81: tstEQ R5, R9, RRX 
l82: tstGT R5, #62652416
l83: tst R11, R12
l84: tst R6, R6
l85: tstCS R8, R14
l86: tst R4, R7
l87: tstNE R8, #912
l88: tst R8, R3
l89: tst R2, R2, LSR R4
l90: tst R6, #56576
l91: tst R6, R7
l92: tstEQ R15, #3824
l93: tstHI R14, R3
l94: tst R7, R6, ASR #29
l95: tstMI R10, R5
l96: tst R15, R7, ASR #21
l97: tstNE R14, R0, LSL R0
l98: tstPL R2, R8, RRX 
l99: tstGE R3, R12, LSR R3
l100: tstMI R3, R5, LSL R11
l101: tst R1, #-1275068415
l102: tstEQ R3, #5505024
l103: tst R3, #-2147483647
l104: tstEQ R12, R8, ROR #14
l105: tstLS R5, #86016
l106: tstPL R5, R15, LSL #6
l107: tstCS R10, #301989888
l108: tst R5, R15, ASR #23
l109: tst R15, R7, LSR #23
l110: tst R5, R12
l111: tst R3, R11, ASR #28
l112: tst R7, R9, LSL #0
l113: tst R10, R10
l114: tstLT R3, R15, ASR #0
l115: tstLT R9, R15
l116: tstLT R6, R9
l117: tstNE R9, R10, RRX 
l118: tstLS R0, R2, RRX 
l119: tst R1, R5, ROR R12
l120: tstPL R11, R7, LSR #14
l121: tstCC R10, R7
l122: tst R1, R3, LSR #3
l123: tstMI R5, R8
l124: tstHI R7, #462848
l125: tstCC R11, R12, LSR #6
l126: tstPL R11, R10, ROR #24
l127: tst R8, R4
l128: tst R4, #8128
l129: tstLS R10, R11
l130: tst R14, R9, LSR #29
l131: tstGT R5, R15
l132: tst R9, R2, ROR R11
l133: tstMI R1, R4
l134: tst R9, R15, LSL #0
l135: tst R9, R6, LSR R3
l136: tstCC R5, R6, LSL R14
l137: tstCS R10, #9536
l138: tstVC R10, #759169024
l139: tstLS R0, R7, ROR R10
l140: tstVS R8, R14, LSR R0
l141: tst R3, R10
l142: tst R2, R11, LSL #19
l143: tstGT R0, R11
l144: tstGT R0, #32
l145: tstVC R0, R5, LSR #22
l146: tst R11, R12
l147: tst R10, #-1342177280
l148: tstVC R8, #-268435445
l149: tst R5, R5, ROR R3
l150: tst R3, R0
l151: tstVS R10, #0
l152: tst R12, R11
l153: tst R10, #335544320
l154: tstNE R8, R3
l155: tstHI R10, R0, RRX 
l156: tstVC R5, R5, ROR #23
l157: tstVS R11, R5, LSR #17
l158: tst R11, R2, LSL R3
l159: tstHI R9, R6, ROR R6
l160: tstMI R8, R9, RRX 
l161: tst R6, R5
l162: tstVS R3, #56623104
l163: tstCS R12, #767557632
l164: tstVC R15, #49920
l165: tstGE R5, R15, LSL #27
l166: tstEQ R0, R15
l167: tst R5, R5, ASR #3
l168: tstMI R2, #128974848
l169: tst R10, #-1073741783
l170: tstVC R9, #385875968
l171: tstHI R0, R14
l172: tstNE R0, R14, LSR R2
l173: tstGE R3, R15, RRX 
l174: tst R14, #592
l175: tstGE R2, R2
l176: tst R0, R8, LSL #11
l177: tst R8, R9, ASR R10
l178: tstMI R0, R3
l179: tstGT R7, #245760
l180: tstNE R11, #5056
l181: tst R11, R2
l182: tstGE R0, R10, ROR R4
l183: tst R5, R14, LSL R7
l184: tst R10, #50331648
l185: tst R14, R7, LSL R1
l186: tst R12, R1, ROR R4
l187: tst R11, R6, ASR R11
l188: tst R14, R2
l189: tstPL R12, R5, RRX 
l190: tstGE R8, R6, ROR R1
l191: tstCS R6, R0, ASR #25
l192: tst R1, R14, LSL #15
l193: tstMI R9, R11, ASR R7
l194: tst R14, R1
l195: tstHI R2, #504
l196: tstMI R11, R6
l197: tstLE R2, R7
l198: tst R3, R4, ROR R14
l199: tstPL R8, #12352
l200: tst R4, R4
l201: tstCC R10, R10, LSR #1
l202: tst R10, R6, LSR #24
l203: tstMI R14, R12, LSL #4
l204: tstMI R0, R0
l205: tst R10, #8256
l206: tst R2, #19
l207: tstLT R5, R11, ROR #12
l208: tst R10, R1, RRX 
l209: tstPL R11, #956301312
l210: tstLS R2, R5
l211: tstVS R0, R1, LSR R4
l212: tst R3, R1, LSL #18
l213: tst R6, R2, LSR #21
l214: tst R9, R4, ASR R3
l215: tstCS R3, R3
l216: tst R8, R8, ROR R11
l217: tst R14, R7, ROR #2
l218: tstNE R1, #448
l219: tstMI R9, R10
l220: tst R11, R6
l221: tstLS R14, R9, RRX 
l222: tst R5, R10
l223: tstGT R8, #-1342177280
l224: tst R9, R3
l225: tst R14, #1073741824
l226: tstEQ R11, R0, RRX 
l227: tstGT R3, R0, ROR R11
l228: tst R5, R0, LSL #31
l229: tstCS R2, #738197504
l230: tst R11, R15, LSR #0
l231: tstLE R0, R14, LSR R2
l232: tstLS R14, R7, LSR R14
l233: tstLE R2, #56623104
l234: tst R8, #5760
l235: tstCS R3, R4
l236: tst R0, #1504
l237: tst R9, #12124160
l238: tst R7, R12, LSL R3
l239: tstNE R4, R12
l240: tstCS R8, R10, LSR R1
l241: tst R9, R12
l242: tstGE R2, R12, ASR #24
l243: tst R5, R14, LSL R8
l244: tstGE R10, R1, LSL R9
l245: tstMI R11, R5, LSR R10
l246: tstCC R12, R14, RRX 
l247: tstLE R1, #1073741827
l248: tstVC R1, #36608
l249: tstEQ R6, R14, LSL R8
l250: tstLS R6, R6, ASR R6
l251: tstVS R0, R15, RRX 
l252: tstNE R9, R4, RRX 
l253: tstLT R14, R7
l254: tstVS R7, R2
l255: tst R10, R10, RRX 
l256: tstLE R15, R8
l257: tstNE R1, R1
l258: tstVC R11, R10
l259: tstCC R12, R4
l260: tst R0, R9
l261: tstCC R2, R5
l262: tst R12, #311296
l263: tstVS R2, R12
l264: tstGT R7, R2
l265: tst R14, #268
l266: tst R11, R4, LSL #5
l267: tst R6, R10, RRX 
l268: tst R2, #11993088
l269: tst R3, #198656
l270: tst R10, R10
l271: tstGT R3, R11, RRX 
l272: tstLS R1, R6
l273: tstNE R1, R3
l274: tstVS R6, R6, ASR R1
l275: tst R9, #-805306361
l276: tst R8, R6
l277: tst R2, R3
l278: tstLE R15, R3
l279: tstLS R2, R12, RRX 
l280: tstPL R0, R7, LSL #31
l281: tstLT R8, R5
l282: tstEQ R9, R1, LSL R10
l283: tst R9, #524288
l284: tst R14, R4, LSL #3
l285: tst R8, R14, LSR R7
l286: tstLT R11, R7, LSR R7
l287: tstCS R8, #236
l288: tst R11, R3, ROR R14
l289: tstNE R15, R3
l290: tst R1, R9
l291: tstEQ R3, R2
l292: tst R8, R5, ROR R11
l293: tst R12, R9, ASR R5
l294: tst R6, R6, ROR #29
l295: tst R11, R2
l296: tst R7, R10, LSR #4
l297: tstVS R5, R5, RRX 
l298: tst R0, #671088642
l299: tst R12, R14
l300: tstCC R2, R0
l301: tstLT R0, R5, ASR #23
l302: tst R14, R7, RRX 
l303: tst R9, #-2147483595
l304: tstMI R2, R2, ROR #12
l305: tstLT R7, #19712
l306: tst R7, R0, ASR R10
l307: tst R14, R14, RRX 
l308: tst R15, #5373952
l309: tst R10, R6, ASR R2
l310: tst R3, R1
l311: tst R2, R10
l312: tst R11, R15, RRX 
l313: tstHI R3, R5
l314: tstVC R15, #33292288
l315: tst R6, R4
l316: tstVS R7, #67108864
l317: tst R5, #247463936
l318: tstVC R2, R15
l319: tstCC R5, R0, LSL #9
l320: tstNE R14, R10
l321: tstLS R6, #141
l322: tstGE R4, R9, RRX 
l323: tst R8, R0
l324: tst R2, R2, RRX 
l325: tst R9, R11
l326: tst R5, R15
l327: tst R14, R7, LSL #25
l328: tst R15, #46923776
l329: tst R5, R6
l330: tst R7, R2, ASR R2
l331: tstCS R2, #576
l332: tstNE R5, R2, RRX 
l333: tstLE R11, R9, ROR R2
l334: tstLT R15, R7
l335: tstEQ R12, R9
l336: tst R7, R6, ASR #30
l337: tstLS R11, R3, LSL R1
l338: tstEQ R6, R9, LSL #13
l339: tstGE R9, R1, ASR #19
l340: tstLT R4, R9, ROR R12
l341: tst R8, R14
l342: tst R4, R8
l343: tstCS R3, R11
l344: tstLS R2, R7, ASR R9
l345: tstMI R2, R2
l346: tstEQ R5, R6, RRX 
l347: tst R1, #1212416
l348: tstCS R11, R5, ROR #27
l349: tst R0, R14, ASR R4
l350: tst R2, R4, ASR R6
l351: tstHI R4, R10, LSR R10
l352: tstLE R15, R7
l353: tstLE R2, R4, LSR R6
l354: tstLS R9, R1, LSL #24
l355: tstGE R9, #6784
l356: tstLS R3, #-603979774
l357: tst R1, R10
l358: tstGE R0, #-1073741800
l359: tstHI R6, R12, ASR #2
l360: tstMI R11, R12
l361: tstGE R12, R6, ROR #4
l362: tst R8, R12, LSR #15
l363: tstNE R9, R10, LSR #3
l364: tstMI R8, #112
l365: tstLE R8, #768
l366: tstLE R15, #-805306366
l367: tst R1, #5636096
l368: tst R11, #75497472
l369: tstLT R8, #132
l370: tst R4, #966656
l371: tst R10, R12, ASR R14
l372: tst R12, R8
l373: tstGT R8, #-1610612736
l374: tstMI R4, R14, ASR R0
l375: tst R15, #1589248
l376: tst R8, R14, LSL R9
l377: tst R11, #-805306367
l378: tst R14, R8, RRX 
l379: tstGT R2, R6, ASR #17
l380: tst R12, R10, LSL #9
l381: tstVC R3, R2
l382: tst R0, R15
l383: tstHI R7, R10, LSL #20
l384: tstHI R5, #7733248
l385: tstLS R5, R10, LSR R8
l386: tst R12, R0, ASR #23
l387: tst R12, R7, LSR R3
l388: tstNE R0, R15, RRX 
l389: tstVC R15, R10
l390: tst R12, #1456
l391: tstVC R12, R0, ROR #28
l392: tstVS R15, #360448
l393: tst R9, #228589568
l394: tstMI R9, R0, LSL R0
l395: tst R14, R7
l396: tst R12, R1
l397: tstMI R7, R5, ASR R5
l398: tstEQ R15, R8, RRX 
l399: tst R7, #2592
l400: tst R15, R14, LSL #26
l401: tst R9, R10, LSL R2
l402: tstCS R11, R14
l403: tst R12, R15, LSL #8
l404: tstPL R14, R2
l405: tst R11, #622592
l406: tstGT R6, R4, ROR #10
l407: tst R5, R0, LSR R2
l408: tst R11, #912
l409: tst R8, R8
l410: tst R15, R2
l411: tst R4, R4, LSL #20
l412: tstVC R0, #2539520
l413: tst R4, R7, LSR #27
l414: tstNE R14, R6
l415: tst R7, #819200
l416: tst R11, #31195136
l417: tst R12, R7, LSR #30
l418: tst R9, #46399488
l419: tstVC R7, R11, ASR #13
l420: tst R11, R9, RRX 
l421: tst R14, R4, ASR R4
l422: tst R15, R9
l423: tst R7, R7, ROR #14
l424: tstMI R15, #-1275068414
l425: tst R9, R3, ASR R3
l426: tstNE R1, R11, LSR #22
l427: tst R12, R0, LSR R12
l428: tstLS R0, R11, ROR R2
l429: tst R4, R7, ROR R11
l430: tst R0, R3
l431: tst R2, R8
l432: tstEQ R7, #49283072
l433: tst R10, R5, ASR #4
l434: tst R4, R10, ROR #13
l435: tst R8, R4
l436: tstLE R10, R10, LSL #12
l437: tstVC R6, R6, ASR #20
l438: tst R11, R2, LSR #2
l439: tst R15, R1, ASR #16
l440: tst R6, R9, LSL #29
l441: tstVC R1, R0
l442: tst R15, R7, ROR #5
l443: tstCS R0, R8, LSR #0
l444: tst R0, R4, ASR #8
l445: tstGT R14, R12, ASR #11
l446: tst R7, R6, ROR #9
l447: tst R12, #1073741859
l448: tstPL R3, R14
l449: tstLT R6, #16252928
l450: tst R8, R15, LSL #31
l451: tstGE R14, R8, LSR #14
l452: tst R2, R7, LSR #25
l453: tstCS R5, R5, LSL R1
l454: tst R8, #-1358954496
l455: tstCC R6, R5, ROR #15
l456: tst R14, R10
l457: tstEQ R10, R1, LSL #23
l458: tstLS R0, R6, ASR #6
l459: tstNE R11, #-16777216
l460: tst R10, R6, LSL R9
l461: tst R1, R15
l462: tstEQ R9, #58368
l463: tst R6, R6, ROR #2
l464: tstVS R10, R9
l465: tstHI R14, R8, ASR R2
l466: tst R14, R1, RRX 
l467: tst R6, R14, LSR R12
l468: tstMI R7, R15
l469: tst R7, R8, LSL #3
l470: tstNE R0, #5696
l471: tst R8, R9
l472: tstGE R14, R7
l473: tst R0, R10, RRX 
l474: tstPL R5, R11, LSR #20
l475: tstPL R4, R8, LSL R9
l476: tstVC R5, R8, LSR R5
l477: tst R12, R10, LSR #4
l478: tstLS R5, R2, ASR R0
l479: tstCS R4, R11, LSR #10
l480: tstGT R3, R6, ASR #10
l481: tst R5, #90112
l482: tst R4, R1
l483: tstGT R8, R2
l484: tstMI R12, R0
l485: tst R8, #146800640
l486: tstPL R6, R1
l487: tst R6, R1
l488: tst R10, #3538944
l489: tstLS R0, R3
l490: tstCC R8, R2
l491: tst R10, #1024000
l492: tst R3, R4, LSL R3
l493: tst R12, R1, LSL R5
l494: tst R4, R2, RRX 
l495: tstVS R2, R14
l496: tstLS R10, R9
l497: tst R11, #63963136
l498: tst R4, R2
l499: tstVS R14, R15
l500: tstPL R12, R15
l501: tstMI R14, R3
l502: tstEQ R9, R15, RRX 
l503: tstLT R7, R0, LSR #15
l504: tst R11, R12, LSR #27
l505: tst R4, R11
l506: tst R9, R11, LSL R5
l507: tstVC R9, R4
l508: tst R9, R8, RRX 
l509: tst R7, #2046820352
l510: tstEQ R0, R7, LSL R6
l511: tst R15, #1073741852
l512: tstMI R7, R11
l513: tst R3, R15
l514: tstEQ R0, #1073741824
l515: tst R5, R5, ASR R2
l516: tstEQ R1, R3, RRX 
l517: tstLT R5, #-1879048183
l518: tst R15, R5
l519: tstLS R6, #200704
l520: tst R12, R10
l521: tstCC R4, R3, LSR #22
l522: tstGT R12, R8, ROR R8
l523: tstGT R6, R10
l524: tst R6, R7, ASR R0
l525: tstLS R9, R15
l526: tstPL R14, R6
l527: tstNE R11, R1
l528: tst R11, R8, RRX 
l529: tstPL R14, R0
l530: tst R5, R8
l531: tstHI R9, R11, LSR #30
l532: tst R5, R10
l533: tstCS R8, R10
l534: tstLE R6, R14, ASR R8
l535: tstEQ R7, R6, ASR #4
l536: tstGE R15, R2
l537: tstMI R5, #103809024
l538: tstEQ R6, R0, ASR R2
l539: tstCS R1, R8, ROR R12
l540: tst R5, R11
l541: tst R8, R0, LSR R12
l542: tstMI R5, R11, LSL R2
l543: tst R8, R5
l544: tstPL R6, #16515072
l545: tstVC R12, R2
l546: tst R4, R10, LSR #29
l547: tstLT R9, #-2147483622
l548: tstNE R5, R10
l549: tstVC R10, #162816
l550: tst R5, #1776
l551: tstLE R14, R15, ROR #20
l552: tstPL R14, R2
l553: tstPL R8, R1, LSR #6
l554: tstPL R4, R6
l555: tstLE R8, R6, ROR #30
l556: tst R7, R1, ASR R8
l557: tstPL R10, R9, RRX 
l558: tst R6, #201326593
l559: tstEQ R0, R8, LSR R1
l560: tstPL R12, R4
l561: tstCS R10, R8, LSR R2
l562: tst R3, #4672
l563: tstGT R11, R9, LSL #15
l564: tst R6, R12, LSR R14
l565: tstVS R9, R11, LSL R1
l566: tstEQ R5, #15925248
l567: tstNE R6, R2
l568: tstGT R8, R2
l569: tst R10, R7
l570: tstCC R9, R11, LSR R8
l571: tst R7, #348
l572: tstLE R0, R1, LSR #11
l573: tstNE R15, #-1073741782
l574: tstGT R1, R3, LSR #1
l575: tstCC R6, R5, ASR #2
l576: tst R15, R15
l577: tstVC R15, R6, RRX 
l578: tstLS R8, R11
l579: tst R5, R7
l580: tstMI R5, #32
l581: tstCC R4, R11, RRX 
l582: tstLE R4, R14, ROR R2
l583: tst R8, R15
l584: tst R10, R0, RRX 
l585: tst R1, R3, RRX 
l586: tstNE R10, R14
l587: tst R11, R10, ROR R1
l588: tst R12, R8, ASR R3
l589: tst R9, R4, ASR #15
l590: tstEQ R1, R10, LSR R10
l591: tst R11, R1, RRX 
l592: tstVC R1, R3, LSR R14
l593: tst R10, R9
l594: tst R10, #12320768
l595: tstLE R5, #62976
l596: tst R15, R9, LSL #23
l597: tstVS R7, R4
l598: tstVS R14, #83
l599: tstCS R7, R8, LSR R0
l600: tstCC R4, #2448
l601: tstCC R15, R2
l602: tst R5, R8
l603: tst R6, R12, LSL R11
l604: tst R12, R14, LSL R2
l605: tst R0, R5, ASR R6
l606: tstCC R4, R11
l607: tstGE R3, #32768
l608: tst R11, R0, LSL #19
l609: tstCC R1, R8
l610: tstEQ R11, R3
l611: tstLS R10, R6
l612: tst R9, R5, ASR #13
l613: tstLE R15, R6, RRX 
l614: tst R14, #63
l615: tstNE R14, #6912
l616: tst R6, R10
l617: tstMI R10, #20447232
l618: tst R14, #593920
l619: tst R4, R2
l620: tst R7, #331776
l621: tst R3, R7
l622: tst R7, R9, ASR #24
l623: tstVS R8, R4, LSL R3
l624: tst R0, R6
l625: tstNE R6, R12, LSL R1
l626: tstLT R10, R7
l627: tstGT R2, R10
l628: tstEQ R15, R11
l629: tst R6, R8, LSL #17
l630: tstHI R7, #-1275068416
l631: tstLT R7, R9, LSR #9
l632: tstHI R14, #266240
l633: tst R7, #425984
l634: tst R15, R9, ASR #30
l635: tst R6, R9
l636: tstLT R15, #2944
l637: tst R15, #163577856
l638: tst R1, R1
l639: tstHI R4, #402653186
l640: tstGT R0, R1, LSR R0
l641: tstLE R14, #2883584
l642: tst R8, R9, ASR #23
l643: tst R8, R10
l644: tstGT R11, R4, ASR #12
l645: tst R9, R4
l646: tstHI R9, #2080374787
l647: tstCC R8, #1946157056
l648: tst R7, R4, LSL R12
l649: tstVS R1, #208896
l650: tstMI R6, R14, ROR #7
l651: tst R2, R12, LSR R1
l652: tst R7, R1, ROR #25
l653: tstCS R15, #897024
l654: tstLS R3, R10, ROR R14
l655: tstLT R5, #-2147483635
l656: tstNE R12, R3
l657: tstCC R11, #123
l658: tstMI R14, #7864320
l659: tst R3, R9, LSL R8
l660: tstVS R3, #4177920
l661: tstHI R2, #-2147483648
l662: tst R2, #-1073741785
l663: tstGT R0, R5, ASR R1
l664: tstVS R7, R14, ROR #7
l665: tstNE R11, R6, ROR R0
l666: tstEQ R0, R3, RRX 
l667: tstGE R8, R8, ASR #30
l668: tst R8, #936
l669: tst R11, R12
l670: tst R9, R7
l671: tst R4, R8
l672: tst R15, R4, ASR #5
l673: tst R8, R0, LSR #6
l674: tstMI R2, R14, ROR R11
l675: tstVC R6, #1936
l676: tstVC R4, R12, ROR #2
l677: tstCC R4, R1
l678: tst R5, R10, RRX 
l679: tst R6, R8
l680: tstPL R0, #2867200
l681: tstMI R7, R9
l682: tstLE R7, R3
l683: tst R6, R5, RRX 
l684: tstGE R3, R2, ROR R2
l685: tstEQ R2, R1, ASR #17
l686: tst R2, #-2030043136
l687: tstGT R10, R5, LSL #10
l688: tstLT R9, #2080768
l689: tstCS R12, #1023410176
l690: tst R4, #53215232
l691: tst R14, R0
l692: tstEQ R15, #47872
l693: tstHI R6, #45088768
l694: tst R14, R2
l695: tst R10, R0, LSR R3
l696: tstCC R15, #58880
l697: tstLS R5, R10, LSR R10
l698: tstCC R15, R2, ASR #6
l699: tstVC R11, R7
l700: tstGE R6, R7
l701: tstEQ R12, #253
l702: tstLT R0, R11, ROR #20
l703: tstVC R4, R7, ASR R0
l704: tst R7, R9, LSL #26
l705: tstLS R6, #127
l706: tst R7, #2944
l707: tstCC R1, R0
l708: tstCS R9, R0, LSR #1
l709: tstCS R11, R0, LSL #13
l710: tst R7, R7, LSL #1
l711: tst R7, R8, LSR R1
l712: tstGT R15, R2
l713: tst R3, R11, RRX 
l714: tst R4, R7
l715: tstLT R7, #14680064
l716: tstLE R14, R3, LSL R1
l717: tstLS R14, R0
l718: tst R14, R6, RRX 
l719: tstVC R1, R1
l720: tstVS R2, R7
l721: tst R0, R15
l722: tst R5, R14
l723: tstMI R15, R10, RRX 
l724: tst R3, R1, RRX 
l725: tstLE R7, R7, ROR #12
l726: tst R0, #1744830464
l727: tstLS R8, #512
l728: tstLE R1, R5
l729: tstGE R2, R1
l730: tstPL R7, R8, LSL #3
l731: tstEQ R6, #34
l732: tstLT R2, R1
l733: tstEQ R3, R5, LSL R12
l734: tstEQ R6, R9, RRX 
l735: tst R8, R5, LSL R5
l736: tst R9, R11, RRX 
l737: tst R7, R2, RRX 
l738: tstLT R15, R14, RRX 
l739: tst R15, R12
l740: tstMI R0, #130
l741: tstHI R14, R2, LSR R9
l742: tstEQ R10, R8
l743: tstGE R9, #210
l744: tstGT R7, #40370176
l745: tst R7, R8, RRX 
l746: tstHI R15, R15, RRX 
l747: tstMI R0, #236
l748: tstVS R5, #2816
l749: tstGT R2, R10, RRX 
l750: tst R8, R6, LSL #14
l751: tstCC R11, R4, ROR #24
l752: tstEQ R9, R6, ASR R3
l753: tst R0, R15
l754: tstMI R11, #9306112
l755: tst R0, R2, ASR #5
l756: tstCS R8, R5, LSL #29
l757: tst R5, R7, RRX 
l758: tstLE R9, R10, ASR #6
l759: tstCC R12, R10, RRX 
l760: tst R2, R1, RRX 
l761: tstMI R10, R11
l762: tstHI R12, R3
l763: tstEQ R3, #805306369
l764: tstLE R2, R1, ASR #2
l765: tst R11, R7, LSR R2
l766: tst R12, R2, LSL R10
l767: tst R2, R10, ROR R2
l768: tstCS R10, R6, LSL #4
l769: tstLT R6, R15, RRX 
l770: tst R11, R5
l771: tstVC R9, R5, ASR #22
l772: tstLE R15, R15, LSR #31
l773: tstGE R5, R4
l774: tst R9, R7, LSL R9
l775: tstHI R9, R11, LSR R11
l776: tstCS R10, R4, LSL #28
l777: tst R1, R10
l778: tst R9, R2, LSR R3
l779: tstNE R3, #-536870899
l780: tst R6, #-1627389952
l781: tstEQ R3, R1, ASR R9
l782: tst R12, #13369344
l783: tstLS R7, R4, RRX 
l784: tst R11, R2, ASR #20
l785: tst R7, R6, LSR R2
l786: tst R15, #2113536
l787: tst R11, R7
l788: tst R4, R2, RRX 
l789: tstHI R11, R8, LSR #13
l790: tst R12, R9, ROR R2
l791: tst R15, R11
l792: tst R9, R7, ROR R11
l793: tstLE R2, R7
l794: tstGT R15, #384
l795: tstVS R7, R2
l796: tstCS R5, R14, RRX 
l797: tstLT R6, #1296
l798: tstCS R14, #6422528
l799: tstMI R11, R3, LSR R1
l800: tst R8, R1, ROR R4
l801: tstLE R0, #30208
l802: tstMI R10, R12
l803: tst R8, R4
l804: tstMI R3, R6, LSR R5
l805: tstLE R14, R14, ROR R4
l806: tst R9, #2208
l807: tstCC R14, R8, ASR #2
l808: tst R5, R1, LSL R8
l809: tstLS R0, #344064
l810: tst R3, R9, ROR R0
l811: tst R6, #373293056
l812: tstLT R11, R8, LSR R6
l813: tstNE R6, R3, RRX 
l814: tstGT R10, R9
l815: tstLS R1, R10, LSL #0
l816: tst R2, #22016
l817: tstHI R11, #12288
l818: tstEQ R0, R4, ROR #8
l819: tst R3, R2
l820: tst R6, R5
l821: tst R3, R14, ASR R5
l822: tstVS R9, R3, ASR R10
l823: tst R5, R6
l824: tst R6, R7
l825: tst R9, R8, RRX 
l826: tst R8, R4, ROR R7
l827: tst R1, R4, LSL #7
l828: tstCC R11, #-1073741788
l829: tstLS R8, R14
l830: tstEQ R10, R12
l831: tstHI R8, #3344
l832: tstPL R10, R4, ASR R6
l833: tstMI R9, R3, ASR #13
l834: tstLE R14, R15, RRX 
l835: tst R1, R5, RRX 
l836: tst R1, R0, LSL #2
l837: tst R11, R10
l838: tstLS R10, R6, LSR R4
l839: tst R6, R5, ASR #18
l840: tstGT R1, R3, LSR #27
l841: tst R10, R9
l842: tstLE R15, R4
l843: tstLT R2, R14
l844: tstGT R1, #790528
l845: tstEQ R0, R0
l846: tst R14, #428
l847: tstNE R4, R10, ROR #5
l848: tstNE R1, R3, ASR #29
l849: tstCS R12, #-603979775
l850: tstVC R6, R4, LSL #30
l851: tstNE R12, R9
l852: tstPL R9, #6750208
l853: tstLS R5, R1, LSL R0
l854: tst R3, R2, LSL #23
l855: tstCS R10, R10, ROR R10
l856: tstGT R4, R3, LSL R0
l857: tst R3, R1
l858: tstPL R7, R6, LSR R14
l859: tstCS R7, R4
l860: tstVS R4, R2, ASR #2
l861: tst R7, R4, LSL #13
l862: tstNE R7, R12, LSL #6
l863: tstLT R5, R8, LSL R14
l864: tst R14, R10
l865: tstVC R9, #-1627389952
l866: tstLS R4, #179
l867: tst R9, R14
l868: tstVC R10, R15
l869: tst R4, R7
l870: tstVS R11, #-1610612733
l871: tstLT R2, R0, RRX 
l872: tstLS R10, R5, LSR R6
l873: tstLS R14, #608
l874: tstGE R7, R8, RRX 
l875: tst R12, R10
l876: tst R7, R10
l877: tst R11, R9
l878: tst R7, R3
l879: tst R8, #-1073741789
l880: tstLE R3, R14, LSR R14
l881: tstPL R10, R2, ASR #4
l882: tst R5, R10, RRX 
l883: tst R14, #60160
l884: tstPL R9, #212992
l885: tstLE R0, #206569472
l886: tstPL R0, R15
l887: tst R15, #87031808
l888: tstNE R12, R4, LSL #17
l889: tstGT R11, #768
l890: tstGT R14, R6, ASR R3
l891: tstHI R2, R14
l892: tstVS R9, R10, LSR #21
l893: tst R6, R11, LSL R9
l894: tst R4, #105
l895: tstCS R0, R9, ROR #2
l896: tstLE R14, R3, ASR R9
l897: tstCC R2, R6, ROR R4
l898: tst R9, R11, LSL #7
l899: tstCS R7, #324
l900: tstVS R7, R2, ASR #24
l901: tst R11, #-805306356
l902: tst R4, R10
l903: tst R5, R10
l904: tst R5, R9, ROR R12
l905: tstCC R7, R12, RRX 
l906: tst R10, R7, ROR #12
l907: tstCC R11, #57344
l908: tstCS R2, R10, LSL R9
l909: tstLE R8, R9, LSL #17
l910: tst R11, R1, LSL R12
l911: tst R6, R2, LSR #11
l912: tstVS R4, R11
l913: tstPL R10, R2, RRX 
l914: tst R5, R4
l915: tst R14, R14, LSR #8
l916: tstCS R9, R2, LSL R0
l917: tstLS R10, #220
l918: tst R8, R1, RRX 
l919: tstVC R6, R3
l920: tst R7, #-1207959552
l921: tst R9, R10
l922: tst R6, #14483456
l923: tstNE R6, #4736
l924: tstLS R3, #1275068419
l925: tstNE R15, R10
l926: tst R6, R12
l927: tstMI R11, R2, LSR R12
l928: tst R11, R2
l929: tst R9, R10
l930: tstCC R11, R14, ROR R11
l931: tstNE R12, R6, LSL R12
l932: tst R5, R15
l933: tst R2, R3, ROR #18
l934: tstVS R8, R4
l935: tstPL R11, R8, ROR #30
l936: tst R12, R6, RRX 
l937: tstCC R10, R10
l938: tst R11, R8
l939: tstCS R1, R1
l940: tstHI R0, R7, RRX 
l941: tst R8, R7, ASR R5
l942: tstHI R3, R4
l943: tstLE R1, R11, ASR #17
l944: tstPL R0, R12, RRX 
l945: tst R8, #125
l946: tstMI R7, R2, RRX 
l947: tst R0, #2064384
l948: tst R12, R8, ASR R2
l949: tst R1, R14, ASR R0
l950: tstCS R12, R6, ASR R2
l951: tstVS R4, R7
l952: tst R14, #21233664
l953: tst R11, R11, ASR R5
l954: tst R10, R6, LSR R11
l955: tstPL R9, #1728
l956: tst R0, #3096576
l957: tst R3, R9, ROR #18
l958: tst R4, #60030976
l959: tstVS R15, R1
l960: tstCS R5, R0
l961: tst R3, R9
l962: tstEQ R15, #356352
l963: tstGE R6, R3, LSL #7
l964: tstLE R1, R3
l965: tstHI R3, R3, ROR #7
l966: tstCS R5, R1, ROR R4
l967: tstGT R5, R11, LSR R2
l968: tstLT R11, #788529152
l969: tstCC R0, R14, LSR R0
l970: tstNE R3, R0, LSL #29
l971: tstVS R2, #339968
l972: tst R14, #8192
l973: tst R1, R3, LSL #5
l974: tstCS R8, R2
l975: tst R11, R7
l976: tstHI R2, R0, LSR #5
l977: tstGT R3, R5, RRX 
l978: tst R11, R15, LSL #23
l979: tstNE R6, R7, LSR R10
l980: tst R4, R4, LSL #13
l981: tstCC R10, R7
l982: tst R0, R6, ASR #0
l983: tstCS R0, #-1073741821
l984: tstGT R1, R7, ASR #16
l985: tstLE R4, R11, LSL #17
l986: tst R11, R0
l987: tstVC R7, R0, RRX 
l988: tst R11, R5, ROR R10
l989: tstLE R8, R9, ROR #18
l990: tst R4, #44
l991: tst R9, R14
l992: tst R0, R10, LSR #12
l993: tst R9, R1, LSR R9
l994: tst R2, R9, ROR R6
l995: tst R9, R7
l996: tst R12, #524288000
l997: tstPL R9, R4, LSR R1
l998: tst R10, R10
l999: tst R10, #46399488
l1000: tst R11, #2560
end: b end

