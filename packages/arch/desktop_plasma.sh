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
    # Document viewers / editors
    "gwenview" "krita" "okular"
    # Editors
    "kate" "kwrite"
    # Calculator
    "kcalc"
    # Android integration
    "kdeconnect"
    # Video editor
    "kdenlive"
    # GUI dialogs for terminal apps
    "kdialog"
    # GPG manager
    "kleopatra"
    # Mail client / PIM
    "kmail" "kontact" "korganizer" "kaddressbook"
    # Terminal apps
    "konsole" "yakuake"
    # IRC client
    "konversation"
    # System monitors
    "ksysguard" "ksystemlog"
    # Manager for encrypted password wallet
    "kwalletmanager"
    # Audio / mixer
    "pavucontrol-qt" "phonon-qt5-vlc"
    # Philips Hue Plasma widget
    "plasma5-applets-hoppla-sa-git"
    # Chakra theme
    "plasma5-themes-chakra-heritage"
)
