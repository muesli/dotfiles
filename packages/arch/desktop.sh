#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Avahi/zeroconf
    "avahi"
    # Password management
    "browserpass" "gopass"
    # Browsers
    "chromium" "chromium-widevine" "firefox"
    # OpenVPN
    "networkmanager-openvpn"
    # Video players
    "mpv" "vlc"
    # Extra fonts
    "noto-fonts-emoji" "ttf-liberation"
    # OBS
    "obs-studio" "frei0r-plugins"
    # Audio stuff
    "pulseaudio-alsa" "pulseaudio-zeroconf"
    # Systemd manager
    "systemdgenie"
    # Telepathy
    "telepathy-kde-meta"
    # Telegram client
    "telegram-desktop"
    # Access Desktop trash from CLI
    "trash-cli"
    # SmartCards
    "yubikey-personalization-gui"
)
