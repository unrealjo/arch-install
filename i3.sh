 #!/bin/bash
 # Xorg
sudo pacman -S --noconfirm --needed xorg-server xorg-xinit xorg-xrandr xorg-xkill 
# Drivers
sudo pacman -S --noconfirm --needed mesa xf86-input-synaptics xf86-video-intel xf86-input-libinput intel-ucode
 # Audio and video
sudo pacman -S --noconfirm --needed  pulseaudio pavucontrol  mpv
 # Appearance
sudo pacman -S --noconfirm --needed lxappearance 
 # Archiver
sudo pacman -S --noconfirm --needed pcmanfm xarchiver unrar unzip p7zip zip 
# Pdf reader
sudo pacman -S --noconfirm --needed zathura zathura-pdf-mupdf     
# Additional
sudo pacman -S --noconfirm --needed rofi libnotify dunst neofetch acpi htop usbutils
# Virt manager
sudo pacman -S --noconfirm --needed qemu virt-manager ebtables dnsmasq
# Dev
sudo pacman -S --noconfirm --needed jdk-openjdk nodejs npm
# Terminal
sudo pacman -S --noconfirm --needed kitty bash-completion zsh zsh-syntax-highlighting zsh-autosuggestions
# Functionality
sudo pacman -S  --noconfirm --needed exfat-utils  fuse gvfs gvfs-mtp
sudo useradd -aG libvirt linus 
newgrp libvirt
sudo systemctl enable --now virtqemud
sudo systemctl enable --now virtstoraged
sudo systemctl enable --now virtnetworkd
                  
