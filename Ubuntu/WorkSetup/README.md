# Work Setup with Ubuntu

## Setup

### Install sudo and add user to sudoers

```console
su
apt install sudo
adduser brun0 sudo
reboot
```

### Install

```
sudo apt install tree eog git curl jq xclip git tmux
reboot
```

## Core

- dbeaver
- cURL
- git
- sublime
- jq
- tmux
- xclip
- eog
- virtualbox
- pip
- virtualenv
- tree
- mariadb
- brave-browser
- rxvt
  - create `.Xresources` file and use the `.Xresources` file that exist in this repo
  - copy `.urxvt` folder to `~`
  - `sudo update-alternatives --config x-terminal-emulator` and choose urxvt terminal as default
- Iosevka font
  - https://blog.programster.org/install-iosevka-fonts
- flameshot
- okular
- filezilla
- keepassx
- openvpn

## Configure

- VPN
- Certs