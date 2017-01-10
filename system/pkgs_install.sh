#!/bin/bash

pacman -S base-devel diffutils wget

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

# install go-to packages
yaourt -S hdparm htop joe tmux traceroute unrar unzip which zsh

# install desktop packages
yaourt -S chromium-widevine dolphin gwenview kate kcalc kdevelop konversation \
          kwrite plasma-meta trash-cli vlc

# install development packages
yaourt -S atom git go go-tools httpie pngcrush
