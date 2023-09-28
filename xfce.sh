sudo pacman -S git neofetch uwufetch htop btop steam wine winetricks meson sassc firefox jre-openjdk nodejs npm pnpm vim qbittorrent
git clone https://github.com/shimmerproject/Greybird
cd Greybird
meson --prefix=/usr builddir
cd builddir
ninja
ninja install
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -i
sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
sudo sytemctl start libvirtd 
sudo vim /etc/libvirt/libvirtd.conf
sudo systemctl restart libvirtd
