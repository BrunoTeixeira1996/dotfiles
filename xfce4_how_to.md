# Xfce4 How To


## Install sudo

```
su -
apt install sudo
```

## Add user to sudoers

```
su -
adduser brun0 sudo
reboot
```

## Edit sources lists

```
> Copy the etc/apt files and folders to /etc/apt
```

## Install Aptitude, synaptic and update

```
apt intall aptitude
aptitude install debian-archive-keyring
aptitude install synaptic
apt upgrade
apt update
```

## Install lightdm

```
sudo apt-get install lightdm
```

## Install xfce4.16 

* Since we are using debian 10 stable (buster) then we need to install xfce4.16 from backports

```
aptitude install -t testing xfce4
```

## Install Emacs

```
apt install emacs
Open emacs and close it to automatic create the .emacs.d folder
cd doftfiles/emacs
cp -r * ~/.emacs.d
```

## Configure bashrc

* Just copy and paste .bashrc file from this repo to the host machine


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