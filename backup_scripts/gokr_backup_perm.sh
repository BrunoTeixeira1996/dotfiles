rsync -av -e ssh rsync://waiw-backup/waiw/ /mnt/pve/external/gokrazy_backup/waiw_backup/ #gokrazy -> external hard drive
rsync -avh /mnt/pve/external/gokrazy_backup/waiw_backup/ /storagepool/backups/gokrazy_backup/waiw_backup/ #external hard drive -> /storagepool/ (HDD in proxmox)
