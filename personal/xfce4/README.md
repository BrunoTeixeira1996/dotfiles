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

- aptitude (install with apt)
- lightdm (install with apt)
- cURL (install with apt)
- Git (install with apt)
- Tmux (stow)
- Thunderbird (install with apt)
- FlameShot (install with apt)
- Telegram (install with apt)
- Xournalpp (install with apt)
- Firefox (install with apt)
- Okular (install with apt)
- eog (install with apt)
- xclip (install with apt)
- tree (install with apt)
- keepassxc (install with apt)
- emacs (stow)
- NewsFlash (config in `newsflash` folder)
- Iosevka (https://blog.programster.org/install-iosevka-fonts)

# Stow

- Execute this one by one or execute `stow_script.sh` inside `stow_folder`

```bash
stow --target=/home/brun0/ emacs
stow --target=/home/brun0/ tmux
stow --target=/home/brun0/ git
stow --target=/home/brun0/.config/sublime-text/Packages/ sublime
stow --target=/home/brun0/.config/xfce4/terminal/ xfce4-terminal
```


# xfce4 keybinds and look

- This gets xfce4 keyboard shortcuts

```bash
xfconf-query -c xfce4-keyboard-shortcuts -l -v | cut -d'/' -f4 | awk '{printf "%30s", $2; print "\t" $1}' | sort | uniq
```

## Keybinds I use

`xfce4-appfinder` to `Super` `RET` in `Keyboard` -> `Application Shortcuts`

```
Workspace 1 to Super 1 in Window Manager -> Keyboard
Workspace 2 to Super 2 in Window Manager -> Keyboard
Workspace 3 to Super 3 in Window Manager -> Keyboard
Workspace 4 to Super 4 in Window Manager -> Keyboard
Workspace 5 to Super 5 in Window Manager -> Keyboard

Tile window to the top to Super UP in Window Manager -> Keyboard
Tile window to the bottom to Super DOWN in Window Manager -> Keyboard
Tile window to the left to Super LEFT in Window Manager -> Keyboard
Tile window to the right to Super RIGHT in Window Manager -> Keyboard

Move window to workspace 1 to Shift Super 1 in Window Manager -> Keyboard
Move window to workspace 2 to Shift Super 2 in Window Manager -> Keyboard
Move window to workspace 3 to Shift Super 3 in Window Manager -> Keyboard
Move window to workspace 4 to Shift Super 4 in Window Manager -> Keyboard
Move window to workspace 5 to Shift Super 5 in Window Manager -> Keyboard
```
- And I change workspaces to show only numbers from `1` to `5`

## Theme

- Adwaita-dark
