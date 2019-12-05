#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Network tools
    "net-tools" "ethtool" "nmap" "nss-mdns" "openbsd-netcat" "prettyping" "traceroute" "wget" "whois"
    # SSH
    "openssh" "sshfs"
    # Firewall
    "ufw"
    # DHCP server
    "dhcp"
)
