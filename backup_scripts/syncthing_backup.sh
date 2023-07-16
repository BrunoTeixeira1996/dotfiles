rsync -Pav -e "ssh -i $HOME/.ssh/id_ed25519_syncthing_backup" syncthing:/root/config/Sync /mnt/pve/external/syncthing_backup # syncthing lxc -> external hard drive
cp -r /mnt/pve/external/syncthing_backup/Sync /storagepool/backups/syncthing_backup # external hard drive to storage pool (hdd in proxmox)
