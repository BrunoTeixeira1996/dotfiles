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

# set the repositories
GREEN "Setting the repositories ... \n"
apt install aptitude
aptitude install debian-archive-keyring
aptitude install synaptic apt-xapian-index gdebi
apt upgrade
apt update

# install git and git clone dotfiles repo
GREEN "Installing git and git clone dotfiles repo ... \n"
apt install git
git clone https://github.com/BrunoTeixeira1996/dotfiles.git

# install sudo and add user to sudoers
GREEN "Installing sudo and adding user to sudoers ... \n"
apt install sudo
adduser brun0 sudo

# edit apt sourcelists
GREEN "Editing apt sourcelists ... \n"
#TODO


# install wifi firmware
GREEN "Installing wifi firmware ... \n"
aptitude install firmware-realtek firmware-iwlwifi

# install lightdm
GREEN "Installing lightdm ... \n"
aptitude install lightdm

# edit .bashrc
GREEN "Editing .bashrc ... \n"
#TODO

# install font (incosolata)
GREEN "Installing font (incosolata) ... \n"
aptitude install ttf-inconsolata
fc-cache -fv

# install and configure numix theme 
GREEN "Installing and configuring numix theme ... \n"
#TODO

# install autorandr
GREEN "Installing autorandr ... \n"
apt install python3-pip
pip3 install autorandr

# create the dual monitor script
GREEN "Creating dual monitor script ... \n"
#TODO

# install and configure newsboat
GREEN "Installing and configuring newsboat ... \n"
#TODO

# install and configure terminator
GREEN "Installing and configuring terminator ... \n"
#TODO

# install thunderbird
GREEN "Installing thunderbird ... \n"
#TODO

# install and configure wireguard
GREEN "Installing and configuring wireguard ... \n"
#TODO

# install flameshot
GREEN "Installing flameshot ... \n"
apt install flameshot


# install zoom
GREEN "Installing zoom ... \n"
#TODO

# install telegram
GREEN "Installing telegram ... \n"
#TODO


# install and configure sublimetext
GREEN "Installing and configuring sublimetext ... \n"
#TODO

# install xournalpp
GREEN "Installing xournalpp ... \n"
#TODO

# install teamspeak
GREEN "Installing teamspeak ... \n"
#TODO

# install discord
GREEN "Installing discord ... \n"
#TODO

# install slack
GREEN "Installing slack ... \n"
#TODO

# install oracle virtual box
GREEN "Installing oracle virtual box ... \n"
#TODO

# install firefox and chrome
GREEN "Installing firefox and chrome ... \n"
#TODO

# install remmina
GREEN "Installing remmina ... \n"
apt install remmina

# install obs
GREEN "Installing obs ... \n"
apt install obs-studio

# install okular
GREEN "Installing okular ... \n"
apt install okular


# install eog
GREEN "Installing eog ... \n"
apt install eog

# install vlc
GREEN "Installing vlc ... \n"
apt install vlc


# install uLancher
GREEN "Installing uLancher ... \n"
#TODO

# install cURL
GREEN "Installing cURL ... \n"
apt install curl

# install xclip
GREEN "Installing xclip ... \n"
apt install xlcip