To debug a raw bootloader, start QEMU with
```
qemu-system-arm -M versatilepb -m 128M -nographic -serial stdio -kernel system.bin -S -s
```
and then in a separate tab run
```
gdb-multiarch -iex "set architecture arm" -iex "target remote :1234"
```

You can then use `stepi` to step one instruction, `stepi N` to step N instructions, `info reg` to print out the registers, `x/10i $pc` to output the 10 assembly instructions after the program counter, `x/10z 0x??????` to output some particular memory location, and `set $r0 = value` to set a register explicitly. `continue` stops the debugging process.

# GOTCHAS

* The value of `r2` does not actually determine where Linux looks for ATAGS! Thus changing `r2` will NOT change its boot parameters. Boot parameters instead have to go at exactly 0x100 (in general)