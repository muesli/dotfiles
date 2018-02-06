# dotfiles
My dotfiles

# Bootstrap your Arch Install

```
$ ./setup.sh
```

# Install Drivers
For Intel i5/i7 based machines, you can simply run:

```
$ ./packages/drivers/intel.sh
```

# After Install
Add users to required groups: https://wiki.archlinux.org/index.php/users_and_groups#Group_list

Enable microcode updates: https://wiki.archlinux.org/index.php/microcode

Install systemd-boot pacman hook: https://wiki.archlinux.org/index.php/systemd-boot#Automatically

Enable SDDM: `systemctl enable sddm`

Setup GPG & SSH keys

# System Tweaks
Enable smartd: https://wiki.archlinux.org/index.php/S.M.A.R.T.

Limit journal size: https://wiki.archlinux.org/index.php/Systemd#Journal_size_limit

Configure Avahi/mDNS: https://wiki.archlinux.org/index.php/avahi

Install TLP: https://wiki.archlinux.org/index.php/TLP

GPG caching timeout: Edit `~/.gnupg/gpg-agent.conf`

sudo timeout: Edit `/etc/sudoers`, add: `Defaults:muesli timestamp_timeout=30`
