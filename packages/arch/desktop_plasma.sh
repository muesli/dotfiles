#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Meta package for basic Plasma
    "plasma-meta"
    # (Compressed) Archive manager
    "ark"
    # File manager
    "dolphin"
    # Alternative Qt-based browser
    "falkon"
    # Calculator
    "kcalc"
    # Android integration
    "kdeconnect"
    # GUI dialogs for terminal apps
    "kdialog"
    # GPG manager
    "kleopatra"
    # Mail client / PIM
    "kmail" "kontact" "korganizer" "kaddressbook" "kdepim-addons"
    # Terminal apps
    "konsole" "yakuake"
    # System monitors
    "ksystemlog"
    # Manager for encrypted password wallet
    "kwalletmanager"
    # Audio / mixer
    "pavucontrol-qt" "phonon-qt5-vlc"
    # Philips Hue Plasma widget
    "plasma5-applets-hoppla-sa-git"
    # Desktop utils
    "latte-dock"
    # GTK integration
    "kde-gtk-config"
)
