# How To

- Add user to sudo

- Change default `apt source lists` with the ones in this repo

- Install ansible:

```bash
sudo apt-get update
sudo apt-get -y install ansible
```

- Install git and clone this repo


- Execute a dry run for worstation:

```bash
ansible-playbook plays/playbook.yml -i hosts.ini --check --fork 50
```

- Execute a dry run for vm:

```bash
ansible-playbook plays/playbook.yml -i hosts.ini --skip-tags workstation --check --fork 50
```

- Execute ansible playbook for workstation:

```bash
ansible-playbook plays/playbook.yml -i hosts.ini --fork 50
```

- Execute ansible playbook for vm:

```bash
ansible-playbook plays/playbook.yml -i hosts.ini --skip-tags workstation --fork 50
```


- Next just configure:
	- SSH Keys
	- Github Keys
	- Keepassxc db

## TODO

- Automate installation for:
	- Iosevka font

- Change xfce4 visual with ansible
	- `sudo apt install dbus-x11` is required
	- https://docs.ansible.com/ansible/latest/collections/community/general/xfconf_module.html
	- Edit Panel 2 to add default icons
	- Edit xfce4-appfinder shortcut to use `Super` key

- Make it work for PopOS!