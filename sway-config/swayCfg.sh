#!/usr/bin/bash
echo " ##################################################################"
echo " ############### Clone My dots From Github ########################"
echo " ##################################################################"
rm -rf ~/.config 2> /dev/null
mkdir -p ~/{.config,.local}
cd ~/.local/ && git clone https://github.com/archxyz/wayland-dots.git

echo "##############################"
echo "### Link My Dots Config ######"
echo "##############################"
# Pictures
ln -sf ~/.local/wayland-dots/sway-dotfiles/pix ~/
# bash
ln -sf ~/.local/wayland-dots/sway-dotfiles/bsh/.bashrc ~/
ln -sf ~/.local/wayland-dots/sway-dotfiles/bsh/.bash_profile ~/
# Config Files
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/sway ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/waybar ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/foot ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/mako ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/nvim ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/qutebrowser ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/user-dirs.dirs ~/.config/

echo " ########################### "
echo " ### Directory In Home ##### "
echo " ########################### "
mkdir -p ~/{desk,dl,dox,music,prjcts,vids,pub}
rm -rf ~/Desktop/ Documents/ Downloads/ Music/ Pictures/ Public/ Templates/ Videos/ 2> /dev/null

echo "##############################"
echo "##### Pacman Things ##########"
echo "##############################"
sudo pacman -Rsn vim
paccache -ruvk0
# sudo systemctl enable bluetooth
sudo mkdir -p /etc/pacman.d/
cd /etc/pacman.d/
sudo git clone https://github.com/archxyz/hooks.git

echo "##############################"
echo "########### DONE #############"
echo "##############################"
sleep 5
exit
