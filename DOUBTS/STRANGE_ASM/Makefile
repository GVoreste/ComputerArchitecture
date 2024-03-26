PREFIX=riscv64-elf
AS=$(PREFIX)-as
CC=$(PREFIX)-gcc

hello_risc.o: hello_risc.asm
	$(AS) $^ -o $@
hello_risc.asm: hello_risc.c
	$(CC) -S -O1 -fverbose-asm $^ -o $@

.PHONY: clean run

run: hello_risc.o
	$(PREFIX)-objdump -D $^

clean: 
	rm -f *.asm
	rm -f *.o
	rm -f *.x
