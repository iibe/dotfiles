# Fish

Unix-based command line shell with a focus on interactivity and usability.

## Table of contents

---

- [Installation](#installation)
- [Setup](#setup)

## Installation

---

```shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
```

Don't forget to install powerline-pathed font (either [Powerline][powerline] or [NerdFonts][nerdfonts])

## Setup

---

- [Oh My Fish][oh-my-fish] - framework for Fish

```shell
curl -L https://get.oh-my.fish | fish
```

- [Fisher][fisher] - plugin manager for Fish

```shell
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

- [Bob the Fish][bob-the-fish] - theme for Fish (use [Oh My Fish][oh-my-fish] for installation)

```shell
omf install bobthefish
```

- [z][z] - fish-plugin for directory jumping

```shell
fish && fisher install jethrokuan/z
```

- [peco][peco] - interactive filtering tool

```shell
sudo apt install peco
```

- [exa][exa] - modern replacement of `ls` command.

```shell
sudo apt install exa
```

If you see **E: Unable to locate package** message, either try this [solution][exa-fix], or use command below:

```shell
cargo install exa
```

- [ghq][ghq] - manage local git repository

```shell
go get github.com/x-motemen/ghq
```

<!-- Links -->

[powerline]: https://github.com/powerline/fonts
[nerdfonts]: https://github.com/ryanoasis/nerd-fonts
[oh-my-fish]: https://github.com/oh-my-fish/oh-my-fish
[fisher]: https://github.com/jorgebucaran/fisher
[bob-the-fish]: https://github.com/oh-my-fish/theme-bobthefish
[z]: https://github.com/jethrokuan/z
[peco]: https://github.com/peco/peco
[exa]: https://github.com/ogham/exa
[exa-fix]: https://askubuntu.com/questions/1290500/unable-to-locate-package-for-exa-on-wsl-2-ubuntu
[ghq]: https://github.com/x-motemen/ghq

<!-- Links -->
