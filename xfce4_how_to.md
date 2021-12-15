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

```bash
aptitude install firmware-realtek firmware-iwlwifi
```

## Install lightdm (optional)

```bash
sudo aptitude install lightdm
```

## Install xfce4.16 (not used anymore)

* Since we are using debian 10 stable (buster) then we need to install xfce4.16 from backports

```bash
aptitude install -t testing xfce4
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
cd doftfiles/emacs/.emacs.d/
cp -r * ~/.emacs.d
```

## Install cURL

```bash
apt install curl
```

## Install tmux

```bash
apt install tmux
```

## Configure xfce4-terminal

* Navigate to `~/.config/xfce4/terminal/terminalrc` and paste configs from `xfce4-terminal-configs` file from this repo

## Configure bashrc, profile and tmux

* Just copy and paste `.bashrc`, `.profile` and `.tmux.conf` file from this repo to the host machine

## Install ZSH and OhMyZsh

```bash
sudo apt install zsh
chsh -s $(which zsh)
```
- logout and login again
- open terminal and choose 0

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
```
- edit `~/.zshrc` with the `.zshrc` file in this repo

- restart zsh with `source ~/.zshrc`

## Install autorandr

```bash
apt install python3-pip
apt install xclip
pip3 install autorandr
```

* Run the dual monitor script (external monitor on left)

```bash
#!/bin/sh
xrandr --output HDMI-2 --mode 1600x900 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output eDP-1 --primary --mode 1920x1080 --pos 1600x0 --rotate normal --output DP-2 --off
```

* Save the configuration with autorandr

```bash
autorandr --save brun0-left-external-monitor
```

* Then to apply in the future, just run 

```bash
monitor
```

## Install and configure newsboat RSS Feed

```bash
apt install newsboat
```
* And then delete `.newsboat` folder and use the folder from this repo

## Install basic utilities

* Git (`using`)
* Terminator (not used anymore)
* Tmux (`using`)
* Thunderbird (`using`)
* Wireguard (and configure VPN) (`using`)
* FlameShot (`using`)
* Zoom (`using`)
* Telegram (`using`)
* SublimeText (`using`)
* Xournalpp (`using`)
* Discord (`using`)
* Slack (`using`)
* Oracle Virtual Box (`using`)
* Firefox (`using`)
* Remmina (and configure VMs) (`using`)
* Okular (`using`)
* eog (`using`)
* Chrome (`using`)
* uLancher (`using`)
* xclip (`using`)



-------------------------------------

## Configure terminator (i dont use terminator anymore)

* Just copy and paste this settings to the original `config` file stored in `~/.config/terminator`

```bash
[global_config]
  window_state = maximise
  title_transmit_bg_color = "#20242c"
  title_use_system_font = False
  title_font = Inconsolata Bold 9
[keybindings]
  go_up = <Shift>Up
  go_down = <Shift>Down
  go_left = <Shift>Left
  go_right = <Shift>Right
  split_horiz = <Super>Down
  split_vert = <Super>Right
[profiles]
  [[default]]
    cursor_color = "#aaaaaa"
    font = Inconsolata Bold 10
    use_system_font = False
[layouts]
  [[default]]
    [[[window0]]]
      type = Window
      parent = ""
    [[[child1]]]
      type = Terminal
      parent = window0
[plugins]
```
