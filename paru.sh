 #!/bin/bash
 cd $HOME/arch-install
 sudo pacman -U ./paru-1.9.0-1-x86_64.pkg.tar.zst
 sleep 2 ;paru -S --noconfirm --needed anbox-git anbox-image-houdini polybar picom-ibhagwan-git brave-bin teams telegram-desktop-bin 
