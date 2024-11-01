# dotfiles

These are my dotfiles. Currently this includes:
- VIM config
- zsh:
  - theme (and config): [powerlevel10k](https://github.com/romkatv/powerlevel10k.git)
  - plugins:
    - [bat](https://github.com.fdellwing/zsh-bat) (better cat)
    - [syntax-highlighting](ttps://github.com/zsh-users/zsh-syntax-highlighting)
    - [you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use)
    - [lxd-completion](https://github.com/endaaman/lxd-completion-zsh)
    - [auto-suggestinons](git clone https://github.com/zsh-users/zsh-autosuggestions)
  - custom aliases and functions
- tmux config (literally just has the colour fix but heyo whatever)

## How to use these dotfiles

### Manual install

1. Install the following for your distro:
  - vim
  - zsh
  - batcat
  - stow
2. Clone this repo to `${HOME}/.dotfiles`
3. Enter the repo directory and run `stow .` - this will create symlinks to the dotfiles in your home folder
4. Change your shell to zsh
```sh
chsh <username> -s /bin/zsh
```
5. Get `oh-my-zsh` and run the installer (make sure to preserve zshrc):
```sh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh --unattended --keep-zshrc
```
6. Clone the powerlevel10k theme to `${ZSH_CUSTOM}/themes/` (link above)
7. Clone all the plugins listed above to `${ZSH_CUSTOM}/plugins/`

That should be it!

### But wait, what's that cloud-config.yaml for?

Glad you asked. It's a [cloud-init](https://github.com/canonical/cloud-init) user-data config that basically automates all of the above for new systems. However, this config is pretty hard-coded to my needs, so if you want to use it, you'll need to replace `noodl` with your preferred username, and also make sure not to import my SSH keys (unless you really want me to have passwordless access to your system...)

This file is used when launching a new container/VM with LXD, like so:
```sh
lxc launch ubuntu:noble cloud-init-test --config=user.user-data="$(rcat ~/.dotfiles/cloud-config.yaml)"
```

You can also use it when deploying machines with [MAAS](https://launchpad.net/maas), or when setting up a new Ubuntu server manually.
