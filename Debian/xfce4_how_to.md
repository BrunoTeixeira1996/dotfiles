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

## Install fonts (Hack)

```bash
apt install fonts-hack-ttf
fc-cache -fv
```

## Install Numix theme

```bash
sudo aptitude install numix-gtk-theme numix-icon-theme
```

* Create a file named `settings.ini` in `~/.config/gtk-3.0/` using the following contents for a dark numix theme

```bash
[Settings]
gtk-application-prefer-dark-theme=1
```

## Install Emacs

```bash
apt install emacs
Open emacs and close it to automatic create the .emacs.d folder
cd doftfiles/utils/.emacs.d/
cp -r * ~/.emacs.d
```

## Configure xfce4-terminal

* Navigate to `~/.config/xfce4/terminal/terminalrc` and paste configs from `xfce4-terminal-configs` file from this repo

## Configure bashrc, profile and tmux

* Just copy and paste `.bashrc`, `.profile` and `.tmux.conf` file from this repo to the host machine

## Install autorandr

```bash
apt install python3-pip
apt install xclip
pip3 install autorandr
```

- Run the dual monitor script (external monitor on left (1600x900))

```bash
#!/bin/sh
xrandr --output HDMI-2 --mode 1600x900 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output eDP-1 --primary --mode 1920x1080 --pos 1600x0 --rotate normal --output DP-2 --off
```

- Save the configuration with autorandr

```bash
autorandr --save brun0-left-external-monitor
```

- Then to apply in the future, just run 

```bash
monitor
```

## Install and configure newsboat RSS Feed

```bash
apt install newsboat
```
- And then delete `.newsboat` folder and use the folder from `/utils/`

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
