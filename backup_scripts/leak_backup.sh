DT=`date +%Y%m%d+%H+%M`
tar zcf /mnt/pve/external/leaks_backup/leak-$DT.tar.gz --absolute-names /mnt/pve/external/leaks/ #compress folder
find /mnt/pve/external/leaks_backup/ -name '*.tar.gz' -mtime +15 -exec rm {} \; # remove 15 days old file
cp -r /mnt/pve/external/leaks_backup/leak-$DT.tar.gz /storagepool/backups/leaks_backup # external hard drive -> hdd in proxmox
