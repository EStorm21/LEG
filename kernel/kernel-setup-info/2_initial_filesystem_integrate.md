# Basic Filesystem

Download Busybox, untar it. Run `make defconfig` and `make menuconfig`, and set it to be static compiled. Then run 
`make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi- `
and then 
`make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi- install`.

Then copy `_install` to some other directory with
```
cp _install/* ../path/to/init/fs -r
```
In that directory, run
```
mkdir proc sys dev etc etc/init.d
touch etc/init.d/rcS
```
and put into `etc/init.d/rcS` the following:
```
#!bin/sh

mount -t proc none /proc

mount -t sysfs none /sys

/sbin/mdev -s
```
and then do 
```
chmod +x etc/init.d/rcS.

cd dev
sudo mknod tty c 5 0
sudo mknod console c 5 1
sudo mknod tty1 c 4 1
sudo mknod tty2 c 4 2
sudo mknod tty3 c 4 3
sudo mknod tty4 c 4 4
sudo mknod null c 1 3
sudo chmod 777 *
cd ..
```

Now we need to reconfigure the kernel to use this. In the kernel's `menuconfig` under General, there should be an initramfs source option. Type the (relative) path to the directory that is your initial boot filesystem directory. Then remake the kernel. It will compile the files into the kernel itself.

To run the kernel with this new filesystem in Qemu, you have to change the Qemu monitor location (otherwise it will interfere with the console.) Run
```
qemu-system-arm -M versatilepb -m 128M -kernel arch/arm/boot/zImage -serial stdio -nographic -append "console=ttyAMA0 rdinit=/sbin/init" -monitor telnet:127.0.0.1:1234,server,nowait
```
and then in a separate window/tab, run
```
telnet 127.0.0.1 1234
```
This second window will allow you to interact with qemu, leaving the stdio to interact with your now-running minimal Linux configuration!