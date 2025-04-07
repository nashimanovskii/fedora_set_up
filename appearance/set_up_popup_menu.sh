#!/bin/bash
set -e
sudo dnf install -y gcc make pkgconf autoconf automake libtool gtk2-devel libxml2-devel python3-gobject-devel wget tar
cd /tmp
wget -O filemanager-actions-2.4.1.tar.gz "https://downloads.sourceforge.net/project/filemanager-actions/filemanager-actions/2.4.1/filemanager-actions-2.4.1.tar.gz"
tar xzf filemanager-actions-2.4.1.tar.gz
cd filemanager-actions-2.4.1
sh ./configure

make
sudo make install

CONFIG_DIR="$HOME/.config/filemanager-actions"
mkdir -p "$CONFIG_DIR"

cat > "$CONFIG_DIR/open_in_vscode.xml" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<actions>
  <action id="open_in_vscode">
    <label>VSCode</label>
    <description>Открыть файл или папку в Visual Studio Code</description>
    <icon>code</icon>
    <command>code %F</command>
    <conditions>
      <condition type="all" />
    </conditions>
  </action>
</actions>
EOF

nautilus -q && nautilus &
