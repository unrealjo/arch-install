#!/bin/bash

# set system time
ln -sf /usr/share/zoneinfo/Africa/Casablanca /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen

# set keyboard layout
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=fr" >> /etc/vconsole.conf
echo "Arch" >> /etc/hostname

# set local host address
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 Arch.localdomain Arch" >> /etc/hosts
echo "STEP ON DONE !"
echo "installing essential packages"
pacman -S --noconfirm   grub neovim iwd iw dhcpcd git rust pcmanfm  mesa xf86-video-intel xf86-input-libinput xorg-server xorg-xwayland sway i3-gaps waybar rofi kitty pcmanfm lxappearance lxsession fuse gvfs-mtp ; pacman -S --noconfirm  qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat ebtables iptables  && echo "Done !"
echo "Enabling iw and dhcpcd libvirtd" && systemctl enable iwd dhcpcd libvirtd
echo "Adding linus user " && useradd -m -G wheel,storage linus 
usermod -a -G libvirt linus
newgrp libvirt

echo "install paru"
pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
Echo "Paru done"
paru -S --noconfirm   polybar waydroid brave-bin teams telegram-desktop-bin anbox-git anbox-image
