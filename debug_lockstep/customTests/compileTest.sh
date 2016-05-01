source ../configuration.py
export outdir=./tests

$gdb_path/arm-none-eabi-gcc -c -g $1.s -o $outdir/$1.o

$gdb_path/arm-none-eabi-ld -Ttext=0x0 -o $outdir/$1.elf $outdir/$1.o

$gdb_path/arm-none-eabi-objcopy -O binary $outdir/$1.elf $outdir/$1.bin

#Human Readable
$gdb_path/arm-none-eabi-objdump -d $outdir/$1.o > $outdir/$1.dump

#ModelSim Compatible
$gdb_path/arm-none-eabi-objdump -d $outdir/$1.o | grep '^[ ]'  | awk '{print $2}' > $outdir/$1.dat

rm $outdir/$1.o
rm $outdir/$1.elf
