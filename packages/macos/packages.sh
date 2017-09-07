#!/bin/bash

# Get base-dir of this shell script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install brew
which brew >/dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update system
brew update
brew upgrade

# Install packages
PACKAGES=()
source "$DIR/base.sh"
source "$DIR/dev.sh"
source "$DIR/desktop.sh"

brew install ${PACKAGES[@]}
