# Xfce4 How To


```
> Git clone this repo and execute the ignition_key.sh script or just do it manually
TODO ignition_key.sh TO xfce4
```

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



## Install basic utilities

```
apt install terminator
apt install git
apt install thunderbird
apt install wireguard
apt install flameshot
wget https://zoom.us/client/latest/zoom_amd64.deb
apt install ./zoom_amd64.deb
```

### Manually download basic utilities

* Telegram
* Xournalpp
* TeamSpeak
* Visual Studio Code
* Discord
* Slack
* Oracle Virtual Box
