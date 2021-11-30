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



# install wifi firmware
GREEN "Installing wifi firmware ... \n"
aptitude install firmware-realtek firmware-iwlwifi

# install lightdm
GREEN "Installing lightdm ... \n"
aptitude install lightdm

# edit .bashrc
GREEN "Editing .bashrc ... \n"


# install font (incosolata)
GREEN "Installing font (incosolata) ... \n"
aptitude install ttf-inconsolata
fc-cache -fv

# install and configure numix theme 
GREEN "Installing and configuring numix theme ... \n"


# install autorandr
GREEN "Installing autorandr ... \n"
apt install python3-pip
pip3 install autorandr

# create the dual monitor script
GREEN "Creating dual monitor script ... \n"


# install and configure newsboat
GREEN "Installing and configuring newsboat ... \n"


# install and configure terminator
GREEN "Installing and configuring terminator ... \n"


# install thunderbird
GREEN "Installing thunderbird ... \n"


# install and configure wireguard
GREEN "Installing and configuring wireguard ... \n"


# install flameshot
GREEN "Installing flameshot ... \n"
apt install flameshot


# install zoom
GREEN "Installing zoom ... \n"


# install telegram
GREEN "Installing telegram ... \n"



# install xournalpp
GREEN "Installing xournalpp ... \n"


# install discord
GREEN "Installing discord ... \n"


# install slack
GREEN "Installing slack ... \n"


# install oracle virtual box
GREEN "Installing oracle virtual box ... \n"


# install firefox and chrome
GREEN "Installing firefox and chrome ... \n"


# install remmina
GREEN "Installing remmina ... \n"
apt install remmina

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


# install cURL
GREEN "Installing cURL ... \n"
apt install curl

# install xclip
GREEN "Installing xclip ... \n"
apt install xlcip

# TODO Hack Font
# install fonts
GREEN "Installing fonts ... \n"

# TODO
# install and configure tmux
GREEN "Installing tmux ... \n"
