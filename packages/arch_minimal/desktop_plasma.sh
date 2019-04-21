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
    # Terminal apps
    "konsole" "yakuake"
    # System monitors
    "ksystemlog"
    # Audio / mixer
    "pavucontrol-qt" "phonon-qt5-vlc"
    # GTK integration
    "kde-gtk-config"
)
