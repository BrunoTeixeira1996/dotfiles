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

# If Intel Sound

- Navigate to `https://packages.debian.org/bullseye/all/firmware-sof-signed/download` and download `http://ftp.us.debian.org/debian/pool/non-free/f/firmware-sof/firmware-sof-signed_1.7-1_all.deb` 
- Then install the deb package using `sudo dpkg -i firm*.deb` , reboot and sound works

## Configure tmux

* Just copy and paste `.tmux.conf` file from this repo to the host machine


## Install basic utilities

- aptitude (`using`)
- lightdm (`using`)
- cURL (`using`)
- Git (`using`)
- Tmux (`using`)
- Thunderbird (`using`)
- Wireguard (and configure VPN) (`using`)
- FlameShot (`using`)
- Zoom (`using`)
- Telegram (`using`)
- SublimeText (`using`)
- Xournalpp (`using`)
- Discord (`using`)
- Slack (`using`)
- Firefox (`using`)
- Okular (`using`)
- eog (`using`)
- Chrome (`using`)
- xclip (`using`)
- tree (`using`)
- keepassx (`using`)
