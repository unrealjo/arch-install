 #!/bin/bash
 # Xorg
sudo pacman -S --noconfirm  xorg-server xorg-xinit xorg-xrandr xorg-xkill 
# Drivers
sudo pacman -S --noconfirm xf86-input-synaptics xf86-video-intel mesa xf86-input-libinput intel-ucode
 # Audio and video
sudo pacman -S --noconfirm  pulseaudio pavucontrol  mpv brightnessctl
 # Appearance
sudo pacman -S --noconfirm lxappearance i3-gaps feh
 # Archiver
sudo pacman -S --noconfirm pcmanfm xarchiver unrar unzip p7zip zip 
# Pdf reader
sudo pacman -S --noconfirm zathura zathura-pdf-mupdf     
# Additional
sudo pacman -S --noconfirm rofi libnotify dunst neofetch acpi htop usbutils lxsession
# Virt manager
sudo pacman -S --needed qemu virt-manager ebtables dnsmasq
# Dev
sudo pacman -S --noconfirm  jdk-openjdk nodejs npm android-tools
# Terminal
sudo pacman -S --noconfirm calcurse exa bat kitty bash-completion zsh zsh-syntax-highlighting zsh-autosuggestions
# Functionality
sudo pacman -S  --noconfirm exfat-utils  fuse gvfs gvfs-mtp
sudo pacman -S --noconfirm qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
sudo pacman -S ebtables iptables
sudo useradd -G libvirt linus 
newgrp libvirt
sudo systemctl enable --now virtqemud
sudo systemctl enable --now virtstoraged
sudo systemctl enable --now virtnetworkd
                  
