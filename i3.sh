#!/bin/bash
# Xorg
pacman -S --noconfirm --needed xorg-server xorg-xinit xorg-xrandr xorg-xkill  # Dispaly Server
# Building 
pacman -S --noconfirm --needed base-devel rust # For AUR
# Development
pacman -S --noconfirm --needed nodejs npm android-tools git 
# Firmware
pacman -S --noconfirm --needed linux-firmware intel-ucode 
# Newtork
pacman -S --noconfirm --needed iptables-nft dnsmasq bridge-utils openbsd-netcat # Most of the needed for libvirt 
# Audio and video
pacman -S --noconfirm --needed pulseaudio mpv mpd mpc brightnessctl pamixer
# Wm
pacman -S --noconfirm --needed i3-gaps i3lock
# Appearance 
pacman -S --noconfirm --needed feh lxappearance
# Tools
pacman -S --noconfirm --needed xclip gcolor3 flameshot alacritty kitty # Good to have 2 terminals :)
# Devices and disk Management
pacman -S --noconfirm --needed exfat-utils fuse gvfs gvfs-mtp ntfs-3g vde2 acpi usbutils 
# Archiver
pacman -S --noconfirm --needed pcmanfm xarchiver unrar unzip p7zip zip zathura zathura-pdf-mupdf  
# Additional
pacman -S --noconfirm --needed rofi dunst libnotify lxsession
# CLI
pacman -S --noconfirm --needed neofetch htop starship exa bat fish mcfly neovim
# Virtualisation
pacman -S --noconfirm --needed qemu virt-manager virt-viewer
#pacman -S  
usermod -a -G libvirt linus 

