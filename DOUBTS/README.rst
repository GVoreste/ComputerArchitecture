Dubbi
=======
.. toctree:: 
   :maxdepth: 2

   STRANGE_ASM/README
   LINKING/README
   ASM_SOURCE/README

I dubbi sono (quelli segnati vuol dire che sono stati risolti e contengono una versione corretta dei sorgenti oppure un file con la spiegazione):

* |check| :doc:`ASM_SOURCE <ASM_SOURCE/README>`: difficolta' nel compilare e eseguire con un debugger codice *assembly*
* |uncheck| :doc:`LINKING <LINKING/README>`: errore nel linking del codice oggetto assemblato da ``as``
   .. note:: 
      questo problema verra' risolto a tempo debito quando affronteremo il processo *linking* del codice a lezione.
* |check| :doc:`STRANGE_ASM <STRANGE_ASM/README>`: pseudo-instruzioni presenti dopo aver assemblato il condice con ``as``
  
.. |check| raw:: html

   <input checked=""  disabled="" type="checkbox">

.. |uncheck| raw:: html

   <input disabled="" type="checkbox">
