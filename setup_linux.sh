#!/bin/bash
#
#   Copyright (c) 2017-2019, Christian Muehlhaeuser <muesli@gmail.com>
#
#     For license see LICENSE
#
set -e

. setup_helpers.sh

if [ -f /etc/os-release ]; then
    . /etc/os-release

    if [ -f setup_$ID.sh ]; then
        echo "Running setup for $NAME..."
        ./setup_$ID.sh
    else
        echo "Sorry, but '$NAME' is not a supported distribution (yet)!"
    fi
else
    echo "Error detecting distribution!"
fi

# Setup Code-OSS
linkTo "configs/code-oss/settings.json" "$HOME/.config/Code - OSS/User/settings.json"
