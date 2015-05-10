# Making a minimal bootloader for Integrator CP

Making a minimal bootloader is slightly more complex than the previous steps. A minimal bootloader only has to do a few things:

* Set r0 = 0x0
* Set r1 to the machine type
* Set r2 to the address in memory of the device tree

The device tree must be placed somewhere where it will not be overwritten, however. The linux kernel documentation suggests right about at 128MiB into RAM, which translates to 0x8000000. Also, the device tree must accurately reflect the memory of the board when compiled, as a simple bootloader will not rewrite it to match the memory qemu gives it.

Assuming that you use qemu with the `-m 256M` flag, we need to set up the device tree with this amount of RAM. In the skeleton.dtsi file from the previous step, change the line
```
memory { device_type = "memory"; reg = <0 0>; };
```
to
```
memory { device_type = "memory"; reg = <0x0 0x10000000>; };
```
to tell linux that the RAM starts at 0x0 and is of size 256MB.

Now recompile the dtb file with `dtc -O dtb integratorcp.dts -o integratorcp.dtb` as before.

The minimal bootloader itself is tedious to type out, but can be found in the bootloaderdtb/ directory. Basically, there are 3 files:

- *boot.S* is an assembly file that initializes the registers with appropriate values (using a hardcoded machine type and linker variables for the kernel and device tree locations)
- *model.lds* is a linker script that lays out the initial memory of the machine. It starts by putting the compiled boot.o code, then places the kernel at 0x8000 and the device tree blob at 0x8000000. Note that since qemu places the "kernel" argument at 0x10000, these addresses are actually 0x18000 and 0x8010000. There is a correcting factor `BOOT_OFFSET = 0x10000;` that incorporates this offset into the addresses of the kernel and device tree.
- *Makefile* is a makefile that sets up how to build the bootloader. The basic making procedure is: 1) assemble boot.S into boot.o, 2) link together boot.o, zImage, and the dtb file, 3) run objcopy to generate a .bin file

You can simply run `make` in the directory to create the `system.bin` file that contains the kernel, device tree, and minimal bootloader. Then you can run it with
```
qemu-system-arm -M integratorcp -m 256M -nographic -serial stdio -monitor telnet:127.0.0.1:1235,server,nowait -kernel system.bin
```

