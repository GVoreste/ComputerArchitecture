Procedura installazione toolchain
=================================
Una parte della *toolchain* era presente sui repositori ufficiali

.. code::bash
    sudo pacman -Syu # Update repositories and upgrade system
    sudo pacman -S riscv64-elf-binutils
    sudo pacman -S riscv64-elf-newlib
    sudo pacman -S riscv64-elf-gcc
    sudo pacman -S riscv64-elf-gdb
    sudo pacman -S risc-v # Group that contains `spike` and dependencies for `pk`

``pk`` invece era presente solo sull'``AUR`` con un ``PKGBUILD`` rotto. Il mantainer non sembra occuparsi piu\' del pacchetto. 
La proceura compila il tool nella cartella ``/tmp`` in un ``fs`` pulito (si e\' seguita la procedura trovata sull\'`*Arch Wiki: **Building in a clean chroot*** <https://wiki.archlinux.org/title/DeveloperWiki:Building_in_a_clean_chroot>`_)


