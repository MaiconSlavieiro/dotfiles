
sudo pacman -S git ttf-opensans ttf-roboto ttf-nerd-fonts-symbols kitty wofi waybar dolphin hyprpaper qt5ct kvantum pamixer pavucontrol 

bash ./scripts/installYay.sh

yay -S hyprland

yay -S google-chrome spotify-launcher visual-studio-code-bin

bash ./scripts/copyConfig.sh

bash ./scripts/copyThemes.sh

bash ./scripts/copyIcons.sh

xdg-mime default dolphin.desktop inode/directory


#toDO
#Instalacao de icones e fontes, mas config do qt5ct