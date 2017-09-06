#!/bin/bash
#
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
./packages/packages.sh
./packages/elvish.sh

# Install drivers
#./packages/drivers/intel.sh
./packages/drivers/bluetooth.sh

function linkTo {
    if [ -f "$2" ]
    then
        mv "$2" "$2.before.dotfiles"
    fi
    ln -s "`pwd`/$1" "$2"
}

# Setup profile
linkTo "shell/profile" "$HOME/.profile"

# Setup git
linkTo "git/gitconfig" "$HOME/.gitconfig"

# Setup zsh
linkTo "shell/zshrc" "$HOME/.zshrc"

# Setup joe
linkTo "joe/joerc" "$HOME/.joerc"

# Setup elvish
mkdir -p "$HOME/.elvish"
linkTo "shell/rc.elv" "$HOME/.elvish/rc.elv"
linkTo "shell/elvish/lib" "$HOME/.elvish/lib"

# Setup Atom
mkdir -p "$HOME/.atom"
linkTo "atom/config.cson" "$HOME/.atom/config.cson"

# Setup Code-OSS
mkdir -p "$HOME/.config/Code - OSS/User"
linkTo "code-oss/settings.json" "$HOME/.config/Code - OSS/User/settings.json"

# Install oh-my-zsh
cd "$HOME/Sources"
if [ ! -d "oh-my-zsh" ]
then
    git clone https://github.com/muesli/oh-my-zsh.git
fi

cd "$pwd"
