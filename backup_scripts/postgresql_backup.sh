ssh bot 'pg_dump waiw > waiw.sql && pg_dump leaks > leaks.sql'
rsync -Pav -e "ssh -i $HOME/.ssh/id_ed25519_postgresql_backup" bot:/root/*.sql /mnt/pve/external/postgresql_backup # postgres -> external hard drive
cp  /mnt/pve/external/postgresql_backup/*.sql /storagepool/backups/postgresql_backup # external hard drive -> storage pool (hdd in proxmox)
ssh bot 'rm waiw.sql && rm leaks.sql'
