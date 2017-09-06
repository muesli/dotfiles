#!/bin/bash

# Get base-dir of this shell script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function installYay {
    pwd="$(pwd)"

    mkdir /tmp/yah
    cd /tmp/yay
    curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
    tar -xvzf yay.tar.gz
    cd yay
    makepkg -si

    cd "$pwd"
}

function installYaourt {
    pwd="$(pwd)"

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

# Update system
sudo pacman -Syu

# Install yaourt
sudo pacman -S --noconfirm --needed base-devel diffutils wget
which yaourt >/dev/null || installYaourt

# Install packages
PACKAGES=()
source "$DIR/base.sh"
source "$DIR/dev.sh"
source "$DIR/xorg.sh"
source "$DIR/desktop.sh"
source "$DIR/virtualbox.sh"

yaourt -S --needed ${PACKAGES[@]}
