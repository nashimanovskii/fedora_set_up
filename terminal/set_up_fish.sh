#!/bin/bash
sudo dnf install fish -y

PROFILE_ID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'") && gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/ custom-command 'fish' && gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/ use-custom-command true

fish -c "
    fish_config theme choose Lava;
    fish_config theme save -y;
    fish_config prompt choose nim;
    fish_config prompt save -y;
    set -U fish_greeting 'Welcome, Master!'
    clear
"

gnome-terminal & disown
sleep 1
kill -9 $PPID
