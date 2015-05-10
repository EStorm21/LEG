# Build an ELF linux+filesystem image

BOOTLOADER	= boot.S
KERNEL		= zImage
DEVICETREE		= minimal

IMAGE		= system
LD_SCRIPT	= model.lds

KERNEL_OFFSET = 0x10000
MODELSIM_INIT = modelsim_init.dat

CROSS_COMPILE	= arm-linux-gnueabi-

AS		= $(CROSS_COMPILE)as
LD		= $(CROSS_COMPILE)ld
OBJCPY	= $(CROSS_COMPILE)objcopy
OBJDUMP	= $(CROSS_COMPILE)objdump
OBJDUMP_CVT	= python parsedump.py

all: $(IMAGE).bin $(IMAGE).dat

clean:
	rm -f $(DEVICETREE).dtb $(IMAGE).bin $(IMAGE).dat $(IMAGE).elf $(IMAGE)-dump.txt $(IMAGE)-bare.dat boot.o 

$(DEVICETREE).dtb: $(DEVICETREE).dts
	dtc -O dtb $(DEVICETREE).dts -o $(DEVICETREE).dtb

$(IMAGE).dat: $(IMAGE).elf $(MODELSIM_INIT)
	$(OBJDUMP) $(IMAGE).elf --full-contents --adjust-vma=$(KERNEL_OFFSET) > $(IMAGE)-dump.txt
	$(OBJDUMP_CVT) $(IMAGE)-dump.txt $(IMAGE)-bare.dat
	cat $(MODELSIM_INIT) $(IMAGE)-bare.dat > $(IMAGE).dat


$(IMAGE).bin: $(IMAGE).elf
	$(OBJCPY) -O binary $(IMAGE).elf $@

$(IMAGE).elf: boot.o $(LD_SCRIPT) $(KERNEL) $(DEVICETREE).dtb
	$(LD) -o $@ --script=$(LD_SCRIPT)

boot.o: $(BOOTLOADER)
	$(AS) -o $@ $<
