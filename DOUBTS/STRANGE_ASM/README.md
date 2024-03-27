# Strange Asm
Ho provato a creare un semplice programma `C`, a compilarlo e a osservare la versione disassemblata. Mi sarei aspettato che questa facesse uso solo di istruzioni presenti nelle slides, invece usa quasi esclusivamente istruzioni che non riconosco e sembrano *pseudo-istruzioni*.

Per vedere il disassemblato e' sufficente lanciare il comando `make run`

> ## Soluzione
> Il codice compila se si sostituendo i commenti con `#` al posto che `//`. Il problema era determinato dal fatto che la il codice *assembly* sulle slides e' codice didattico non fatto per compilare. Se si vuole avere una panoramica della sintassi per l'assembler `as` e le istruzioni disponibili si puo' fare riferimento alla [documentazione ufficiale per l'utente](https://riscv.org/wp-content/uploads/2019/12/riscv-spec-20191213.pdf) oppure al [github ufficiale dell'***ISA*** **`RISC-V`**](https://github.com/riscv/riscv-isa-manual) che raccoglie la documentazione online.

---

[**Torna alla home**](../../README.md)
