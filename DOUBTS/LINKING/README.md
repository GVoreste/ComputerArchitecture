# Linking
Riesco a eseguire un programma compilato a partire da un sorgente in `C` tramite gcc, quando invece provo a separare il processo di compilazione in:
1. compilazione
2. assemblaggio
3. linking

utilizzando esplicitamenti i vari strumenti preposti (`gcc` con opzione `-S`, `as` e `ld`) la parte di *linking* fallisce. Questo perche' non viene inclusa automaticamente `libc`.

Se aggiungo l'opzione `-lc` a `ld` giustamente mi collega (penso in modo statico, ma non saprei determinarlo) `newlib` come mi aspetterei. Nonostante questo il linking fallisce a causa di simboli che sembrano legati a `syscall`...

Non so cosa devo fare per poter riprodurre la compilazione come `gcc` e riuscire quindi ad eseguire il mio codice con `spike`

Per provare a compilare come sto' provando io, lanciare `make`, per invece compilare lasciando che `gcc` si occupi delle varie fasi di compilazione, lanciare `make var`. Se infine si vuole provare il programma, lanciare `make run`; quest'ultimo comando si aspetta che `pk` sia stato installato nella cartella `/usr/riscv64-linux-gnu/bin/`, in caso contrario, sovrascrivere la variabile d'ambiente `$PK_PATH`

---

[**Torna alla home**](../../README.md)
