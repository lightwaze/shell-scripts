pacman -S virtualbox git neofetch uwufetch htop btop steam wine winetricks meson sassc firefox jre-openjdk nodejs npm pnpm vim 
git clone https://github.com/shimmerproject/Greybird
cd Greybird
meson --prefix=/usr builddir
cd builddir
ninja
ninja install
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -i
neofetch
vim /etc/pacman.conf
