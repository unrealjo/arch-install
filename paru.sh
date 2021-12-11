 #!/bin/bash
 cd $HOME/arch-install
 sudo pacman -U --needed ./paru-1.9.0-1-x86_64.pkg.tar.zst
 sleep 2 ;paru -S anbox-image-houdini anbox-git polybar picom-ibhagwan-git brave-bin teams telegram-desktop-bin 
