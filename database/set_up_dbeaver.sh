#!/bin/bash
wget https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm
sudo dnf install ./dbeaver-ce-latest-stable.x86_64.rpm -y
sudo rm -f dbeaver-ce-latest-stable.x86_64.rpm
