#!/bin/bash
sudo sudo dnf install papirus-icon-theme -y
sudo wget -qO- https://git.io/papirus-folders-install | sh
sudo papirus-folders -C paleorange --theme Papirus-Dark
sudo gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
# papirus-folders -D --theme Papirus-Dark
