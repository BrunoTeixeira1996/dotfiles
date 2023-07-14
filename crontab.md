# Cronjobs that I have Running

## work/personal laptop

- Backups gokrazy instance to external hard-drive that is plugged in proxmox

```console
00 11 * * FRI /home/brun0/Desktop/personal/dotfiles/backup_gokrazy.sh
```

## proxmox

- Backups leaks and compresses to prevent losing data

```console
0 0 * * 0 /storagepool/backups/leak_backup/backup_leak.sh
0 0 * * 0 find /storagepool/backups/leak_backup/ -name '*.tar.gz' -mtime +15 -exec rm {} \;
```

- Backups `waiw` module that resides in `/perm/home/waiw` (gokrazy appliance)

```console
0 0 * * 0 /mnt/pve/external/gokrazy_backup/gok-backup.sh
```
