#!/bin/bash

# install USB smartcard support
yay -S --needed ccid opensc pcsc-tools
#systemctl enable pcscd
#systemctl start pcscd
