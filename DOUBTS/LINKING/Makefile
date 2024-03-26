PREFIX=riscv64-elf
AS=$(PREFIX)-as
CC=$(PREFIX)-gcc
LD=$(PREFIX)-ld
PK_PATH?=/usr/riscv64-linux-gnu/bin/
PK=$(PK_PATH)pk

hello_linker.x: hello_linker.o
	$(LD) $^ -lc -o $@
hello_linker.o: hello_linker.asm
	$(AS) $^ -o $@
hello_linker.asm: hello_linker.c
	$(CC) -S -O1 $^ -o $@

hello_linker-VAR.x: hello_linker.c
	$(CC) -O1 $^ -o hello_linker-VAR.x

.PHONY: clean var run

clean: 
	rm -f *.asm
	rm -f *.o
	rm -f *.x

var: hello_linker-VAR.x

run: var
	spike $(PK) hello_linker-VAR.x

