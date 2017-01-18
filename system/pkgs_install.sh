#!/bin/bash

function installYaourt {
    pwd="`pwd`"
    # install yaourt
    mkdir /tmp/yaourt
    cd /tmp/yaourt
    curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
    tar -xvzf package-query.tar.gz
    cd package-query
    sudo makepkg -si

    cd ..
    curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
    tar -xvzf yaourt.tar.gz
    cd yaourt
    sudo makepkg -si

    cd "$pwd"
}

sudo pacman -Syu
sudo pacman -S --noconfirm --needed base-devel diffutils wget

which yaourt >/dev/null || installYaourt

# install go-to packages
yaourt -S --needed coreutils hdparm htop joe tmux traceroute unrar unzip which zsh

# install desktop packages
yaourt -S --needed \
    chromium-widevine dolphin gwenview kate kcalc kdevelop konversation \
    kwrite plasma-meta trash-cli vlc

# install development packages
yaourt -S --needed atom git go go-tools httpie pngcrush

# install elvish
go get github.com/elves/elvish
