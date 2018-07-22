#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Basic utils
    "coreutils" "dnsutils" "dosfstools" "net-tools"
    # Network tools
    "ethtool" "nmap" "nss-mdns" "openbsd-netcat" "openssh" "sshfs" "traceroute" "wol"
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
    "ripgrep" "time" "tmux" "which"
    # Decompression
    "unrar" "unzip"
    # Arch Package management
    "yay"
    # Shell
    "zsh"
)
