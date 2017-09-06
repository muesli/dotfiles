#!/bin/bash
#
#   Copyright (c) 2017, Christian Muehlhaeuser <muesli@gmail.com>
#
#     For license see LICENSE
#
set -e

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
