#!/bin/bash

#defining colors
GREEN=`tput bold && tput setaf 2`
RED=`tput bold && tput setaf 1`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}


function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}

#testing if root
if [ $UID -ne 0 ]
then
	RED "Run this has root" && echo
	exit
fi


#setting the repositories
GREEN "Setting the repositories ... \n"
apt install aptitude
aptitude install debian-archive-keyring
aptitude install synaptic apt-xapian-index gdebi

#installing sudo and add user to sudoers
GREEN "Installing sudo and add user to sudoers ... \n"
apt install sudo
adduser brun0 sudo


#edit the '/etc/apt/sources.list
GREEN "Editing the '/etc/apt/sources.list'\n"
cp /etc/apt/sources.list /etc/apt/sources.list.backup
sed -i '/deb cdrom*/d' /etc/apt/sources.list
sh -c "echo 'deb http://deb.debian.org/debian buster main contrib non-free' >> /etc/apt/sources.list"
sh -c "echo 'deb-src http://deb.debian.org/debian buster main contrib non-free' >> /etc/apt/sources.list"
sh -c "echo 'deb http://deb.debian.org/debian-security buster/updates main contrib non-free' >> /etc/apt/sources.list"
sh -c "echo 'deb-src http://deb.debian.org/debian-security buster/updates main contrib non-free' >> /etc/apt/sources.list"
apt update && apt upgrade -y


#installing the firmware
GREEN "Installing firmware\n"
aptitude install firmware-linux intel-microcode amd64-microcode initramfs-tools firmware-amd-graphics
aptitude install inotify-tools inotify-hookable sassc
dpkg --add-architecture i386


#installing xfce4
GREEN "Installing xfce4\n"
apt install xfce4

#installing clipit
GREEN "Installing clipit\n"
apt install clipit

#installing numix theme
GREEN "Installing numix theme\n"
aptitude install numix-gtk-theme numix-icon-theme

#installing ohmyzh
#touch ~/.zshrc
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#installing i3
#apt install xorg
#apt install i3 i3status i3lock i3blocks dmenu
#apt install lightdm

