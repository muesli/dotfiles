#!/bin/bash

function installYaourt {
    pwd="`pwd`"
    # install yaourt
    mkdir /tmp/yaourt
    cd /tmp/yaourt
    curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
    tar -xvzf package-query.tar.gz
    cd package-query
    makepkg -si

    cd ..
    curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
    tar -xvzf yaourt.tar.gz
    cd yaourt
    makepkg -si

    cd "$pwd"
}

sudo pacman -Syu
sudo pacman -S --noconfirm --needed base-devel diffutils wget

which yaourt >/dev/null || installYaourt

# install go-to packages
yaourt -S --needed \
    coreutils hdparm htop iotop joe ncdu openssh tmux traceroute unrar unzip \
    which zsh
