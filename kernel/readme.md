This directory should contain enough to rebuild the linux kernel with a minimal bootloader, device tree, and initial filesystem, so that it can be booted on the integratorcp board.

`kernel-setup-info` contains step-by-step information on how to set up the kernel image from scratch.

`configs` contains the final configuration files for linux and busybox, as well as a zipped image of the initial filesystem busybox generates. You should be able to generate the required `zImage` by using the linux configuration file and modifying the linux config to point at the (unzipped) initial file system or to a newly-generated filesystem created by using the instructions in `kernel-setup-info`.

`image` contains various files that add the bootloader and minimal device tree to the raw kernel image, and then convert it to an image for qemu and to a .dat file for ModelSim. You can generate these by placing the `zImage` into this directory and running `make`.