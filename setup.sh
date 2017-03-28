#!/bin/bash
#
# knoxite
#   Copyright (c) 2017, Christian Muehlhaeuser <muesli@gmail.com>
#
#     For license see LICENSE
#
set -e
pwd="`pwd`"

# create required dirs
mkdir -p "$HOME/Sources/go"

# source .profile so we got correct env-vars for setup
source "shell/profile"

# Install packages
./packages/base.sh
./packages/xorg.sh
./packages/desktop.sh
./packages/bluetooth.sh
./packages/elvish.sh

function linkTo {
    if [ -f "$2" ]
    then
        mv "$2" "$2.before.dotfiles"
    fi
    ln -s "`pwd`/$1" "$2"
}

# Setup profile
linkTo "shell/profile" "$HOME/.profile"

# Setup zsh
linkTo "shell/zshrc" "$HOME/.zshrc"

# Setup elvish
linkTo "shell/rc.elv" "$HOME/.elvish/rc.elv"

# Setup git
linkTo "git/gitconfig" "$HOME/.gitconfig"

# Setup Atom
linkTo "atom/config.cson" "$HOME/.atom/config.cson"

# Install oh-my-zsh
cd "$HOME/Sources"
if [ ! -d "oh-my-zsh" ]
then
    git clone https://github.com/muesli/oh-my-zsh.git
fi

cd "$pwd"
