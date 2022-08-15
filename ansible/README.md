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
sudo ansible-playbook plays/playbook.yml -i hosts.ini --check --fork 50
```

- Execute a dry run for vm:

```bash
sudo ansible-playbook plays/playbook.yml -i hosts.ini --skip-tags workstation --check --fork 50
```

- Execute ansible playbook for workstation:

```bash
sudo ansible-playbook plays/playbook.yml -i hosts.ini --fork 50
```

- Execute ansible playbook for vm:

```bash
sudo ansible-playbook plays/playbook.yml -i hosts.ini --skip-tags workstation --fork 50
```


- Next just configure:
	- SSH Keys
	- Github Keys
	- Keepassxc db

## Requirements

- `sudo apt install dbus-x11` for xfconf with ansible

## References

- https://docs.ansible.com/ansible/latest/collections/community/general/xfconf_module.html

## TODO

- Install python3 utils
	- venv
	- upgrade pip3

- Make default icons for second panel for xfce4, for now i deactivate the second panel

- Make it work for ubuntu vm

- Make it work for PopOS!