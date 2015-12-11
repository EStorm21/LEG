all: iotest.bin

clean:
	rm -f iotest.bin iotest *.o

iotest.bin: iotest
	objcopy -O binary iotest iotest.bin

iotest: iotest.ld iotest.o iotest_vects.o
	gcc -nostdlib -Xlinker --build-id=none  -T iotest.ld iotest.o iotest_vects.o -o iotest

iotest.o: iotest.c
	gcc -mcpu=arm926ej-s -g -c -o iotest.o iotest.c

iotest_vects.o: iotest_vects.S
	gcc -mcpu=arm926ej-s -g -c -o iotest_vects.o iotest_vects.S