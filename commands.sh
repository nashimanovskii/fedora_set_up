#!/bin/bash

# Terminal
source ./terminal/set_up_terminal.sh
source ./terminal/set_up_fish.sh

# C and Python
source ./program_language/set_up_C.sh
source ./program_language/set_up_python.sh

# Common
source ./common/set_up_git.sh
source ./common/set_up_nvidia_drivers.sh
source ./common/set_up_keepassxc.sh
source ./common/set_up_codec.sh

# Database
source ./database/set_up_postgresql.sh
source ./database/set_up_dbeaver.sh

# Apps
source ./app/set_up_telegram.sh
source ./app/set_up_google_chrome.sh
source ./app/set_up_vscode.sh
source ./app/set_up_spotify.sh
source ./app/set_up_obsidian.sh

# Games
source ./game/set_up_steam.sh
source ./game/set_up_discord.sh
source ./game/set_up_minecraft.sh

# Appearance
source ./appearance/set_up_icons.sh
source ./appearance/set_up_desktop.sh
source ./appearance/set_up_dirs.sh

reboot
