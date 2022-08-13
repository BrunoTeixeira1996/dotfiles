# How To

- Add user to sudo

- Change default `apt source lists` with the ones in this repo

- Install ansible:

```bash
sudo apt-get update
sudo apt-get -y install ansible
```

- Install git and clone this repo

- Execute ansible playbook:

```bash
ansible-playbook plays/playbook.yml -i hosts.ini
```

## TODO

- Automate config files in `tmux`, `terminator`
- Change xfce4 visual with ansible
- Make it work for PopOS!