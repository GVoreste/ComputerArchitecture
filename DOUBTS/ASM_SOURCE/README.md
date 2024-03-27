# Asm Source
Non riesco a compilare ed eseguire codice *assembly* che non sia generato a partire dalla compilazione di codice `C`. Vorrei riuscire a compilare ed eseguire un programma direttamente in *assembly* per impratichirmi con l'*istruction set*. Inoltre vorrei poter lanciarlo con un debugger per poter osservare il valore dello stack e dei registri senza dover usare `printf` o altre funzioni in librerie esterne e che complicherebbero soltanto il sorgente.

Nella cartella sono presenti due codici che dovrebbero essere equivalenti `ifstatement.asm` e `ifstatement_alt.asm`. L'unica differenza e' che uno usa la notazione simbolica dei registri con la `x` quindi per esempio `x1`, `x3` ecc.ecc... io avevo capito che questa stesse alla notazione semantica (che assegna un significato ai registri e un utilizzo che sia compatibile con l'**`ABI`** *`risc-v`+`linux-kernel`*) con registi come `t0` o `sp` come le *pseudo istruzioni* stanno alle istruzioni, quindi che quando viene chiamato l'*assembler* questi vengono tradotti con la `x`. Dato pero' che nessuno dei due compila ho lasciato tutti e due.

Per verificare il problema compilare con `make`.

> ## Soluzione
> Il codice contiene istruzioni che non sono presenti nelle slides ma fanno parte dell'***ISA*** **`RISC-V`**. Le istruzioni presentate a lezione sono una panoramica non completa, per un elenco completo bisogna fare riferimento alla documentazione ufficiale presente sull'[github di **`RISC-V`**](https://github.com/riscv/riscv-isa-manual) oppure sul loro [sito ufficiale](https://riscv.org/wp-content/uploads/2019/12/riscv-spec-20191213.pdf) in formato *pdf*.

---

[**Torna alla home**](../../README.md)
