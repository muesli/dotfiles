#!/bin/bash
#
#   Copyright (c) 2017-2019, Christian Muehlhaeuser <muesli@gmail.com>
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
        OSID="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        OSID="macos"
else
        # Unknown
        echo "Sorry, but setup for '$OSTYPE' is not supported (yet)!"
        exit 1
fi

./setup_$OSID.sh

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
linkTo "shell/rc_private.elv" "$HOME/.elvish/lib/rc_private.elv"

# Setup git
linkTo "configs/git/gitconfig" "$HOME/.gitconfig"
linkTo "configs/git/gitignore_global" "$HOME/.gitignore_global"

# Setup joe
linkTo "configs/joe/joerc" "$HOME/.joerc"

# Setup micro
linkTo "configs/micro/settings.json" "$HOME/.config/micro/settings.json"

cd "$pwd"
