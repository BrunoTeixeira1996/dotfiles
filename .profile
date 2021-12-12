# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=$PATH:/usr/local/go/bin


# alias to show the weather
wtr () {
 curl http://wttr.in/"$1",Portugal
}


# alias to git add, git commit and git push
acp (){
    git add -A && git commit -m "$1" && git push
}

# alias to use cht.sh for python help
chtp(){
    curl cht.sh/python/"$1"
}

# alias to use cht.sh for c help
chtc(){
    curl cht.sh/c/"$1"
}

# alias to use cht.sh for c# help
chtc#(){
    curl cht.sh/csharp/"$1"
}

# alias to use cht.sh in general
cht(){
    curl cht.sh/"$1"
}

# alias to backup Desktop folder to external hdd
alias backup='sudo /home/brun0/Desktop/brun0_Stuff/personal_backup.sh'
# alias to show open ports
alias ports='netstat -tulnap'
# update everything
alias update='sudo apt update && sudo apt upgrade'
# adjust with second monitor
alias monitor='autorandr --load brun0-left-external-monitor'
# alias to make xclip easier by copying to the clipboard
alias xclip='xclip -selection clipboard'
alias thm-to-markdown='~/go/bin/thm-to-markdown'
alias snitch='~/go/bin/snitch'
alias doit='~/go/bin/doit'
