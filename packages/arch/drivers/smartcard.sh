#!/bin/bash

# install USB smartcard support
yaourt -S --needed ccid opensc pcsc-tools
#systemctl enable pcscd
#systemctl start pcscd
