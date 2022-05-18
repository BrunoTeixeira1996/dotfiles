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

# Copy the `config` and `i3status.conf` files from this repo inside `i3` folder

# Install stuff

- brave browser

```bash
sudo apt install apt-transport-https curl gnupg software-properties-common
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
```

# TODO

- emacs
- sublime
- pip
- virtualenv
- Thunderbird
- wireguard
- flameshot
- telegram
- okular
- filezilla
- keepassxc


# References

- https://www.youtube.com/watch?v=CE6UGIrHtRw&