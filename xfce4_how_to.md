# Xfce4 How To


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
> Copy the etc/apt files and folders to /etc/apt
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

## Install lightdm

```bash
sudo aptitude install lightdm
```

## Configure bashrc

* Just copy and paste .bashrc file from this repo to the host machine

## Install xfce4.16 

* Since we are using debian 10 stable (buster) then we need to install xfce4.16 from backports

```bash
aptitude install -t testing xfce4
```

## Install inconsolata

```bash
sudo aptitude install ttf-inconsolata
sudo fc-cache -fv
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
cd doftfiles/emacs
cp -r * ~/.emacs.d
```

## Install autorandr

```bash
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
sudo apt install newsboat
```

* And then copy and paste `.newsboat` folder


## Install basic utilities

* Git
* Terminator
* Thunderbird
* Wireguard (and configure VPN)
* FlameShot
* Zoom
* Telegram
* SublimeText
* Xournalpp
* TeamSpeak
* Discord
* Slack
* Oracle Virtual Box
* Firefox
* Remmina (and configure VMs)
* Obs
* Okular
* eog
* VLC
* Chrome
* uLancher
* cURL
* xclip

## Configure terminator

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