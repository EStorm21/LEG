gcc -c -g $1.s -o $1.o
gcc -o $1 $1.o
objdump -d $1.o > $1.dump
objdump -d $1.o | grep '^[ ]' | awk '{print $2}' > $1.dat
rm $1.o
