#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Basic utils
    "coreutils" "dnsutils" "dosfstools" "net-tools"
    # Package utils
    "pacutils"
    # Network tools
    "ethtool" "nmap" "nss-mdns" "openbsd-netcat" "openssh" "prettyping" "sshfs" "traceroute" "whois"
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
