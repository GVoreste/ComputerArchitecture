PREFIX=riscv64-elf
AS=$(PREFIX)-as
CC=$(PREFIX)-gcc
LD=$(PREFIX)-ld

hello_linker.x: hello_linker.o
	$(LD) $^ -lc -o $@
hello_linker.o: hello_linker.asm
	$(AS) $^ -o $@
hello_linker.asm: hello_linker.c
	$(CC) -S -O1 $^ -o $@

.PHONY: clean

clean: 
	rm -f *.asm
	rm -f *.o
	rm -f *.x
