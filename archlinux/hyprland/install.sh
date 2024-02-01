#!/bin/bash
cd

sudo pacman -S git

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd 

sudo rm -rf yay

yay -Syu 
yay -S hyprland

sudo pacman -S kitty wofi waybar dolphin hyprpaper qt5ct kvantum pamixer pavucontrol 

yay -S google-chrome spotify-launcher visual-studio-code-bin

