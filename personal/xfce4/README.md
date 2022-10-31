# Xfce4 How To

## If installing on Oracle

- To install VirtualBox Guest Additions in Debian just go to `/etc/fstab` and change `user,noauto` to `user,exec`

- https://forums.virtualbox.org/viewtopic.php?t=58799

## Install sudo

```bash
su -
apt install sudo
```

## Add user to sudoers

```bash
su -
adduser brun0 sudo
reboot
```

## Edit sources lists

```
Copy the /etc/apt files and folders to /etc/apt
```

## Install Aptitude, synaptic and update

```bash
apt intall aptitude
aptitude install debian-archive-keyring
aptitude install synaptic
apt upgrade
apt update
```

## Install Wifi Firmware

- If realtek

```bash
aptitude install firmware-realtek
```

- If intel

```bash
aptitude install firmware-iwlwifi
```

- Install d-link 1300 wifi adapter

```bash
#Execute these commands without your wifi adapter on
git clone https://github.com/cilynx/rtl88x2bu.git
cd rtl88x2bu
VER=$(sed -n 's/\PACKAGE_VERSION="\(.*\)"/\1/p' dkms.conf)
sudo rsync -rvhP ./ /usr/src/rtl88x2bu-${VER}
sudo dkms add -m rtl88x2bu -v ${VER}
sudo dkms build -m rtl88x2bu -v ${VER}
sudo dkms install -m rtl88x2bu -v ${VER}
sudo modprobe 88x2bu
#Restart the pc and insert the wifi adapter
```

## Install basic utilities

- aptitude
- lightdm
- cURL
- Git
- Tmux
- Thunderbird
- Wireguard (and configure VPN)
- FlameShot
- Telegram
- Xournalpp
- Discord
- Firefox
- Okular
- eog
- xclip
- tree
- keepassx
- emacs
- NewsFlash (config in `newsflash` folder)

# Stow

- TODO
