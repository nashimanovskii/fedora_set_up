#!/bin/bash
sudo wget https://www.python.org/ftp/python/3.11.4/Python-3.11.4.tgz
tar -xvzf Python-3.11.4.tgz
cd Python-3.11.4
./configure --enable-optimizations
sudo make -j$(nproc)
sudo make altinstall

sudo ln -sf /usr/local/bin/python3.11 /usr/bin/python3
sudo ln -sf /usr/local/bin/python3.11 /usr/bin/python

sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.11 1
sudo update-alternatives --set python3 /usr/local/bin/python3.11


cd ..
sudo rm -rf Python-3.11.4
sudo rm -rf Python-3.11.4.tgz
