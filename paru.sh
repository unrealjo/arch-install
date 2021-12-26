 #!/bin/bash
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
sleep 2 ;cd;
paru -S polybar picom-ibhagwan-git brave-bin
