#!/bin/bash
#
#   Copyright (c) 2017-2018, Christian Muehlhaeuser <muesli@gmail.com>
#
#     For license see LICENSE
#
set -e

if [[ "$FLAVOR" == "router" ]]; then
    FLAVOR="_${FLAVOR}"
elif [[ "$FLAVOR" == "minimal" ]]; then
    FLAVOR="_${FLAVOR}"
elif [[ "$FLAVOR" != "" ]]; then
    # Unknown
    echo "Sorry, but flavor '$FLAVOR' is unknown!"
    exit 1
fi

# Install packages
./packages/arch${FLAVOR}/packages.sh

# Install drivers
#./packages/arch${FLAVOR}/drivers/bluetooth.sh
#./packages/arch${FLAVOR}/drivers/smartcard.sh
#./packages/arch${FLAVOR}/drivers/intel.sh
#./packages/arch${FLAVOR}/drivers/razer.sh
