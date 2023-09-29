# What I use

- I tend to use
    - Debian with xfce and i3 for my laptop
    - Ubuntu server for vms
    - Windows for my desktop and gaming
	- `Note that xfce and gnome are used only when people not familiar with i3wm need to do something with my laptop` 

# Instal Debian with i3wm and xfce (or gnome)

- Follow `/stow_folder/README.md` to use stow

# Backup

I use the [gbackup](https://github.com/BrunoTeixeira1996/gbackup) to backup and monitor all backups. Adding to this I have a cronjob running on my personal/work laptop that sends the `gokrazy` config folder to my external hard drive plugged in proxmox.

``` bash
00 11 * * THU /home/brun0/Desktop/personal/dotfiles/backup_scripts/gokr_backup_config.sh
```

# Keymap for keychron

Since I use keychron I need to map some keys. So use the `keychron-k8-preset.json` to map windows keys and alt keys (or just change the left side button from Mac to Windows) and then use `.bashrc` to fix the less and equal signs


# If github gets an error with SSH

Setup `~/.ssh/config` and write the following

``` bash
Host github.com
	User git
	Port 22
	Hostname github.com
	IdentityFile ~/.ssh/id_github
	TCPKeepAlive yes
	IdentitiesOnly yes
```

# Notes Sync

I use orgmode for note taking so it's important that everything is saved. For this I have a dropxbox instance with my notes and a [program](https://github.com/BrunoTeixeira1996/dotfiles/blob/main/notes_sync.sh) to sync from Dropxbox to Syncthing.
This process is important because [Syncthing is one of the backup targets](https://github.com/BrunoTeixeira1996/gbackup).
Then I created a service in systemd so I could have this running in the background even after a reboot.

``` bash
[Unit]
Description=Sync Dropbox with Syncthing

[Service]
User=brun0
ExecStart=/bin/bash /home/brun0/Desktop/personal/dotfiles/notes_sync.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

