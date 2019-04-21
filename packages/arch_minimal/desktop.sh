#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Avahi/zeroconf
    "avahi"
    # Password management
    "gopass"
    # Browsers
    "firefox"
    # OpenVPN
    "networkmanager-openvpn"
    # Video players
    "vlc"
    # Extra fonts
    "ttf-liberation"
    # Audio stuff
    "pulseaudio-alsa" "pulseaudio-zeroconf"
    # SmartCards
    "yubikey-personalization-gui"
    # Document viewers / editors
    "gwenview" "krita" "okular"
    # Editors
    "kate" "kwrite"
    # IRC client
    "konversation"
    # Screenshots
    "spectacle"
    # X11 utils
    "xclip"
)
