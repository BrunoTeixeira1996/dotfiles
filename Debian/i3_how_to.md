# i3 How to

- `Install xfce enviroment on Debian installation`

# Install sudo

```bash
su -
apt install sudo
```

# Add user to sudoers

```bash
su -
adduser brun0 sudo
reboot
```

# Try apt update

- If update doesnt work its probably because in the `/etc/apt/sources.list` you have `deb cdrom...` uncommented, so just comment that line and use the `/etc/apt` that lives inside this repo

# Installing i3


```bash
sudo apt install i3 xorg nitrogen tree eog curl jq xclip lxappearance chromium git pulseaudio alsa-utils pavucontrol tmux pcmanfm
```

- Then reboot

- After reboot, choose i3 instead of xfce4 and choose `Win` for mod key

- Go to `lxappearance` (using mod+d) and choose the theme

- Add wallpaper image from `nitrogen`

# Copy the `config` and `i3blocks.conf` files from this repo inside `i3` folder

# If Intel Sound

- Navigate to `https://packages.debian.org/bullseye/all/firmware-sof-signed/download` and download `http://ftp.us.debian.org/debian/pool/non-free/f/firmware-sof/firmware-sof-signed_1.7-1_all.deb` 
- Then install the deb package using `sudo dpkg -i firm*.deb` , reboot and sound works

# Install stuff

- urxvt
  - create .Xresources file and use the .Xresources file that exist in this repo
  - Copy the .urxvt folder to ~
  - `sudo update-alternatives --config x-terminal-emulator` and choose urxvt terminal as default
- Iosevka font
- emacs (`config folder exists in this repo`)
- sublime (`config folder exists in this repo`)
- pip
- virtualenv
- Thunderbird
- wireguard
- flameshot
- telegram
- okular
- filezilla
- keepassx
- openvpn


# References

- https://www.youtube.com/watch?v=CE6UGIrHtRw&
