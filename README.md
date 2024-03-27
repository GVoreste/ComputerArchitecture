# Computer Architecture
Esercizi e dubbi sul corso di Computer Architecture 2023-2024
## Installazione strumenti per la parte software (**`RISC-V`**)
Nel [nella pagina collegata](TOOLS.md) viene descritta in modo riproducibile la procedura che ho seguito per installare gli strumenti necessari alla parte del corso sull'architettura **`RISC-V`**. La procedura vale per le distribuzioni derivate `Arch` ed e' stata esplicitamente testata su kernel `6.8.1-arch1-1`
## Dubbi
Nel provare a riprodurre gli esempi sulle slides sono incappato in diversi dubbi. Il repositorio e strutturato in modo che ogni dubbio corrisponda ad una sottocartella della cartella `DOUBTS`.
Ogni sottocartella contiene una spiegazione del dubbio, dei codici sorgente e un `Makefile` per riprodurre i miei step di compilazione.
> ## Tips:
> Si possono compilare tutti i sorgenti che sono riuscito a compilare tramite il `Makefile` presente nella cartella di base lanciando il comando `make`, allo stesso modo si possono cancellare tutti i frutti della compilazione con il comando `make clean` dato nella cartella di base. 

I dubbi sono (quelli segnati vuol dire che sono stati risolti e contengono una versione corretta dei sorgenti oppure un file con la spiegazione):
- [x] [ASM_SOURCE](DOUBTS/ASM_SOURCE/README.md): difficolta' nel compilare e eseguire con un debugger codice *assembly*
- [ ] [LINKING](DOUBTS/LINKING/README.md): errore nel linking del codice oggetto assemblato da `as`
    > questo problema verra' risolto a tempo debito quando affronteremo il processo *linking* del codice a lezione.
- [x] [STRANGE_ASM](DOUBTS/STRANGE_ASM/README.md): pseudo-instruzioni presenti dopo aver assemblato il condice con `as`
## Esercizi
Appena avro' risolto i dubbi verra' aggiunta una cartella con gli esempi fatti sulle slides riprodotti come codice funzionante e testato, in modo da impratichirmi un pochettino e anche da referenza futura.
