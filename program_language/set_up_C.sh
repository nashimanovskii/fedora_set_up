#!/bin/bash
sudo dnf install gcc gcc-c++ make -y
sudo dnf install -y zlib-devel bzip2 bzip2-devel xz xz-devel \
    libffi-devel readline-devel sqlite sqlite-devel \
    openssl-devel tk-devel gdbm-devel ncurses-devel

