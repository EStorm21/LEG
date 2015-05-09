# Building for Modelsim

Modelsim expects a different layout of memory than qemu does. It expects a text file with hex, with various addresses:
```
00000000
13010000
00000108
00800100
41130000
00616561
62690001
09000000
06010801
@00018000
0000A0E1
0000A0E1
0000A0E1
0000A0E1
0000A0E1
0000A0E1
0000A0E1
0000A0E1
```

The process of generating this file has been put in the makefile. Basically, it is
- Run `objdump` with `-d --full-contents` to dump the `.elf` file into a text file
- Run my python script `parsedump.py`, which parses the output into the right form
- Prepend a jump instruction to the bootloader at `0x10000`