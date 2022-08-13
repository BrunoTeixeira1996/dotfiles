# Sublime How To

## Windows

- Download sublime from `https://www.sublimetext.com/3`

- Delete the `User` folder inside `C:\Users\bruno\AppData\Roaming\Sublime Text 3\Packages` and copy the `User` folder inside this repo in `/utils/Sublime`

- Then start sublime-text and install `Package Control` and all packages will be installed


## Linux

- Add GPG Key using `wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -`

- Add repository using `echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list`

- Update using `sudo apt update` and install using `sudo apt install sublime-text`

- Delete de `User` folder inside `~/.config/sublime-text/Packages` and copy the `User` folder inside this repo in `/utils/Sublime`

- Then start sublime-text and install `Package Control` and all packages will be installed
