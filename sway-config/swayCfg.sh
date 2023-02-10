#!/usr/bin/sh
echo " ##################################################################"
echo " ############### Clone My dots From Github ########################"
echo " ##################################################################"
rm -rf ~/.config 2> /dev/null
mkdir -p ~/{.config,.local}
cd ~/.local/ && git clone https://github.com/archxyz/dots

echo "##############################"
echo "### Link My Dots Config ######"
echo "##############################"
# For My Fonts
mkdir -p ~/.local/share/
ln -sf ~/.local/dots/.local/share/fonts ~/.local/share/fonts
# My Pics
ln -sf ~/.local/dots/pix ~/pix
# My Config
ln -sf ~/.local/dots/.gitconfig ~/.gitconfig
ln -sf ~/.local/dots/.bashrc ~/.bashrc
ln -sf ~/.local/dots/.config/sxiv ~/.config/sxiv
ln -sf ~/.local/dots/.config/qutebrowser ~/.config/qutebrowser
ln -sf ~/.local/dots/.config/nvim ~/.config/nvim
ln -sf ~/.local/dots/.config/fish ~/.config/fish
ln -sf ~/.local/dots/.config/neofetch ~/.config/neofetch
ln -sf ~/.local/dots/.config/user-dirs.dirs ~/.config/user-dirs.dirs

echo " ########################### "
echo " ### Directory In Home ##### "
echo " ########################### "
mkdir -p ~/{desk,dl,dox,music,prjcts,vids,pub}
rm -rf ~/Desktop/ Documents/ Downloads/ Music/ Pictures/ Public/ Templates/ Videos/ 2> /dev/null

echo " ############################### "
echo " ##### Permision Files ######### "
echo " ############################### "
