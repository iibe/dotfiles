# Nvim

Complete Neovim setup guide.

## Table of contents

- [Before getting started](#before-getting-started)
- [Installation](#installation)
- [Configuration structure](#configuration-structure)
- [Custom keybindings](#custom-keybindings)

## Before getting starter

- I strongly recommend to learn how to [touch type][touch-type]. It will hard at the beginning, but the result will get pay off.
- There are 2 types of configuration: `release-0.4` and `release-0.5` (still no mature). Since Neovim 0.5, it has built-in LSP (Language Server Protocol) client, tree-sitter syntax engine and Lua API improvements. By default you'll get `release-0.4`. To change it, go to `init.vim` and set `let g:release = 0.5` (not done yet).

## Installation

1. Find directory of Neovim config folder. Usually it's `~/.config/nvim` for Linux or `~/AppData/Local/nvim` for Windows.
1. Extract files from current directory inside `./nvim` folder.
1. Open Neovim by running `nvim` command in terminal and type `:PlugInstall` to install all plugins (or it will be installed automatically).
1. Reopen Neovim and enjoy your new lookup.

## Configuration structure

There is 2 root files:

1. `init.vim` - Neovim initialization.
1. `coc-settings.json` - LSP settings.

The configuration consists of 7 logically separated files:

1. `cmd.vim` - native Neovim configuration commands.
1. `gui.vim` - native Neovim configuration commands for GUI client.
1. `lsp.vim` - LSP configuration commands.
1. `indent.set.vim` - custom indentations for programming languages.
1. `keymap.set.vim` - custom key bindings.
1. `plugin.get.vim` - list of installed plugins.
1. `plugin.set.vim` - plugins configuration.

## Custom keybinding

I personally like to use `;` as default leader key. But you can set up anything you want (e.g `\` or `,` are also a good choice).

| Shortcut | Action description                        |
| :------- | :---------------------------------------- |
| `;;`     | Exit from **insert mode** (same as `Esc`) |
| `>`      | Indent to right (same as `>>`)            |
| `<`      | Indent to left (same as `<<`)             |

| Shortcut   | Action description                                 |
| :--------- | :------------------------------------------------- |
| `Ctrl + h` | Move to the left window (compatible with `tmux`)   |
| `Ctrl + j` | Move to the bottom window (compatible with `tmux`) |
| `Ctrl + k` | Move to the top window (compatible with `tmux`)    |
| `Ctrl + l` | Move to the right window (compatible with `tmux`)  |
| `;wh`      | Split active window horizontally                   |
| `;wv`      | Split active window vertically                     |
| `;wo`      | Keep active window only                            |
| `;wc`      | Close window                                       |
| `+`        | Increase window width                              |
| `-`        | Decrease window width                              |

| Shortcut  | Action description                                        |
| :-------- | :-------------------------------------------------------- |
| `Alt + h` | Go to previous buffer                                     |
| `Alt + l` | Go to next buffer                                         |
| `;bb`     | Switch between last two buffers                           |
| `;bc`     | Close buffer                                              |
| `;bk`     | Kill buffer                                               |
| `;be`     | Explore buffers                                           |
| `;bg`     | Go to buffer (type a number of buffer and press ENTER)    |
| `;[1-9]`  | Go to buffer №[1-9] (to see a list of buffers type `;be`) |
| `;0`      | Go to last used buffer                                    |

| Shortcut     | Action description                         |
| :----------- | :----------------------------------------- |
| `Ctrl+Space` | Trigger autocompletion                     |
| `Shift+k`    | Show documentation (same as `K`)           |
| `[g`         | Go to previos diagnostic                   |
| `]g`         | Go to next diagnostic                      |
| `gd`         | Go to definition                           |
| `gt`         | Go to type definition                      |
| `gi`         | Go to implementation                       |
| `gr`         | Go to reference                            |
| `;;r`        | Rename symbol                              |
| `;;fs`       | Format selected code                       |
| `;;as`       | Apply code action to selected region       |
| `;;a`        | Apply code action to the current buffer    |
| `;;af`       | Apply problem auto fix on the current line |

<!--
| `;cld`       | :CocList diagnostics                       |
| `;cle`       | :CocList extensions                        |
| `;clm`       | :CocList marketplace                       |
| `;clc`       | :CocList commands                          |
| `;clo`       | :CocList outline                           |
| `;cls`       | :CocList -I symbols                        |
| `;clj`       | :CocNext                                   |
| `;clk`       | :CocPrev                                   |
| `;clr`       | :CocListResume                             |
 -->

| Shortcut   | Action Description  |
| :--------- | :------------------ |
| `Ctrl + s` | Save file           |
| `Ctrl + q` | Save file and quit  |
| `Ctrl + e` | Explore file folder |

| Shortcut | Action Description      |
| :------- | :---------------------- |
| `;tsh`   | Toggle search highlight |
| `;tln`   | Toggle line number      |
| `;tww`   | Toggle text wrap        |

| Shortcut | Action description |
| :------- | :----------------- |
| `;ce`    | Edit configuration |
| `;cs`    | Save configuration |

<!-- Links -->

[touch-type]: https://www.typingstudy.com

<!-- Links -->
