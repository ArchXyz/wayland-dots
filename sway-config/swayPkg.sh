#!/usr/bin/bash
sudo pacman -S --needed --noconfirm wayland xorg-xwayland \
	bluez bluez-utils blueman \
	network-manager-applet \
	pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber alsa-utils \
	light \
	sway swaybg swaylock swayidle waybar \
	firefox qutebrowser \
	nemo sxiv mpv \
	foot \
	wofi \
	grim \
	mako \
	neovim \
	ttf-dejavu ttf-font-awesome \
	arc-gtk-theme papirus-icon-theme lxappearance-gtk3 \
	unrar unzip zip \
	fzf fd exa bat wl-clipboard trash-cli man-db imagemagick \
	udiskie dosfstools ntfs-3g \
	gvfs gvfs-mtp gvfs-smb gvfs-afc gvfs-nfs gvfs-gphoto2 \
	xf86-video-intel xdg-user-dirs pacman-contrib neofetch
