.. Computer Architecture 2023-2024 documentation master file, created by
   sphinx-quickstart on Thu Mar 28 11:48:20 2024.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Documentazione Computer Architecture 2023-2024
==============================================

.. toctree::
   :maxdepth: 3

   TOOLS
   DOUBTS/README.rst
   EXERCISES/README.rst

Installazione strumenti per la parte software (|riscv|)
--------------------------------------------------------------
Nel :doc:`nella pagina collegata <TOOLS>` viene descritta in modo riproducibile la procedura che ho seguito per installare gli strumenti necessari 
alla parte del corso sull'architettura |riscv|. La procedura vale per le distribuzioni derivate `Arch` ed e\' stata esplicitamente testata su kernel `6.8.1-arch1-1`

Dubbi
-----

Nel provare a riprodurre gli esempi sulle slides sono incappato in diversi dubbi. Il repositorio e strutturato in modo che ogni dubbio corrisponda ad una sottocartella della cartella ``DOUBTS``.
Ogni sottocartella contiene una spiegazione del dubbio, dei codici sorgente e un ``Makefile`` per riprodurre i miei step di compilazione.

.. tip::
  Si possono compilare tutti i sorgenti che sono riuscito a compilare tramite il ``Makefile`` presente nella cartella di base lanciando il comando ``make``, 
  allo stesso modo si possono cancellare tutti i frutti della compilazione con il comando ``make clean`` dato nella cartella di base. 

Esercizi
--------
Questa sezione e\' dedicata alla risoluzioni degli esercizi assegnati durante il corso e alla riproduzione degli esempi fatti in classe.

.. |riscv| replace:: replacement ``RISC-V``