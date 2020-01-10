#!/bin/bash

# Get base-dir of this shell script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function installYay {
    pwd="$(pwd)"

    sudo pacman -S --noconfirm --needed go make gcc fakeroot patch

    mkdir /tmp/yay
    cd /tmp/yay
    curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
    tar -xvzf yay.tar.gz
    cd yay
    makepkg -si

    cd "$pwd"
}

# Update system
sudo pacman -Syu

# Install yay
which yay >/dev/null || installYay

# Install packages
PACKAGES=()
source "$DIR/base.sh"
source "$DIR/network.sh"
source "$DIR/dev.sh"
source "$DIR/xorg.sh"
source "$DIR/desktop.sh"
source "$DIR/desktop_plasma.sh"

yay -S --needed ${PACKAGES[@]}
