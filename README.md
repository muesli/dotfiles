# muesli's dotfiles

## Platform Support

On both ArchLinux and macOS run `setup.sh` to bootstrap an install:

```
./setup.sh
```

## Bootstrap an ArchLinux Install

### Install Drivers

For Intel i5/i7 based machines simply run:

```
./packages/arch/drivers/intel.sh
```

If you want to control Razer RGB devices, run:

```
./packages/arch/drivers/razer.sh
```

### First Steps

Add users to required groups: https://wiki.archlinux.org/index.php/users_and_groups#Group_list

Enable microcode updates: https://wiki.archlinux.org/index.php/microcode

Install systemd-boot pacman hook: https://wiki.archlinux.org/index.php/systemd-boot#Automatically

Enable SDDM: `systemctl enable sddm`

### Configuration

#### Setup GPG SmartCard

```
echo "enable-ssh-support" >> ~/.gnupg/gpg-agent.conf
echo "pcsc-driver /usr/lib/libpcsclite.so" > ~/.gnupg/scdaemon.conf
echo "card-timeout 5" >> ~/.gnupg/scdaemon.conf
echo "disable-ccid" >> ~/.gnupg/scdaemon.conf
systemctl enable pcscd
systemctl start pcscd
```

Fetch your public key from the SmartCard:

```
gpg --card-edit
gpg/card> fetch
```

More info in the Arch wiki: https://wiki.archlinux.org/index.php/GnuPG#SSH_agent

#### Adjust System Limits

Edit `/etc/systemd/system.conf.d/limits.conf`

```
[Manager]
DefaultLimitNOFILE=32768
DefaultTasksMax=32768
```

#### Suspend issues

Should you suffer from suspend issues (like the system resuming from sleep
immediately), this is most likely caused by the USB chipset acting up. To
prevent that, create a new systemd unit `/etc/systemd/system/disable-usb-wakeup.service`:

```
[Unit]
Description=Disable USB wakeup triggers in /proc/acpi/wakeup

[Service]
Type=oneshot
ExecStart=/bin/sh -c "echo XHC > /proc/acpi/wakeup"
ExecStop=/bin/sh -c "echo XHC > /proc/acpi/wakeup"
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```

#### System Tweaks

Enable smartd: https://wiki.archlinux.org/index.php/S.M.A.R.T.

Limit journal size: https://wiki.archlinux.org/index.php/Systemd#Journal_size_limit

Configure Avahi/mDNS: https://wiki.archlinux.org/index.php/avahi

Install TLP: https://wiki.archlinux.org/index.php/TLP

Enable zram: https://wiki.archlinux.org/index.php/Improving_performance#Zram_or_zswap

## Configuration for Unix Platforms

### GPG

#### Preferred Key

Edit `~/.gnupg/gpg.conf`

```
default-key CA1EBB7E
```

#### Caching & Timeouts

Edit `~/.gnupg/gpg-agent.conf`

```
echo "default-cache-ttl 1800" >> ~/.gnupg/gpg-agent.conf
echo "max-cache-ttl 999999" >> ~/.gnupg/gpg-agent.conf
```

### Setup poldi

Install `poldi-git`. Add your key to `/etc/poldi/localdb/keys` and add your user
to `/etc/poldi/localdb/users`.

Edit `/etc/pam.d/sudo` and prepend:

```
auth sufficient pam_poldi.so
```

### Setup multi-factor authentication

Edit `/etc/pam.d/system-auth-yubico`

```
echo "auth required pam_yubico.so id=xxxxx" > /etc/pam.d/system-auth-yubico
```

Put the public part of your OTP (the first 12 characters) in `~/.yubico/authorized_yubikeys`:

```
muesli:cc..........
```

Edit `/etc/pam.d/sudo` and prepend:

```
auth sufficient pam_yubico.so id=xxxxx
```

### sudo Timeout

Edit `/etc/sudoers`

```
echo "Defaults:muesli timestamp_timeout=30" >> /etc/sudoers
```

### libinput Gestures

Install `libinput-gestures` and edit `~/.config/libinput-gestures.conf`.

```
libinput-gestures-setup autostart
```
