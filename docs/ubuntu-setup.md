# Zorin OS 15.3 Lite

Ubuntu-based OS setup guide.

## Table of contents

---

- [System setup](#system-setup)
  - [Touchpad tap to click](#touchpad-tap-to-click)
  - [Firewall activation](#firewall-activation)
- [Utilities](#utilities)
  - [Desktop customization interface](#desktop-customization-interface)
  - [RAM performance optimization](#ram-performance-optimization)
  - [Expand battery life time](#expand-battery-life-time)
  - [Save your eyes](#save-your-eyes)
- [Code enviroment](#code-enviroment)
  - [Command line shell](#command-line-shell)
  - [Terminal multiplexer](#terminal-multiplexer)
  - [Text editor](#text-editor)
- [Code utilities](#code-utilities)
  - [Version control system](#version-control-system)
  - [Node.js and NPM](#nodejs-and-npm)
  - [Go programming language](#go-programming-language)
  - [Rust and Cargo](#rust-and-cargo)
- [Applications](#applications)
  - [Sublime text](#sublime-text)
  - [Torrent client](#torrent-client)
  - [Spotify free](#spotify-free)
- [Questions and Answers](#questions-and-answers)

## System setup

---

### Touchpad tap to click

1. Search for `Mouse and Touchpad`
1. Select `:touchpad` in dropdown device menu
1. Go to touchpad tab
1. Put checkmark on `Tap touchpad to click`

### Firewall activation

1. Search for `Firewall`
1. Status: `ON`, Incoming: `Deny`, Outcoming: `Allow`

## Utilities

---

### Desktop customization interface

```shell
sudo apt-get update
sudo apt-get install gnome-tweaks
gnome-tweaks
```

### RAM performance optimization

```shell
sudo add-apt-repository ppa:ambrosyn/xapps
sudo apt-get update
sudo apt-get install xed
sudo xed /etc/sysctl.conf
```

1. Add `vm.swappiness=10` in the end and save `sysctl.conf` file
1. Reboot OS

### Expand battery life time

```shell
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
```

### Save your eyes

```shell
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui
```

## Code enviroment

---

### Command line shell

Clink on [link](docs/fish-shell.md) to see more information

```shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
```

### Terminal multiplexer

```shell
sudo apt-get update
sudo apt-get install tmux
```

### Text editor

```shell
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

## Code utilities

---

### Version control system

```shell
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

### Node.js and NPM

Using NVM (node version manager):

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node
nvm install --lts
```

Change Node.js version:

```shell
nvm ls
nvm use 14.17.5
```

Create forlder for global modules:

```shell
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
```

### Go programming language

```shell
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
```

### Rust and Cargo

```shell
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Applications

---

### Sublime text

```shell
sudo apt-get update
sudo apt-get install sublime-text
```

### Torrent client

```shell
sudo add-apt-repository ppa:deluge-team/stable
sudo apt-get update
sudo apt-get install deluge
```

### Spotify free

```shell
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

sudo apt-get install x11-utils pulseaudio-utils libnotify-bin xdotool vlc
git clone https://github.com/SecUpwN/Spotify-AdKiller.git
cd Spotify-AdKiller
./install.sh
```

## Questions and answers

---

### What a difference between `apt` and `apt-get` ?

`apt` (advanced package tool) is a modern and simple version of Ubuntu package manager. It combines `apt-get` and `apt-cache` funtionality, that was completely rewritten for better performance and user experience. To see the list of available commands just type `apt --help`

### What is PPA ?

The PPA (personal package archive) allows application developers and Linux users to create their own repositories to distribute software. With PPA, you can easily get newer software version or software that are not available via the official Ubuntu repositories.

### How to open terminal with shortcut ?

Use `Ctrl + Alt + T` combination.
