#!/usr/bin/bash

#defining colors
GREEN=`tput bold && tput setaf 2`
RED=`tput bold && tput setaf 1`
YELLOW=`tput bold && tput setaf 3`
NC=`tput sgr0`

function RED(){
    echo -e "\n${RED}${1}${NC}"
}


function GREEN(){
    echo -e "\n${GREEN}${1}${NC}"
}

function YELLOW(){
    echo -e "\n${YELLOW}${1}${NC}"
}

#testing if root
if [ $UID -ne 0 ]
then
	RED "Run this has root" && echo
	exit
fi

GREEN "[Editing configurations]"
GREEN "[======================]"

# set the repositories
GREEN "Installing aptitude ... \n"
apt install -y aptitude
apt update
apt upgrade

# creating workspace folder
GREEN "Creating workspace folder ... \n"
mkdir /home/brun0/Desktop/workspace/
cd /home/brun0/Desktop/workspace/

# install git and git clone dotfiles repo
GREEN "Installing git and git clone dotfiles repo ... \n"
apt install -y git
git clone https://github.com/BrunoTeixeira1996/dotfiles.git


# edit .bashrc
GREEN "Editing .bashrc ... \n"
rm ~/.bashrc
cp dotfiles/utils/.bashrc ~/.bashrc


# edit .profile
GREEN "Editing .profile ... \n"
rm ~/.profile
cp dotfiles/utils/.profile ~/.profile


GREEN "[Installing utilities]"
GREEN "[====================]"

# installing and editing tmux
GREEN "Installing tmux ... \n"
apt install -y tmux
GREEN "Editing .tmux.conf ... \n"
cp dotfiles/utils/.tmux.conf ~/.tmux.conf


# install cURL
GREEN "Installing cURL ... \n"
apt install -y curl

# install sublime
GREEN "Installing sublime ... \n"
apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
apt install -y sublime-text
apt autoremove -y
#TODO -> Configure sublime text

# install jq
GREEN "Installing jq ... \n"
apt install -y jq

# install xclip
GREEN "Installing xclip ... \n"
apt install -y xclip

# install pip
GREEN "Installing pip ... \n"
apt install -y python3-pip

# install virtualenv
pip3 install virtualenv

# install tree
GREEN "Installing tree ... \n"
apt install -y tree

# install mariadb
GREEN "Installing mariadb ... \n"
apt install -y mariadb-server
mysql_secure_installation


GREEN "[Changing desktop and environment]"
GREEN "[====================]"
# set taskbar icon size
GREEN "Set taskbar icon size ... \n"
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 20

# set taskbar icons
GREEN "Set taskbar icons ... \n"
gsettings set org.gnome.shell favorite-apps "['firefox_firefox.desktop', 'org.gnome.Nautilus.desktop','org.gnome.Terminal.desktop', 'sublime_text.desktop']"

# set ubuntu default colour black mode
GREEN "Set default colour to black"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# change terminal colors and size
# TODO

# change background
# TODO