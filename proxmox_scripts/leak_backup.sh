tar zcf /mnt/pve/external/leaks_backup/leak-`date +%Y%m%d+%H+%M`.tar.gz --absolute-names /mnt/pve/external/leaks/
find /mnt/pve/external/leaks_backup/ -name '*.tar.gz' -mtime +15 -exec rm {} \;
