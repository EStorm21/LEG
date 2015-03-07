gcc -c -g $1.s -o $1.o

ld -Ttext=0x0 -o $1.elf $1.o

objcopy -O binary $1.elf $1.bin

#dd if=/dev/zero of=$1.flash bs=4096 count=4096

#Qemu Compatible
#dd if=$1.bin of=$1.flash bs=4096 conv=notrunc

#Human Readable
objdump -d $1.o > $1.dump

#ModelSim Compatible
objdump -d $1.o | grep '^[ ]'  | awk '{print $2}' > $1.dat

rm $1.o
rm $1.elf
