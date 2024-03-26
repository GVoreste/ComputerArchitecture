PREFIX=riscv64-elf
AS=$(PREFIX)-as

SOURCES=$(wildcard *.asm)
TARGETS=$(patsubst %.asm, %.o, $(SOURCES))

all: $(TARGETS)


$(TARGETS): %.o : %.asm
	$(AS) $^ -o $@

.PHONY: clean

clean: 
	rm -f *.o
	rm -f *.x
