#!/bin/bash

# set system time
ln -sf /usr/share/zoneinfo/Africa/Casablanca /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen

# set keyboard layout
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=fr" >> /etc/vconsole.conf
echo "arch" >> /etc/hostname

# set local host address
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 Arch.localdomain Arch" >> /etc/hosts
echo "STEP ON DONE !"
#Add parallel downloading
sed -i 's/^#ParallelDownloads/ParallelDownloads/' /etc/pacman.conf
pacman -S --noconfirm pacman-contrib curl
pacman -S --noconfirm reflector rsync 
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
reflector -c "US" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

echo "installing essential packages"
pacman -S --noconfirm grub iw iwd networkmanager sudo
echo "set iwd as backend for networkmanager"
echo -e "[device]\nwifi.backend=iwd" >> /etc/NetworkManager/NetworkManager.conf
sleep 1;
systemctl enable iwd NetworkManager
echo "Adding linus user " && useradd -m -G wheel,storage,video linus 
echo "Installing grub"
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
echo "Last step done"
echo "Change root password"; passwd
echo "Change linus password"; passwd linus
sleep 1;
echo "Making wheel able to use sudo as root"
sed -i '82s/.//' /etc/sudoers
echo "Enabling "fr" keyboard layout for lightdm"
cat ./keyboard.conf > /etc/X11/xorg.conf.d/00-keyboard.conf
echo "Enable qt5ct vars"
echo "export QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment


