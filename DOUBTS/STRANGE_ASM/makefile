PREFIX=riscv64-elf
AS=$(PREFIX)-as
CC=$(PREFIX)-gcc


hello_risc.o: hello_risc.asm
	$(AS) $^ -o $@
hello_risc.asm: hello_risc.c
	$(CC) -S -O1 $^ -o $@

.PHONY: clear

clear: 
	rm -f *.asm
	rm -f *.o
	rm -f *.x
