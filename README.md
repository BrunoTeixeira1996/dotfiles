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
