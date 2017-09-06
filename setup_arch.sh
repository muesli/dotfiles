#!/bin/bash
#
#   Copyright (c) 2017, Christian Muehlhaeuser <muesli@gmail.com>
#
#     For license see LICENSE
#
. setup_helpers.sh

set -e

# Install packages
./packages/packages.sh
./packages/elvish.sh

# Install drivers
#./packages/drivers/intel.sh
./packages/drivers/bluetooth.sh

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
