sudo pacman -Syu
sudo pacman -S riscv64-elf-binutils
sudo pacman -S riscv64-elf-newlib
sudo pacman -S riscv64-elf-gcc
sudo pacman -S riscv64-elf-gdb
sudo pacman -S risc-v

pushd
cd /tmp
git clone https://aur.archlinux.org/riscv-pk-git.git
cd riscv-pk-git
mkdir chroot
CHROOT=/tmp/riscv-pk-git/chroot
sudo mkarchroot $CHROOT/root base-devel
sudo arch-nspawn $CHROOT/root pacman -Syu git risc-v
cp $(dirs +1)/PKGBUILD.patch ./
patch -i PKGBUILD.patch
sudo makechrootpkg -c -r $CHROOT
sudo pacman -U riscv-pk-git-*-x86_64.pkg.tar.zst
cd /tmp
sudo rm -rf riscv-pk-git
popd
