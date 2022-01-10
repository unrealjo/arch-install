 #!/bin/bash
 # Xorg
pacman -S --noconfirm --needed linux-firmware base-devel rust xorg-server xorg-xinit xorg-xrandr xorg-xkill intel-ucode 
 # Audio and video
pacman -S --noconfirm --needed  pulseaudio mpv mpd mpc brightnessctl lxappearance i3-gaps feh pamixer
# Tools 
pacman -S --noconfirm --needed xclip gcolor3  flameshot 
 # Archiver
pacman -S --noconfirm --needed pcmanfm xarchiver unrar unzip p7zip zip zathura zathura-pdf-mupdf ntfs-3g exfat-utils   
# Additional
pacman -S --noconfirm --needed rofi dunst libnotify neofetch acpi htop usbutils lxsession nodejs npm android-tools
# Terminal
pacman -S --noconfirm --needed starship exa bat alacritty fish mcfly
# Functionality
pacman -S  --noconfirm --needed exfat-utils  fuse gvfs gvfs-mtp
pacman -S --noconfirm --needed qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
#pacman -S  iptables-nft
usermod -a -G libvirt linus 
systemctl enable --now virtqemud
systemctl enable --now virtstoraged
systemctl enable --now virtnetworkd
echo "Chaning login shell"
usermod --shell /bin/fish linus
                  
