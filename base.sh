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
pacman -S --noconfirm grub iw iwd dhcpcd
systemctl enable iwd dhcpcd
echo "Adding linus user " && useradd -m -G wheel,storage linus 
echo "Installing grub"
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
echo "Last step done"
echo "Change root password"; passwd
echo "Change linus password"; passwd linus



