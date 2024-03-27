# Procedura di installazione toolchain
Una parte della *toolchain* era presente sui repositori ufficiali
```bash
sudo pacman -Syu # Update repositories and upgrade system
sudo pacman -S riscv64-elf-binutils
sudo pacman -S riscv64-elf-newlib
sudo pacman -S riscv64-elf-gcc
sudo pacman -S riscv64-elf-gdb
sudo pacman -S risc-v # Group that contains `spike` and dependencies for `pk`
```
`pk` invece era presente solo sull'`AUR` con un `PKGBUILD` rotto. Il mantainer non sembra occuparsi piu' del pacchetto. La proceura compila il tool nella cartella `/tmp` in un `fs` pulito (si e' seguita la procedura trovata sull'[*Arch Wiki: **Building in a clean chroot***](https://wiki.archlinux.org/title/DeveloperWiki:Building_in_a_clean_chroot))

```bash
pushd # Save value of current dir on stack
cd /tmp
git clone https://aur.archlinux.org/riscv-pk-git.git
cd riscv-pk-git
```
```bash
mkdir chroot
CHROOT=/tmp/riscv-pk-git/chroot
sudo mkarchroot $CHROOT/root base-devel
sudo arch-nspawn $CHROOT/root pacman -Syu git risc-v
```
per fare in modo che il comando `makechrootpkg` (wrapper per `makepkg` in una cartella `chroot` destinazione) vada a buon fine e' necessaria applicare la [patch presente in questo repositorio](PKGBUILD.patch). I comandi danno per scontato che la cartella di origine fosse quella del repositorio, in caso contrario sostituire `$(dirs +1)` con la cartella appropriata
```bash
cp $(dirs +1)/PKGBUILD.patch ./
patch -i PKGBUILD.patch
```
```bash
sudo makechrootpkg -c -r $CHROOT # Download sources and compilation
sudo pacman -U riscv-pk-git-*-x86_64.pkg.tar.zst # Install package
cd /tmp
sudo rm -rf riscv-pk-git # Clean `/tmp` dir
popd # Return to start dir
```
>## Nota:
>Non sono sicuro di aver capito a cosa servono `spike` e `pk`, quello che ho capito e' che `spike` emula in qualche modo l'architettura **`RISC-V`** sul mio computer **`x86`**, ma non ho capito in cosa la sua emulazione differisce dall'emulazione tramite altri emulatori (su internet ho trovato che e' un [*ISA emulator*](https://github.com/riscv-software-src/riscv-isa-sim), ma non ho capito in cosa differisce per un emulatore classico, sembra sia piu' leggero, come se non emulasse tutta l'architettura, ma non ho capito bene la differenza).
> 
> All'inizio avevo capito che a differenza di un emulatore fornisse un userspace in cui si potessero emulare singoli processi al posto che dover emulare anche il processo di booting e installare un kernel che funzioni su **`RISC-V`**. Questa mia intuizione si e' rivelata un abbaglio perche' mi sembra che il comando `pk` forninsca un kernel leggero il quale si occupa di gestire il programma compilato per **`RISC-V`** che voglio lanciare con `spike`.
>
> Sono sicuro di non aver capito completamente a cosa servano questi due strumenti e come interagiscano, quindi se possibile vorrei qualche delucidazione.

---

[**Torna alla home**](README.md)
