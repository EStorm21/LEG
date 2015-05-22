# Debugging the Kernel

So you want to actually debug the kernel. Good news! This turns out to be pretty easy.

In the linux menuconfig, make sure to enable `Kernel Hacking -> Kernel debugging -> Compile the kernel with debug info`. This will compile the kernel with debugging symbols embedded. Then build the linux kernel as normal, and boot with it as normal using the zImage.

Recompile the bootloader to account for the updated kernel, then start qemu with
```
qemu-system-arm -M integratorcp -m 256M -nographic -serial stdio -monitor telnet:127.0.0.1:1235,server,nowait -kernel system.bin -S -s
```
which will start a gdb remote and prepare to debug.

Now run
```
gdb-multiarch path/to/linux-3.19.1/vmlinux -iex "set architecture arm" -iex "target remote :1234"
```
substituting the appropriate linux kernel directory. This will link it with the qemu session.

*NOTE:* You will likely see a message like this:
```
Reading symbols from /path/to/linux-3.19.1/vmlinux...(no debugging symbols found)...done.
```
*This is OK*. For some reason, gdb doesn't recognize the debugging symbols immediately when it loads the file, but they are there.

Now you can debug as normal! Some good commands to run:
- `break start_kernel` sets a breakpoint immediately when the kernel first starts.
- `break cpu_startup_entry` sets a breakpoint after the initial setup phase
- `break cpu_arm926_do_idle` sets a breakpoint on the CPU idle function, which is called whenever the system doesn't have any work to do. (If you are currently at a breakpoint, type some text into the console, and then continue, Linux will process all of the input, give the output, then break again at the idle function.)