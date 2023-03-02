#!/bin/bash
# Development
#pacman -S --noconfirm --needed nodejs npm base-devl
# Firmware
pacman -S --noconfirm --needed intel-ucode  starship
# Audio and video
pacman -S --noconfirm --needed pulseaudio vlc brightnessctl pamixer 
# Appearance 
pacman -S --noconfirm --needed feh gnome-tweaks kvantum qt5ct
# Tools
pacman -S --noconfirm --needed alacritty sway waybar network-manager-applet
# Devices and disk Management
pacman -S --noconfirm --needed exfat-utils fuse gvfs gvfs-mtp ntfs-3g vde2 acpi usbutils xdg-user-dirs
# Archiver
pacman -S --noconfirm --needed pcmanfm xarchiver unrar unzip p7zip zip  
# Additional
pacman -S --noconfirm --needed rofi dunst libnotify
# CLI
pacman -S --noconfirm --needed btop exa bat neovim
# Zsh
pacman -S --noconfirm --needed zsh
