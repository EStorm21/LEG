# Building for Integrator with a Device Tree
Start in the linux kernel directory. Again, use
```
make ARCH=arm integrator_defconfig
```
to set up the default config, use `menuconfig` to set up the specific parameters. In particular, set the initrd source to be the busybox directory.Then make the kernel with
```
make ARCH=arm CROSS_COMPILE=<prefix> zImage 
```
(You may want to clean it first. This seemed to make a difference.)
and then copy it from `arch/arm/boot/zImage` into some directory for use later.

You now need to install `dtc`: `sudo apt-get install device-tree-compiler`. Run
```
cd arch/arm/boot/dts
cp integratorcp.dts integrator.dtsi skeleton.dtsi path/to/some/directory
cd path/to/some/directory
```
and then edit the integratorcp.dts file, changing the initial arguments to
`bootargs = "console=ttyAMA0 earlyprintk rdinit=/sbin/init";`
Then run
```
dtc -O dtb integratorcp.dts -o integratorcp.dtb
```
to compile this device tree.

At this point, we can boot the kernel with
```
qemu-system-arm -M integratorcp -m 256M -nographic -serial stdio -monitor telnet:127.0.0.1:1235,server,nowait -kernel zImage -dtb integratorcp.dtb 
```
and then in a separate window/tab, run
```
telnet 127.0.0.1 1235
```
