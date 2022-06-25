# Work Setup with Ubuntu

## Setup

### Install sudo and add user to sudoers

```console
su
apt install sudo
adduser brun0 sudo
reboot
```

### Instal 

```
sudo apt install i3 xorg nitrogen tree eog git curl jq xclip lxappearance  git pulseaudio alsa-utils pavucontrol tmux
reboot
```

- Go to `/dotfiles/Debian/` and copy `i3` folder

## Core

- i3
- dbeaver
- cURL
- git
- sublime
- jq
- tmux
- xclip
- eog
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
