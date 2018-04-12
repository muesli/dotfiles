#!/bin/bash
#
#   Copyright (c) 2017, Christian Muehlhaeuser <muesli@gmail.com>
#
#     For license see LICENSE
#
set -e

# Install packages
./packages/arch/packages.sh

# Install drivers
#./packages/arch/drivers/intel.sh
./packages/arch/drivers/bluetooth.sh
./packages/arch/drivers/smartcard.sh
