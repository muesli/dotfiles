#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Meta package for basic Plasma
    "plasma-meta"
    # (Compressed) Archive manager
    "ark"
    # File manager
    "dolphin"
    # Calculator
    "kcalc"
    # GUI dialogs for terminal apps
    "kdialog"
    # GPG manager
    "kleopatra"
    # Mail client / PIM
    "kmail" "kontact" "korganizer" "kaddressbook"
    # Terminal apps
    "konsole" "yakuake"
    # System monitors
    "ksystemlog"
    # Manager for encrypted password wallet
    "kwalletmanager"
    # Audio / mixer
    "pavucontrol-qt" "phonon-qt5-vlc"
    # Desktop utils
    "latte-dock"
    # GTK integration
    "kde-gtk-config"
)
