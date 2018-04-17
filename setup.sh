#!/bin/bash
#
#   Copyright (c) 2017-2018, Christian Muehlhaeuser <muesli@gmail.com>
#
#     For license see LICENSE
#
set -e
pwd="$(pwd)"

. setup_helpers.sh

# source .profile so we got correct env-vars for setup
source "shell/profile"

# create required dirs
mkdir -p "$GOPATH"

if [[ "$OSTYPE" == "linux"* ]]; then
        # Linux
        ./setup_linux.sh
        OSID="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        echo "Running setup for macOS..."
        ./setup_osx.sh
        OSID="macos"
else
        # Unknown
        echo "Sorry, but setup for '$OSTYPE' is not supported (yet)!"
        exit 1
fi

cd "$HOME/Sources"
# Install oh-my-zsh
if [ ! -d "oh-my-zsh" ]
then
    git clone https://github.com/muesli/oh-my-zsh.git
fi
cd "$pwd"

./packages/elvish.sh

# Setup profile
linkTo "shell/$OSID/profile" "$HOME/.profile"

# Setup zsh
linkTo "shell/zshrc" "$HOME/.zshrc"

# Setup elvish
linkTo "shell/rc.elv" "$HOME/.elvish/rc.elv"

# Setup git
linkTo "git/gitconfig" "$HOME/.gitconfig"

# Setup joe
linkTo "joe/joerc" "$HOME/.joerc"

# Setup micro
linkTo "micro/settings.json" "$HOME/.config/micro/settings.json"

cd "$pwd"
