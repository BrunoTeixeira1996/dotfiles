#!/bin/bash

#setting the repositories
echo -e "Setting the repositories ... \n"
apt install aptitude
aptitude install debian-archive-keyring
aptitude install synaptic apt-xapian-index gdebi

#installing sudo and add user to sudoers
echo -e "Installing sudo and add user to sudoers ... \n"
apt install sudo
adduser brun0 sudo


#edit the '/etc/apt/sources.list
echo -e "Editing the '/etc/apt/sources.list'"
cp /etc/apt/sources.list /etc/apt/sources.list.backup
sed -i '/deb cdrom*/d' /etc/apt/sources.list
sh -c "echo 'deb http://deb.debian.org/debian buster main contrib non-free' >> /etc/apt/sources.list"
sh -c "echo 'deb-src http://deb.debian.org/debian buster main contrib non-free' >> /etc/apt/sources.list"
sh -c "echo 'deb http://deb.debian.org/debian-security buster/updates main contrib non-free' >> /etc/apt/sources.list"
sh -c "echo 'deb-src http://deb.debian.org/debian-security buster/updates main contrib non-free' >> /etc/apt/sources.list"
apt update && apt upgrade -y


#installing the firmware
aptitude install firmware-linux intel-microcode amd64-microcode initramfs-tools firmware-amd-graphics
aptitude install inotify-tools inotify-hookable sassc
dpkg --add-architecture i386

#installing xfce4
apt install xfce4

#installing clipit
apt install clipit

#installing numix theme
aptitude install numix-gtk-theme numix-icon-theme

#installing ohmyzh
#touch ~/.zshrc
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#installing i3
#apt install xorg
#apt install i3 i3status i3lock i3blocks dmenu
#apt install lightdm

