# Backups

## Proxmox

- Gokrazy `/perm` partition (`gokr_backup_perm.sh` inside this repo in `backup_scripts`)
  - save in external hard drive and in `/storagepool/backups/gokrazy_backup` (hdd in proxmox)

- Backup telegram bot leaks (`leak_backup.sh` inside this repo in `backup_scripts`)
  - save in external hard drive and in `/storagepool/backups/leaks_backup` (hdd in proxmox)

```console
0 0 * * 0 /mnt/pve/external/gokrazy_backup/gokr_backup_perm.sh
0 0 * * 0 /mnt/pve/external/scripts_proxmox/leak_backup.sh
```

## work/personal laptop

- Backups gokrazy instance to external hard-drive that is plugged in proxmox
  - `gokr_backup_config.sh` inside this repo in `gokrazy_scripts`

```console
00 11 * * FRI /home/brun0/Desktop/personal/dotfiles/gokrazy_scripts/gokr_backup_config.sh
```
