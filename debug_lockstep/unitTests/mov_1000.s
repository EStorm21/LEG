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
val1: .word 4024984822
next1:ldr R2, val2
b next2
val2: .word 3376704843
next2:ldr R3, val3
b next3
val3: .word 2492465492
next3:ldr R4, val4
b next4
val4: .word 2924620460
next4:ldr R5, val5
b next5
val5: .word 131542323
next5:ldr R6, val6
b next6
val6: .word 4249377157
next6:ldr R7, val7
b next7
val7: .word 888786943
next7:ldr R8, val8
b next8
val8: .word 2690584926
next8:ldr R9, val9
b next9
val9: .word 1962683406
next9:ldr R10, val10
b next10
val10: .word 1946197367
next10:ldr R11, val11
b next11
val11: .word 483959386
next11:ldr R12, val12
b next12
val12: .word 1876822927
next12:ldr R14, val14
b next14
val14: .word 1171123081

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 4286191588
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4030470424
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 925205230
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2528128169
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 701194271
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2220973650
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1515735298
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2804396333
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3416969394
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1638726356
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2806040418
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3564009522
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3757962180
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1223463854
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 28733577
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1921644027
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 991297187
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2828985609
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 4174200480
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3004267898
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2079615499
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: movNE R10, R8, LSR R4
l2: movEQs R14, R10, ROR #6
l3: movLE R12, R3
l4: mov R6, R2, LSL #18
l5: movs R10, R14
l6: movGT R7, R5, RRX 
l7: movLEs R14, #2063597568
l8: movCC R14, R11, ASR #25
l9: movHIs R0, R14, LSR R4
l10: mov R5, #-486539264
l11: movEQ R12, R4
l12: movMI R9, R9
l13: movGT R2, R2, LSR R6
l14: movHIs R0, R6, ROR #30
l15: movLE R1, R15
l16: movLEs R3, R1
l17: movLTs R6, R15, RRX 
l18: movEQ R10, R10, ASR #12
l19: movLT R9, R7
l20: movLSs R1, R10, LSR R7
l21: movCCs R8, R1, ROR #11
l22: movMIs R6, R12, LSR R9
l23: movHIs R3, R14, RRX 
l24: movVS R14, R11, ASR #17
l25: movs R5, R11
l26: mov R1, R3, LSR R11
l27: movs R4, R10
l28: movGEs R0, #3031040
l29: movVCs R12, #-1828716544
l30: movs R3, R1, LSL R4
l31: mov R4, #-570425344
l32: mov R9, R7
l33: mov R7, #15424
l34: movVSs R10, #1984
l35: movs R14, #1677721600
l36: movGE R1, R8, LSR #20
l37: movs R8, R8, RRX 
l38: movPL R9, R5, LSR R14
l39: mov R1, R9
l40: movPL R9, #316
l41: movs R14, R15
l42: movVSs R5, R2, LSL R6
l43: movPLs R3, R12
l44: movNE R1, R8, ROR R8
l45: movs R10, R1, LSR R4
l46: mov R3, #168
l47: movLEs R4, #118489088
l48: movLE R12, R4, LSR #24
l49: movVC R3, R10, RRX 
l50: movLEs R1, #6592
l51: movs R4, R9
l52: movCC R11, R9, ROR R4
l53: movs R14, R9
l54: movLSs R5, R0, ASR #16
l55: movCC R11, R1
l56: movGTs R7, R1, ROR R9
l57: movNE R6, #8650752
l58: mov R9, #610304
l59: movGT R12, R12
l60: movGTs R9, R11, ROR #21
l61: movVSs R6, R0, ASR #29
l62: movCC R10, R4, RRX 
l63: movCC R8, #38144
l64: mov R6, R6
l65: movVCs R11, R11, ROR R7
l66: mov R5, R7, LSR #7
l67: movs R6, #15168
l68: movLE R3, R4
l69: movGEs R11, R11, LSL #30
l70: movMIs R1, R9
l71: movCCs R6, R11, LSL R14
l72: mov R4, R12, ASR R7
l73: movs R5, R3
l74: mov R6, #25088
l75: mov R14, #805306371
l76: movs R1, R11
l77: movLT R0, #79872
l78: movCCs R11, R4
l79: movs R14, R14, LSL R10
l80: movEQs R2, R1, RRX 
l81: movEQs R11, R3, LSL R4
l82: movPL R10, #-2147483622
l83: movGE R10, R14
l84: movs R12, R5, LSL #8
l85: mov R14, R1
l86: movs R3, #1023410176
l87: mov R6, R9, RRX 
l88: movVC R2, R4, ASR R12
l89: movPL R12, #80896
l90: movLTs R1, R0, RRX 
l91: movs R1, R0, RRX 
l92: movGT R6, #49283072
l93: movs R5, R9, RRX 
l94: mov R2, R12
l95: movMI R2, #2320
l96: mov R14, R1, ROR R2
l97: movLTs R9, #-1073741805
l98: movMI R1, R10
l99: movVC R7, R5, ASR R7
l100: movMI R4, R0, LSL #29
l101: movs R3, #-1073741822
l102: mov R2, R2, RRX 
l103: movs R12, #48128
l104: movGE R8, R3
l105: movVC R3, R10, RRX 
l106: movPL R0, #1073741871
l107: movs R6, #4587520
l108: movs R7, R5
l109: movs R3, #780
l110: mov R9, #56360960
l111: movGEs R6, R12, RRX 
l112: movGT R2, R0, LSL R5
l113: movEQ R5, R12, LSR #27
l114: mov R7, #100
l115: movs R11, #82
l116: movs R11, R14, ROR #11
l117: movGT R2, R3, LSR #25
l118: movCSs R3, R14
l119: movLEs R12, R0, RRX 
l120: movGE R12, #1610612736
l121: movGT R0, R1, ROR #8
l122: movHIs R6, R6
l123: movCS R14, #37486592
l124: mov R4, R1, ROR R8
l125: movNE R11, R3, RRX 
l126: movPLs R6, R8, LSL R5
l127: movLSs R2, R9, ASR #14
l128: mov R6, R5
l129: movs R8, #1056
l130: movs R8, #241172480
l131: movs R2, R0, LSL R7
l132: movs R2, #1703936
l133: movEQ R1, R11, ASR R12
l134: movLEs R6, R3, ROR #25
l135: mov R12, R0
l136: movGEs R10, R5, RRX 
l137: movMIs R10, R9, ASR R9
l138: movVS R11, #536576
l139: movs R5, R7, LSL #6
l140: movVC R14, R4
l141: movNE R10, R7, RRX 
l142: movs R4, #1507328
l143: movGEs R0, #-1342177273
l144: movHIs R8, R12, ASR R5
l145: movEQ R11, R2
l146: movs R0, #251658240
l147: movCS R7, R7, ASR R1
l148: movNEs R5, #12320768
l149: movCCs R11, R1
l150: movs R5, R1, RRX 
l151: movGT R10, R0
l152: mov R14, #928
l153: mov R5, R4, ASR #25
l154: movLSs R9, R2, LSL #5
l155: movCS R4, R10
l156: movVSs R1, R2, LSL R8
l157: movLTs R0, R0, RRX 
l158: movVC R10, R6
l159: movVCs R5, R10, LSL R11
l160: mov R1, R6, ASR R10
l161: movGTs R6, R15, LSR #4
l162: movLEs R14, #1728
l163: movs R7, #256
l164: movs R6, R14, LSR #23
l165: mov R3, R2, ROR R1
l166: movMIs R8, R0, LSR #18
l167: mov R3, R1, RRX 
l168: mov R10, R2, LSR R5
l169: movHI R7, R10, ASR #23
l170: movLSs R7, R9, ROR #22
l171: movGTs R5, R11
l172: movLEs R2, #11206656
l173: movLE R8, R9, LSR R11
l174: movCS R14, R8
l175: movLS R4, #-1409286142
l176: mov R12, R11, LSR R3
l177: movVS R0, R0, LSR R10
l178: movEQ R2, #6144
l179: movVS R12, #293601280
l180: movCS R0, R12, LSR #1
l181: movEQs R4, #536870914
l182: movs R4, R4
l183: movNEs R4, #140
l184: movNEs R12, R10, ROR #10
l185: movGEs R2, #15872
l186: movVC R6, #3616
l187: mov R11, R6
l188: movs R8, R4, LSR #31
l189: movEQs R11, #469762048
l190: movs R2, #16318464
l191: movGT R6, R0, ASR #26
l192: mov R6, R4, ASR #30
l193: movPLs R12, R11
l194: movs R8, R5, ROR R10
l195: movEQs R11, R2, LSR R0
l196: movs R3, R12, LSR #21
l197: movCC R0, R3, LSL #30
l198: movCC R0, R9
l199: movCSs R10, R4, ASR #29
l200: movEQ R14, R3, ASR #25
l201: mov R14, R10
l202: mov R4, R3, ROR #26
l203: mov R12, R6, LSR #3
l204: movMIs R11, #507904
l205: movs R2, R3, ASR #28
l206: mov R0, #1568
l207: movEQ R10, R3, LSL R11
l208: mov R14, R3, LSL #3
l209: movs R3, R10
l210: movGEs R3, R10, LSR R3
l211: mov R14, R10, ROR R12
l212: movCCs R1, R5, RRX 
l213: movVSs R14, #1073741829
l214: mov R5, #44564480
l215: movs R14, R3
l216: movLE R11, #98304
l217: movGTs R14, R15, RRX 
l218: movLE R9, #1536
l219: movMIs R4, R14, LSR #18
l220: movs R14, R8
l221: mov R2, R0, LSR #19
l222: mov R5, #41
l223: movGT R9, #212
l224: movs R14, #-973078528
l225: movPLs R12, R10, LSL #3
l226: movHIs R0, #32256
l227: movs R2, R14, ROR #26
l228: movLE R5, R2, ROR R0
l229: mov R8, #960
l230: movs R1, R7, LSL R12
l231: mov R10, #1610612747
l232: movLE R12, R7, LSR #7
l233: mov R12, R9, ASR R4
l234: movVSs R1, #1441792
l235: movCCs R8, R0
l236: movGTs R6, R5, LSL R5
l237: movLEs R5, R8
l238: movCC R2, #1703936
l239: movEQ R14, R3, LSR R9
l240: movLTs R0, R11
l241: movLE R11, R3, RRX 
l242: mov R4, R8, ROR #7
l243: mov R3, R11, LSL #0
l244: movs R7, #-268435442
l245: movGT R12, #28928
l246: movs R6, R12, ROR R8
l247: movPL R1, R8
l248: movs R14, #992
l249: movLE R4, #802816
l250: movLE R7, #14155776
l251: movLSs R11, R5, ASR R11
l252: movs R14, R12, ROR R1
l253: movLSs R6, R12
l254: movLS R7, R5, RRX 
l255: movs R3, R0
l256: movHIs R6, #-1073741777
l257: movLEs R12, #398458880
l258: movs R2, R10, LSL #7
l259: movVS R4, R2, ROR #30
l260: movCC R10, R10
l261: mov R1, #224
l262: movs R11, R7
l263: movVC R2, R4, ASR R10
l264: movCC R9, #570425344
l265: movGE R11, #8832
l266: mov R4, R0, LSL #5
l267: movs R8, R15, ASR #10
l268: mov R10, R9, LSL R4
l269: movGE R3, #29440
l270: movs R3, R15
l271: movs R8, #245760
l272: movMI R2, R5
l273: movNEs R11, R10, RRX 
l274: movs R3, R10, LSL #20
l275: movCS R4, R1, ASR R8
l276: movs R6, R4
l277: movLSs R0, R0
l278: movLSs R7, R9, ROR R10
l279: movVS R11, R1, LSR R4
l280: movGTs R9, R3, ROR #7
l281: movEQs R14, R7
l282: movLE R6, R2, RRX 
l283: mov R12, R10, ROR #28
l284: movs R3, R9
l285: mov R12, #52953088
l286: movMIs R1, R4, LSR R6
l287: movMI R14, R2
l288: mov R8, R3, LSL R9
l289: movGE R10, #76800
l290: movMI R6, R5, ASR #25
l291: mov R6, R11
l292: movs R5, R11, ROR R12
l293: mov R5, R8, LSL #14
l294: movLTs R1, R6, ROR R6
l295: movVCs R12, R5, LSR R9
l296: movEQs R6, R10, ROR R5
l297: movMI R10, R8, LSR R3
l298: movLE R0, R12, RRX 
l299: movCC R3, R11, RRX 
l300: movVS R10, R4, ROR #26
l301: movPLs R14, #50855936
l302: mov R14, R2, ROR #14
l303: movVC R8, #110592
l304: movEQs R6, #784334848
l305: movs R6, #8978432
l306: movLSs R2, #143
l307: movs R11, #6976
l308: movEQ R10, R14
l309: mov R2, #738197504
l310: movNEs R6, R7
l311: mov R7, R3
l312: movCCs R10, R8
l313: movEQs R1, R11
l314: mov R9, R8, LSR #18
l315: movs R8, R5, LSR #6
l316: movLTs R5, R12
l317: movGE R11, R2, ROR R4
l318: movMIs R2, R4, ASR #6
l319: movCC R11, R10, LSR R10
l320: movLEs R1, R3, LSL #22
l321: mov R7, R2
l322: movEQs R7, R1
l323: movs R9, R6, ROR #14
l324: movEQ R14, #16640
l325: movLEs R4, R14, ASR R3
l326: movPL R12, #54001664
l327: mov R9, R3, LSR #15
l328: movMI R14, R6, ROR R10
l329: movs R8, R8
l330: movs R7, #2326528
l331: movCC R8, R7, LSR R14
l332: movs R8, R6, LSL R0
l333: mov R1, R9
l334: movHIs R14, R12, RRX 
l335: movHIs R9, #16896
l336: movPL R14, R3, LSR R11
l337: movs R4, #1152
l338: movGEs R10, R1, ASR #27
l339: movLS R7, R3, ASR #10
l340: movs R11, R15
l341: movLTs R2, R3
l342: movVS R5, R12
l343: mov R10, R5, LSL #16
l344: movs R1, R0
l345: mov R11, R11, RRX 
l346: movPL R14, R3, ROR #8
l347: movHIs R4, R4, LSL #24
l348: movCSs R1, #73400320
l349: movLTs R8, #159383552
l350: movCC R5, R12
l351: movLSs R0, R0, ROR R8
l352: movPLs R5, R1
l353: mov R0, R0, RRX 
l354: movLSs R8, R3
l355: movHI R7, R15
l356: movMI R11, R3, LSL R11
l357: movGEs R10, R2, LSR R4
l358: movGEs R10, R6, RRX 
l359: mov R3, R15, RRX 
l360: movs R10, R9, ASR #21
l361: mov R2, R7, LSR R2
l362: movEQs R10, R8, RRX 
l363: movVC R2, R2, LSR R7
l364: movMIs R4, R6, RRX 
l365: mov R6, R7
l366: movHI R11, R11, LSR #3
l367: movCC R11, R14
l368: movEQ R2, R7, RRX 
l369: movs R9, #268435464
l370: movNE R12, #17825792
l371: movVSs R12, R6, LSR R2
l372: movGTs R1, R2
l373: movs R5, R1, RRX 
l374: mov R3, R0, RRX 
l375: movs R9, R6
l376: movGE R8, #-1073741811
l377: movs R8, #13824
l378: mov R3, R8, RRX 
l379: movGEs R8, R7, LSR R7
l380: movNEs R3, R15
l381: movs R7, #19
l382: movMIs R5, R7, LSL #22
l383: movEQ R7, R10
l384: movGEs R3, R1
l385: movGTs R2, R0, ROR R4
l386: movEQ R4, R8, ROR R8
l387: movs R8, R9, RRX 
l388: mov R2, #788529152
l389: movNEs R14, R8
l390: mov R12, R10
l391: mov R11, R10, LSL R10
l392: movs R11, R3, LSR #17
l393: movs R4, R8, ROR #18
l394: movs R5, #-2147483644
l395: movs R2, #798720
l396: movVCs R3, R4
l397: movs R1, R6, ROR #2
l398: mov R8, R6
l399: movLS R10, R3, ASR R6
l400: movGT R4, R10
l401: movPL R5, R10
l402: movGTs R4, #32512
l403: movPL R10, #452984832
l404: movs R6, R4
l405: mov R10, R4, ROR #2
l406: movNE R14, R2, ROR #26
l407: movVS R11, #469762051
l408: mov R1, #1073741870
l409: movHIs R10, R6, ROR R3
l410: mov R9, R0, ASR R4
l411: movs R3, #34340864
l412: movCS R6, R2, LSR #1
l413: movPLs R0, R14, LSR R8
l414: movCSs R6, R6, ROR #4
l415: movs R10, R12, ROR R4
l416: movs R4, R7, LSL R10
l417: movs R11, R4, ASR R14
l418: movEQs R4, R12, RRX 
l419: movLE R8, R12, LSR #10
l420: mov R2, #-1073741789
l421: movs R4, R8
l422: movEQ R1, #61952
l423: movs R10, R6, LSR R2
l424: movLSs R14, #-1711276032
l425: movLTs R8, R6, ASR R1
l426: movLEs R10, #1507328
l427: movLE R8, #19660800
l428: movCC R1, R1, LSL #22
l429: mov R6, R1, ASR #30
l430: movs R2, #1408
l431: mov R3, R7, ASR #27
l432: movLT R9, R4, LSL #20
l433: movs R8, R8, ROR R12
l434: mov R4, R12, LSR R9
l435: movGEs R8, R9
l436: movLEs R11, R1, LSR R0
l437: movLE R5, R1
l438: movLE R3, R0
l439: movLSs R4, #2080374787
l440: movGTs R11, R4, RRX 
l441: mov R6, R11, ROR #11
l442: movLTs R2, R10, ROR #18
l443: mov R10, R14
l444: movs R8, R7, RRX 
l445: movCCs R8, #204
l446: movMIs R8, R5, ASR #26
l447: movLTs R12, #8640
l448: movGTs R7, R3
l449: movPL R3, R10, ROR R0
l450: movCCs R12, #88064
l451: movs R5, R11
l452: mov R1, R0
l453: mov R3, R15
l454: movNEs R7, R8, LSL #3
l455: movs R9, R6
l456: movs R1, R9, LSL R8
l457: movs R11, R7, ROR #6
l458: movVC R11, #183500800
l459: movEQs R4, R7
l460: movEQ R0, #1677721601
l461: movs R9, R9
l462: movVCs R2, R12
l463: movLS R12, #-738197504
l464: movGTs R3, #864
l465: movLT R1, R1, RRX 
l466: mov R14, R4
l467: mov R6, R6
l468: movPLs R6, R7, ASR #4
l469: mov R5, R6, LSR R10
l470: movLSs R6, #-2147483617
l471: movs R5, #3680
l472: movCC R0, #119
l473: movs R7, R7, LSR R7
l474: movVS R5, R15
l475: movPLs R3, R7
l476: mov R0, #14208
l477: movPL R14, R6, LSR #0
l478: movCC R2, R0, ROR #13
l479: movNEs R11, #51968
l480: movCS R10, R2, ROR #22
l481: movEQ R0, R10
l482: movHI R1, R12, ROR R10
l483: movEQ R10, R0
l484: movs R10, R5, ASR R14
l485: movLEs R7, R11
l486: movPL R8, R5, LSR #12
l487: mov R9, R9, ASR #14
l488: movLS R7, #49152
l489: movs R7, R5, LSR R9
l490: movGT R10, R8
l491: mov R0, R8, RRX 
l492: mov R4, R7
l493: movEQs R2, R12
l494: mov R3, R9, LSL R3
l495: mov R12, #-1627389952
l496: mov R8, R10, ROR R9
l497: movs R10, R6, LSR #30
l498: mov R12, R11, ROR #7
l499: movs R1, R15, LSR #3
l500: movVCs R14, #-2147483619
l501: mov R5, #-536870900
l502: movLTs R1, R1, ASR R1
l503: movMI R8, R5, ASR R4
l504: mov R2, R12
l505: movs R9, R12, LSL #24
l506: movLEs R8, R5
l507: movLE R1, R7, LSL #18
l508: movMI R10, R1
l509: movLT R6, #348127232
l510: movs R12, R12, LSR #16
l511: movVS R5, R1, ROR #8
l512: mov R5, R5
l513: movMI R9, #1946157056
l514: movGT R14, R9
l515: movs R1, R7
l516: movs R8, R11, ROR R0
l517: movs R0, R8, ROR #5
l518: mov R1, R12
l519: movCC R3, R10, ASR R10
l520: movs R8, R10, RRX 
l521: movGTs R10, R3, RRX 
l522: mov R9, #1648
l523: movHI R10, R14, LSR #7
l524: movs R2, R6, ROR R3
l525: movPL R4, R1, LSL #8
l526: movs R4, R0, ROR #3
l527: movGE R7, #31719424
l528: movLSs R5, R7
l529: movEQs R0, R4, LSR R6
l530: movLTs R2, R9, ASR #25
l531: movCSs R5, R2, LSL R9
l532: mov R10, R6, LSL R0
l533: movHIs R1, R0
l534: mov R5, R3
l535: movLE R9, R2
l536: movVCs R10, R5, ASR R6
l537: movs R8, R1
l538: movs R1, R14, ROR #22
l539: mov R2, R3
l540: mov R2, R12
l541: movs R0, #2768896
l542: movs R14, R10, RRX 
l543: mov R3, #-1275068416
l544: movLT R10, #-1879048178
l545: movs R3, R10, LSR #16
l546: mov R12, #311296
l547: mov R5, R2, LSR #29
l548: movCC R6, R3, RRX 
l549: movLT R4, R8
l550: movLE R2, R0
l551: movCC R6, R14
l552: movs R0, R10
l553: movGE R8, R10
l554: movVS R2, R1, RRX 
l555: movVCs R4, #944
l556: movVCs R9, #737280
l557: movCS R0, R14
l558: movs R12, R6, LSL #4
l559: movLSs R9, R10
l560: mov R14, #286720
l561: movPL R3, #5888
l562: movMI R7, R6
l563: movVSs R9, #13824
l564: movs R2, #896
l565: movs R8, R15
l566: movVCs R4, #139264
l567: mov R1, R15
l568: movEQs R4, R8, LSR R2
l569: movs R14, #167
l570: movGT R6, R10, ROR #14
l571: movs R11, R2
l572: movVS R10, R1, RRX 
l573: movs R4, #272
l574: mov R1, R2
l575: movLSs R8, #-637534208
l576: movCS R8, R5, ASR #9
l577: movVSs R1, R2
l578: mov R6, R11
l579: movLE R8, R4
l580: mov R4, R1
l581: movGT R9, R8, ASR R14
l582: movMIs R0, R8, LSL #1
l583: movGE R2, #49152
l584: mov R11, R8, ASR #7
l585: movMIs R11, #9152
l586: mov R14, R4, RRX 
l587: movGEs R3, R2
l588: movLTs R0, R8
l589: movs R8, R6
l590: movNEs R9, R2, ROR R6
l591: movVC R1, R9
l592: mov R12, R15
l593: movs R7, R5, LSL R10
l594: mov R2, #177209344
l595: movVC R1, #-805306362
l596: movHIs R6, R11, ASR R4
l597: movs R12, #744
l598: movs R11, #565248
l599: movs R12, R0
l600: movVC R14, R8
l601: movs R10, R15
l602: movCSs R5, R12, LSR R12
l603: movNE R2, R9, LSL R10
l604: movLT R9, R5
l605: movPLs R10, R11, RRX 
l606: movs R4, R7
l607: movLSs R4, #115343360
l608: movs R5, R15, ASR #14
l609: movLEs R4, R9, LSL #24
l610: movHI R11, #15990784
l611: movEQs R0, R1, LSR R0
l612: movs R1, R3, ROR #18
l613: movs R9, #55
l614: movs R9, R1, ROR #9
l615: movNEs R10, #491520
l616: mov R0, R12, LSR R3
l617: movs R11, R5, LSR #20
l618: movs R10, R14, ROR R1
l619: movCSs R8, #6619136
l620: mov R7, R4
l621: movLE R0, R5
l622: movMIs R7, R2, ROR R4
l623: movGTs R10, R2, LSL R12
l624: mov R1, R2, LSL R2
l625: movGE R5, #16449536
l626: movLEs R4, R9
l627: movLSs R4, R8
l628: movGE R8, #-1073741776
l629: movs R8, R14
l630: movs R14, R1
l631: movs R5, R3
l632: movHIs R14, #1019904
l633: movs R7, R0
l634: movGTs R5, R7, ROR R1
l635: movs R10, R3, ASR R12
l636: movCS R1, R11, ASR R1
l637: movCC R12, R0
l638: movEQ R5, R10
l639: movCSs R1, R14, LSR #3
l640: movs R14, R1
l641: mov R10, #1010827264
l642: mov R8, R15
l643: mov R11, R5, ROR R3
l644: movs R5, #20709376
l645: movVCs R8, R3, LSR #20
l646: movVC R11, R9
l647: movVC R11, R1
l648: movCCs R14, #36864
l649: mov R10, R15, LSL #1
l650: movs R11, R2, RRX 
l651: movs R11, R5, LSL R6
l652: movNEs R0, R11, LSL R4
l653: movs R12, R4, LSR #6
l654: mov R1, R1, LSL #20
l655: movMIs R7, R11, LSL #20
l656: movHI R2, R11, LSL R0
l657: movCCs R1, R12, ROR R1
l658: mov R11, #139264
l659: movVSs R11, R10, LSR #15
l660: movLSs R11, R0, ROR R6
l661: mov R10, R10
l662: mov R7, R12, LSL #12
l663: mov R4, #3784704
l664: movEQ R9, R4, LSL R3
l665: movLS R2, R4, ROR R5
l666: movHIs R11, R9
l667: movs R2, #856
l668: movLEs R6, R10, LSR #31
l669: movs R12, #8960
l670: movGTs R3, R5, LSL R6
l671: movLTs R3, R12
l672: movs R3, R10, ROR R1
l673: movNE R6, R15
l674: movGT R14, R4
l675: mov R1, #268435456
l676: movGEs R0, R8, ROR R11
l677: movs R14, R8, ROR R12
l678: mov R11, R2
l679: movs R14, #339968
l680: mov R8, R12
l681: movs R12, R3, LSR #0
l682: movLS R8, R0, LSL R4
l683: movMIs R5, #188743680
l684: movs R10, R11, ASR R1
l685: movs R11, R10, RRX 
l686: movHIs R12, R14, LSR #14
l687: mov R8, #110
l688: movLE R2, #1879048192
l689: movs R8, R15, ASR #7
l690: movCC R8, R10
l691: movCS R3, R12
l692: mov R1, R12, LSR #14
l693: movVCs R14, R8, ASR R8
l694: mov R9, #51456
l695: mov R6, R6
l696: mov R10, #19712
l697: movVCs R9, R12, LSL R12
l698: mov R11, #67108864
l699: movGE R0, R8, ROR R8
l700: movPL R0, R12
l701: movNE R5, R2, ROR R1
l702: movHI R10, R5, LSL R5
l703: movLTs R11, R7
l704: movVS R2, #32000
l705: movEQ R3, R6, ROR R10
l706: movMIs R1, R4, LSL R11
l707: mov R2, R8
l708: movs R6, #348127232
l709: movVC R4, #113
l710: movPL R11, R5, LSR R7
l711: movCCs R1, R15, RRX 
l712: movLEs R11, R15
l713: movVC R1, R5
l714: movGEs R12, R11, ASR R8
l715: movMIs R10, R8, RRX 
l716: movCS R1, R9
l717: movs R11, #40632320
l718: movVCs R11, #117440512
l719: movs R5, R11
l720: movEQ R3, R3, RRX 
l721: mov R12, #9699328
l722: movGEs R12, #564
l723: movVCs R8, R7
l724: mov R8, R1, ROR #11
l725: movCS R10, #1509949440
l726: movGEs R9, R12, LSL R2
l727: movEQ R8, #-1073741815
l728: movCS R2, R12, ASR R2
l729: movGE R10, R1, ROR #16
l730: movCS R9, R14
l731: movLE R8, #335544321
l732: movEQ R7, R11, LSR R1
l733: movNEs R6, R14, ASR R5
l734: movs R7, R14, RRX 
l735: movs R4, R5, ROR #9
l736: movEQ R11, R1, ROR #11
l737: mov R9, R2, ROR R8
l738: movLS R14, R15
l739: movPL R5, R8, ROR #19
l740: movNE R8, R6, ROR R11
l741: movLEs R0, R14, ASR R2
l742: movs R6, R15, LSR #25
l743: movLT R3, #939524099
l744: movCS R5, #-1476395008
l745: movLS R10, #7168
l746: movPLs R10, #225280
l747: mov R4, R14
l748: movs R7, #200
l749: mov R8, R5, RRX 
l750: mov R8, R6
l751: movVSs R9, #57409536
l752: mov R11, R12
l753: movCCs R9, R14, LSR #12
l754: movCCs R5, R9
l755: mov R11, R0
l756: movLS R1, R10, ROR R1
l757: movVS R12, R9, RRX 
l758: movMI R4, #2048
l759: movGEs R8, R3, ROR R1
l760: mov R7, #22528
l761: movCCs R0, R1
l762: movVCs R12, #8126464
l763: movs R5, R11
l764: movMI R12, #-654311424
l765: movCS R4, R8, LSL R0
l766: movs R3, #155189248
l767: movEQ R4, R12, ROR #31
l768: movs R4, R9, ASR #19
l769: movLT R12, R11
l770: movGE R1, R2, ASR R4
l771: movs R14, R10, LSR R11
l772: movLS R9, R2, LSL R11
l773: movLS R1, R14, ASR #18
l774: mov R8, R10
l775: movGTs R12, R1, LSR R0
l776: movGE R11, #1073741846
l777: movGE R10, R14
l778: mov R14, R3, RRX 
l779: movs R12, R1, LSR #12
l780: movCCs R11, R6, ROR #28
l781: mov R1, #1509949440
l782: movEQs R14, R11, RRX 
l783: movHIs R11, R5
l784: movLT R2, #43520
l785: mov R7, R4, ROR R10
l786: movs R9, #25165824
l787: movs R3, R0, ASR R14
l788: movVC R4, R6, LSL R5
l789: movs R8, R8, RRX 
l790: movCC R14, R3, LSR R5
l791: movGE R3, R6
l792: mov R3, #29952
l793: movGE R8, R10, LSR #5
l794: movLTs R14, R0, RRX 
l795: movLS R7, R6, ROR #26
l796: movLS R8, #80
l797: movGEs R9, R14, LSL #24
l798: mov R3, #1006632960
l799: movs R14, #2688
l800: movGE R5, R9
l801: movGTs R10, R14, LSL R8
l802: movs R11, R0, RRX 
l803: mov R11, R0
l804: movLSs R10, #64
l805: mov R5, R3, LSL #19
l806: mov R11, R4
l807: movs R12, R6, ASR #26
l808: movNEs R11, R4, LSR R5
l809: mov R2, R12, ASR #18
l810: movs R14, #2211840
l811: movVCs R11, #171966464
l812: mov R7, R10, ASR #18
l813: movLE R10, R6, LSR #29
l814: movLSs R3, #2359296
l815: movPL R5, R10, RRX 
l816: movLSs R10, R1, ROR R11
l817: mov R10, R9, RRX 
l818: movNEs R9, R5, ASR R2
l819: mov R3, R0, ASR R6
l820: mov R7, R9
l821: movVSs R9, R1
l822: movCSs R10, R15, LSR #25
l823: movNEs R3, R0, LSR #14
l824: mov R1, R5, LSR #15
l825: mov R9, R10
l826: movs R8, #-2147483641
l827: mov R4, R4
l828: movVCs R10, R5
l829: movNEs R8, R12
l830: mov R10, #1015808
l831: mov R8, R10, ASR #29
l832: movVC R0, R11
l833: mov R8, R5, RRX 
l834: movs R7, R2
l835: movLSs R5, R11, RRX 
l836: mov R5, R0, LSR R12
l837: movs R12, R0, ROR R5
l838: mov R4, #465567744
l839: movGTs R1, #43515904
l840: movPLs R9, #40
l841: movs R3, #3904
l842: movVCs R4, R8, LSL #21
l843: movCS R4, R12, ASR #3
l844: movs R4, #738197507
l845: movLE R6, R4
l846: movVCs R0, R10
l847: movLTs R10, R0, LSR R12
l848: movs R9, R10, ASR R11
l849: mov R4, R6
l850: movLT R10, R12, RRX 
l851: movMIs R6, R0
l852: mov R14, R9, RRX 
l853: movLT R12, R5, RRX 
l854: movCCs R12, R2
l855: movs R3, R14, LSR #22
l856: movCSs R11, R15, ASR #4
l857: mov R9, R8, RRX 
l858: mov R1, R9, LSL R6
l859: movs R9, R5, ROR R6
l860: mov R5, R3, LSL #30
l861: movVS R4, #1073741882
l862: movVC R2, R5, LSR R9
l863: movs R2, R5, ASR R7
l864: mov R8, #1600
l865: mov R1, R10, ROR #8
l866: mov R2, R9
l867: movs R10, R10, LSR #7
l868: movNE R12, R11, LSR #22
l869: movGEs R1, R1, ROR R6
l870: movs R8, R8
l871: movLEs R7, R3
l872: movHIs R9, R14, LSL R2
l873: mov R4, R4
l874: mov R4, #3407872
l875: movLE R4, R8, LSL #17
l876: movVS R1, R9, RRX 
l877: movVS R12, R1, ASR R3
l878: movs R9, R12
l879: movCC R8, R12, RRX 
l880: mov R12, R0
l881: movs R4, R6, RRX 
l882: movVS R10, R1
l883: movVS R2, R5, RRX 
l884: movs R10, R11, RRX 
l885: movGTs R0, R7, ROR R7
l886: mov R0, #1792
l887: movNE R4, #81920
l888: movs R11, R12
l889: movPLs R9, R15, ROR #3
l890: movs R9, #406847488
l891: movs R9, R10, LSL R7
l892: movs R6, #796917760
l893: movVCs R7, #805306370
l894: mov R6, #1327104
l895: movGEs R5, #197132288
l896: movCS R4, R10, ASR R12
l897: mov R1, R10, ROR #4
l898: mov R10, R9, ASR R3
l899: mov R4, #188416
l900: movs R6, #327680
l901: movCCs R6, R0, RRX 
l902: movNEs R14, R9
l903: movPL R2, #69632
l904: movMIs R10, #167936
l905: movGE R2, R3, LSR #20
l906: movCCs R6, R1, RRX 
l907: movMI R6, R12
l908: movs R14, #38
l909: movs R7, #490733568
l910: movVC R0, R2, ASR #21
l911: movVC R11, R3, ASR R10
l912: movGEs R4, R2, ASR R5
l913: movLS R0, R10, LSL #28
l914: movs R9, R5
l915: movEQ R8, R10, RRX 
l916: movs R10, #117440512
l917: movCC R2, R0, ASR R9
l918: movLSs R0, R14, ASR R2
l919: movNEs R10, R12, LSL R8
l920: mov R2, R5, LSR R0
l921: mov R4, #11136
l922: movLS R0, #11456
l923: movCS R8, #3344
l924: movEQs R11, R2, ASR #31
l925: movs R0, #507510784
l926: movCC R14, R4, ASR R2
l927: movLTs R10, R14, LSL R7
l928: movs R1, R15
l929: movLEs R6, R7, LSL #31
l930: movLTs R3, R2
l931: mov R8, R1, LSL #0
l932: movGT R7, #10112
l933: mov R6, R2
l934: movs R10, R3, ROR #28
l935: movHIs R6, R1, LSR #17
l936: mov R12, R3, RRX 
l937: movHI R4, R9, LSR R10
l938: movPLs R3, R11
l939: movMI R2, #1012
l940: movLS R4, #836
l941: movs R9, R0, LSL #9
l942: movEQs R7, R8
l943: movPLs R7, #3648
l944: movVS R7, #17664
l945: movPLs R3, R8, RRX 
l946: movs R9, R15
l947: movEQ R2, R3, LSL R2
l948: movCC R11, R2, LSR R1
l949: movs R3, #-805306354
l950: movs R11, #-1073741822
l951: movs R5, R3, ASR #17
l952: movNEs R14, R10, ROR R8
l953: mov R9, R4, LSR R5
l954: movs R3, R7
l955: mov R8, R14, ASR R7
l956: movs R10, R7, LSL #28
l957: movHI R0, #61696
l958: movGEs R3, R5
l959: movEQ R10, R0, LSL #28
l960: movs R14, #116
l961: mov R9, R2, LSL R12
l962: mov R6, #111616
l963: movs R8, R8
l964: mov R1, #197
l965: movVCs R11, #54525952
l966: movs R7, R14, ASR #9
l967: movs R9, R15, RRX 
l968: movs R14, R7, LSR R5
l969: movVSs R7, R15
l970: movNEs R12, R7, LSL R11
l971: movLS R10, #692
l972: movs R6, R1
l973: mov R9, R2
l974: movLT R0, #42
l975: movCCs R14, #3728
l976: movs R8, #-1342177266
l977: mov R3, R4, RRX 
l978: movLT R12, R6, ASR R1
l979: movHIs R5, #544
l980: movPLs R10, R3
l981: movGE R7, R3, ROR R2
l982: movs R5, R2
l983: movEQ R5, R1
l984: movLT R8, R12, ROR R7
l985: movGTs R12, R15
l986: movLT R6, #-1073741778
l987: movMIs R14, R2
l988: movHI R14, R1, ROR #16
l989: movVS R2, R9, LSL R11
l990: movMIs R5, #50331648
l991: movPL R7, R10
l992: mov R2, R15, ROR #25
l993: movNEs R1, R3, LSL R7
l994: movLSs R8, R7, ASR R4
l995: movs R5, R8, ROR R2
l996: mov R9, R0
l997: movs R12, R15
l998: movMI R0, R9, ROR R6
l999: movLEs R8, R14
l1000: movLS R6, R7, LSL #18
end: b end

