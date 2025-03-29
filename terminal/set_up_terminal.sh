#!/bin/sh
sudo dnf install gnome-terminal -y
sudo dnf install gnome-screenshot xclip -y

dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "@as []"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'gnome-terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Primary>t'"


dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/name "'Screenshot Area'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/command "'/bin/bash -c \"gnome-screenshot -a -f /tmp/screenshot.png && xclip -selection clipboard -t image/png < /tmp/screenshot.png\"'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/binding "'<Shift><Super>s'"

