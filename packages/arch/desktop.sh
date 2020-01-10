#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Avahi/zeroconf
    "avahi"
    # Password management
    "gopass"
    # Browsers
    "chromium" "chromium-widevine" "firefox"
    # OpenVPN
    "networkmanager-openvpn"
    # Video players
    "mpv" "vlc"
    # Extra fonts
    "noto-fonts-emoji" "ttf-freefont" "ttf-liberation" "ttf-roboto" "ttf-ms-fonts"
    # Foreign fonts
    "ttf-arphic-uming" "ttf-indic-otf"
    # OBS
    "obs-studio" "frei0r-plugins"
    # Audio stuff
    "pulseaudio-alsa" "pulseaudio-zeroconf"
    # Systemd manager
    "systemdgenie"
    # Telepathy
    "telepathy-kde-meta"
    # Messengers
    "telegram-desktop" "signal-desktop" "wire-desktop"
    # Access Desktop trash from CLI
    "trash-cli"
    # SmartCards
    "yubikey-personalization-gui" "libu2f-host"
    # Photography
    "digikam"
    # Video editor
    "kdenlive"
    # Document viewers / editors
    "gwenview" "krita" "okular"
    # Editors
    "kate" "kwrite"
    # IRC client
    "konversation"
    # Screenshots
    "spectacle"
    # AppImage support
    "libappimage"
)
