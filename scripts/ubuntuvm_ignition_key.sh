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


GREEN "[Editing configurations]"
GREEN "[======================]"

# set the repositories
GREEN "Installing aptitude ... \n"
sudo apt install aptitude
sudo apt update
sudo apt upgrade

# creating workspace folder
GREEN "Creating workspace folder ... \n"
mkdir /home/brun0/Desktop/workspace/
cd /home/brun0/Desktop/workspace/

# install git and git clone dotfiles repo
GREEN "Installing git and git clone dotfiles repo ... \n"
sudo apt install git
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
sudo apt install tmux
GREEN "Editing .tmux.conf ... \n"
cp dotfiles/utils/.tmux.conf ~/.tmux.conf


# install cURL
GREEN "Installing cURL ... \n"
sudo apt install curl

# install sublime
GREEN "Installing sublime ... \n"
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common 
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text
sudo apt autoremove
subl
sudo kill -9 $(pidof sublime_text)
cp -r dotfiles/utils/Sublime/User/ /home/brun0/.config/sublime-text/Packages/

# install jq
GREEN "Installing jq ... \n"
sudo apt install jq

# install xclip
GREEN "Installing xclip ... \n"
sudo apt install xclip

# install pip
GREEN "Installing pip ... \n"
sudo apt install python3-pip

# install virtualenv
pip3 install virtualenv

# install tree
GREEN "Installing tree ... \n"
sudo apt install tree

# install mariadb
GREEN "Installing mariadb ... \n"
sudo apt install mariadb-server



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

# configure terminal
GREEN "Changing terminal font size"
gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono 13'

GREEN "Changing terminal colors"
GNOME_UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_UUID/ use-theme-colors false    
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_UUID/ background-color 'rgb(24,24,24)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_UUID/ foreground-color 'rgb(255,255,255)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_UUID/ bold-is-bright true
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_UUID/ audible-bell false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_UUID/ palette "['#2E3436', '#CC0000', '#4E9A06', '#C4A000', '#3465A4', '#75507B', '#06989A', '#D3D7CF', '#555753', '#EF2929', '#8AE234', '#FCE94F', '#729FCF', '#AD7FA8', '#34E2E2', '#EEEEEC']"


# change background
GREEN "Set desktop background color ... \n"
gsettings set org.gnome.desktop.background picture-options 'none'
#gsettings set org.gnome.desktop.background picture-uri ""
gsettings set org.gnome.desktop.background primary-color '#181818'

YELLOW "Dont forget to mysql_secure_installation for mariadb and create the user with privileges ... \n"
YELLOW "Dont forget to setup ssh keys ... \n"
