#!/bin/bash

# install intel packages
yaourt -S --needed \
    xf86-video-intel mesa intel-ucode vulkan-intel i7z libva-intel-driver
#    libva-utils
