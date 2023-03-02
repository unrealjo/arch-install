#!/bin/bash
# Format partitions
mkfs.vfat -n BOOT -F32 /dev/sda1
mkfs.ext4 -L ROOT /dev/sda2

# Mount root directory
mount /dev/sda2 /mnt

# Create needed directories
mkdir -pv /mnt/home
mkdir -pv /mnt/hdd
mkdir -pv /mnt/boot/efi/

# Mount them
mount /dev/sda3 /mnt/home
mount /dev/sda1 /mnt/boot/efi/
mount /dev/sdb2 /mnt/hdd

pacstrap -K /mnt base linux neovim

# Generate fstab

genfstab -U /mnt >> /mnt/etc/fstab

PS1='(arch-chroot) # ' arch-chroot  /mnt/ /bin/bash

# Mount the pseudo-filesystems needed for a chroot:
#mount --rbind /sys /mnt/sys && mount --make-rslave /mnt/sys
#mount --rbind /dev /mnt/dev && mount --make-rslave /mnt/dev
#mount --rbind /proc /mnt/proc && mount --make-rslave /mnt/proc
#
## Copy the DNS configuration
#cp /etc/resolv.conf /mnt/etc/

