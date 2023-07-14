# Cronjobs that I have Running

## work/personal laptop

- Backups gokrazy instance to external hard-drive that is plugged in proxmox
  - `gokr_backup_config.sh` inside this repo in `gokrazy_scripts`

```console
00 11 * * FRI /home/brun0/Desktop/personal/dotfiles/gokrazy_scripts/gokr_backup_config.sh
```

## proxmox

- Backups leaks and compresses to prevent losing data
  - `leak_backup.sh` is inside `proxmox_scripts` in this repo

```console
0 0 * * 0 /mnt/pve/external/scripts_proxmox/leak_backup.sh
```

- Backups modules that resides in `/perm/home` (for now backups `waiw` module only)
  - `gok_backup_perm.sh` is inside this repo in `gokrazy_scripts`

```console
0 0 * * 0 /mnt/pve/external/gokrazy_backup/gok_backup_perm.sh
```
