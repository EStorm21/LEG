# Compiling Vanilla Linux and running it on Qemu with TTY serial in/out

This guide assumes you have a cross-compiling toolchain called `arm-linux-gnueabi-<command>`

First, get the vanilla linux kernel and `cd` into it.

Run
```
make ARCH=arm versatile_defconfig
```
to generate the default versatilepb .config file. Then use
```
make menuconfig ARCH=arm CROSS_COMPILE=arm-linux-gnueabi-
```
if you would like to configure the kernel. (It should run fine without any additional configuration, however).

To build the kernel, run
```
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- zImage
```
which will produce the file arch/arm/boot/zImage. Load this into QEMU using
```
qemu-system-arm -M versatilepb -m 128M -kernel arch/arm/boot/zImage -nographic -serial stdio -append "console=ttyAMA0"
```
which will start qemu, emulate the versatile board, and load the compiled kernel. Qemu will also emulate tty over a serial port using standard input/output, and Linux will be passed a configuration parameter that tells it to use this serial port as its console.