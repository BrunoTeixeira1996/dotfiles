# Backups

## Proxmox

- Backup
  -  Gokrazy `/perm` partition (`gokr_backup_perm.sh` inside this repo in `backup_scripts`) save in external hard drive and in `/storagepool/backups/gokrazy_backup` (hdd in proxmox)
  - Backup telegram bot leaks (`leak_backup.sh` inside this repo in `backup_scripts`) save in external hard drive and in `/storagepool/backups/leaks_backup` (hdd in proxmox)
  - Backup Syncthing (`syncthing_backup.sh` inside this repo in `backup_scripts`) save in external hard drive and in `/storagepool/backups/syncthing_backup` (hdd in proxmox)
  - Backup postgresql (`postgresql_backup.sh` inside this repo in `backup_scripts`) save in external hard drive and in `/storagepool/backups/postgresql_backup` (hdd in proxmox)

```console
0 0 * * 0 /mnt/pve/external/backup_scripts/gokr_backup_perm.sh
0 0 * * 0 /mnt/pve/external/backup_scripts/leak_backup.sh
0 0 * * 0 /mnt/pve/external/backup_scripts/syncthing_backup.sh
0 0 * * 0 /mnt/pve/external/backup_scripts/postgresql_backup.sh
```

## work/personal laptop

- Backups gokrazy instance to external hard-drive that is plugged in proxmox
  - `gokr_backup_config.sh` inside this repo in `backup_scripts`

```console
00 11 * * FRI /home/brun0/Desktop/personal/dotfiles/gokrazy_scripts/gokr_backup_config.sh
```
