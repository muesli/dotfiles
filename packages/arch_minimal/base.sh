#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Basic utils
    "coreutils" "dnsutils" "dosfstools"
    # Package utils
    "pacutils"
    # Disk drive utils
    "hdparm" "smartmontools"
    # Monitors
    "htop" "iotop" "lsof" "ncdu"
    # Editors
    "joe" "micro-bin"
    # CLI tools
    "ripgrep" "time" "tmux" "which"
    # Decompression
    "unrar" "unzip"
    # Shell
    "zsh"
)
