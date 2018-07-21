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
./packages/drivers/intel.sh
```

### First Steps
Add users to required groups: https://wiki.archlinux.org/index.php/users_and_groups#Group_list

Enable microcode updates: https://wiki.archlinux.org/index.php/microcode

Install systemd-boot pacman hook: https://wiki.archlinux.org/index.php/systemd-boot#Automatically

Enable SDDM: `systemctl enable sddm`

Remove the Plasma Cashew:

```
wget http://vizzzion.org/stuff/emptytoolbox.plasmoid
plasmapkg2 -t package -i emptytoolbox.plasmoid
```

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

#### System Tweaks
Enable smartd: https://wiki.archlinux.org/index.php/S.M.A.R.T.

Limit journal size: https://wiki.archlinux.org/index.php/Systemd#Journal_size_limit

Configure Avahi/mDNS: https://wiki.archlinux.org/index.php/avahi

Install TLP: https://wiki.archlinux.org/index.php/TLP

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

### sudo Timeout

Edit `/etc/sudoers`

```
echo "Defaults:muesli timestamp_timeout=30" >> /etc/sudoers
```
