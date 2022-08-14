# How To

- Add user to sudo

- Change default `apt source lists` with the ones in this repo

- Install ansible:

```bash
sudo apt-get update
sudo apt-get -y install ansible
```

- Install git and clone this repo

- Execute a dry run:

```bash
ansible-playbook plays/playbook.yml -i hosts.ini --check --fork 50
```


- Execute ansible playbook:

```bash
ansible-playbook plays/playbook.yml -i hosts.ini --fork 50
```

- Next just configure:
	- SSH Keys
	- Github Keys
	- Keepassxc db

## TODO

- Automate installation for:
	- virtualbox
	- wifi [testing]
	- telegram [testing]
	- brave [testing]
	- keepassxc [testing]
	- Iosevka font
	- Filezilla [testing]
	- NewsFlash
	- Obsidian

- Automate config files for:
	- NewsFlash

- Change xfce4 visual with ansible
- Make it work for PopOS!