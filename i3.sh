 #!/bin/bash
 # Xorg
sudo pacman -S --noconfirm --needed base-devel rust xorg-server xorg-xinit xorg-xrandr xorg-xkill intel-ucode
 # Audio and video
sudo pacman -S --noconfirm --needed  pulseaudio pavucontrol  mpv mpd ncmpcpp mpc brightnessctl lxappearance i3-gaps feh pamixer
 # Archiver
sudo pacman -S --noconfirm --needed pcmanfm xarchiver unrar unzip p7zip zip zathura zathura-pdf-mupdf ntfs-3g exfat-utils   
# Additional
sudo pacman -S --noconfirm --needed rofi libnotify dunst neofetch acpi htop usbutils lxsession jdk-openjdk nodejs npm android-tools
# Terminal
sudo pacman -S --noconfirm --needed starship exa bat kitty bash-completion zsh zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting
# Functionality
sudo pacman -S  --noconfirm --needed exfat-utils  fuse gvfs gvfs-mtp
sudo pacman -S --noconfirm --needed qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
sudo pacman -S ebtables iptables
sudo useradd -G libvirt linus 
newgrp libvirt
sudo systemctl enable --now virtqemud
sudo systemctl enable --now virtstoraged
sudo systemctl enable --now virtnetworkd
echo "exec i3" > .xinitrc
                  
