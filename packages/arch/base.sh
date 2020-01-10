#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Basic utils
    "coreutils" "dnsutils" "dosfstools"
    # Package utils
    "pacutils"
    # System hooks
    "kernel-modules-hook"
    # Disk drive utils
    "hdparm" "smartmontools"
    # Monitors
    "htop" "iotop" "lsof" "ncdu"
    # Editors
    "joe" "micro-bin"
    # Key management
    "keybase"
    # Security
    "yubico-pam" "pam_beacon-git"
    # CLI tools
    "ripgrep" "time" "tmux" "which" "imagemagick" "cht.sh"
    # Decompression
    "unrar" "unzip"
    # Shell
    "zsh"
    # Docker
    "docker" "docker-compose"
)
