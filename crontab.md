# Cronjobs that I have Running

## work/personal laptop

- Backups gokrazy instance to external hard-drive that is plugged in proxmox

```console
00 11 * * FRI /home/brun0/Desktop/personal/dotfiles/backup_gokrazy.sh
```

## proxmox

- Backups leaks and compresses to prevent losing data
  - `leak_backup.sh` is inside `proxmox_scripts` in this repo

```console
0 0 * * 0 /mnt/pve/external/scripts_proxmox/leak_backup.sh
0 0 * * 0 /mnt/pve/external/gokrazy_backup/gok-backup.sh
```

- Backups `waiw` module that resides in `/perm/home/waiw` (gokrazy appliance)
  - `gok-backup.sh` is in this repo

```console
0 0 * * 0 /mnt/pve/external/gokrazy_backup/gok-backup.sh
```
