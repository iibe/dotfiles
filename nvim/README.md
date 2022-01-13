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

1. `cli.vim` - native Neovim settings for CLI.
1. `gui.vim` - native Neovim settings for GUI.
1. `lsp.vim` - LSP settings.
1. `editor.vim` - settings within editor window.
1. `keymap.vim` - custom keyboard Keys.
1. `plugin.get.vim` - list of installed plugins.
1. `plugin.set.vim` - plugins configuration.

## Custom keybinding

I personally like to use `;` as default leader key. But you can set up anything you want (e.g `\` or `,` are also a good choice).

| Key  | Mode   | Command            | Description                    |
| :--- | :----- | :----------------- | :----------------------------- |
| `;;` | INSERT | `ESC`              | Exit from **insert mode**      |
| `j`  | NORMAL | `v:count ? j : gj` | Improved navigation            |
| `k`  | NORMAL | `v:count ? k : gk` | Improved navigation            |
| `>`  | NORMAL | `>>`               | Improved tab                   |
| `<`  | NORMAL | `<<`               | Improved tab                   |
| `Y`  | NORMAL | `y$`               | **y**ank until the end of line |
| `gh` | NORMAL | `^`                | Go to the first row symbol     |
| `gl` | NORMAL | `g_`               | Go to the last row symbol      |
| `gj` | NORMAL | `L`                | Go to the bottom of the window |
| `gk` | NORMAL | `H`                | Go to the top of the window    |
| `gm` | NORMAL | `M`                | Go to the middle of the window |

| Key   | Mode   | Action                 | Description        |
| :---- | :----- | :--------------------- | :----------------- |
| `;ve` | NORMAL | `:edit $MYVIMRC<CR>`   | Edit configuration |
| `;vs` | NORMAL | `:source $MYVIMRC<CR>` | Save configuration |

| Key            | Mode   | Action           | Description                     |
| :------------- | :----- | :--------------- | :------------------------------ |
| `Ctrl+s`       | NORMAL | `:w<CR>`         | Save file                       |
| `Ctrl+q`       | NORMAL | `:x<CR>`         | Save file and quit              |
| `Ctrl+e`       | NORMAL | `:Explore<CR>`   | File list of the current folder |
| `Ctrl+Shift+f` | NORMAL | `:!touch<Space>` | Create new file                 |
| `Ctrl+Shift+d` | NORMAL | `:!mkdir<Space>` | Create new directory            |

| Key      | Mode   | Action                    | Description                                  |
| :------- | :----- | :------------------------ | :------------------------------------------- |
| `Ctrl+h` | NORMAL |                           | Go to left window (compatible with `tmux`)   |
| `Ctrl+j` | NORMAL |                           | Go to bottom window (compatible with `tmux`) |
| `Ctrl+k` | NORMAL |                           | Go to top window (compatible with `tmux`)    |
| `Ctrl+l` | NORMAL |                           | Go to right window (compatible with `tmux`)  |
| `;wh`    | NORMAL | `:new<CR>`                | Split window horizontally                    |
| `;wv`    | NORMAL | `:vnew<CR>`               | Split window vertically                      |
| `;wo`    | NORMAL | `<C-w>o<CR>`              | Keep active window only                      |
| `;wc`    | NORMAL | `<C-w>c<CR>`              | Close current window                         |
| `;wih`   | NORMAL | `:vertical resize +3<CR>` | Increase window size horizontally            |
| `;wdh`   | NORMAL | `:vertical resize -3<CR>` | Decrease window size horizontally            |
| `;wiv`   | NORMAL | `:resize +3<CR>`          | Increase window size vertically              |
| `;wdv`   | NORMAL | `:resize -3<CR>`          | Decrease window size vertically              |

| Key      | Mode   | Action               | Description                                               |
| :------- | :----- | :------------------- | :-------------------------------------------------------- |
| `Alt+h`  | NORMAL | `:bp<CR>`            | Go to previous buffer                                     |
| `Alt+l`  | NORMAL | `:bn<CR>`            | Go to next buffer                                         |
| `;bb`    | NORMAL | `<C-^>`              | Switch between last two buffers                           |
| `;bc`    | NORMAL | `:bd<CR>`            | Close buffer                                              |
| `;bk`    | NORMAL | `:bd!<CR>`           | Kill buffer                                               |
| `;be`    | NORMAL | `:ls<CR>`            | Explore buffers                                           |
| `;bg`    | NORMAL | `:ls<CR>:buffer<CR>` | Go to buffer (type a number of buffer and press ENTER)    |
| `;[1-9]` | NORMAL | `:[1-9]b<CR>`        | Go to buffer №[1-9] (to see a list of buffers type `;be`) |
| `;0`     | NORMAL | `:e#`                | Go to last used buffer                                    |

| Key    | Mode   | Action                           | Description             |
| :----- | :----- | :------------------------------- | :---------------------- |
| `;tsh` | NORMAL | `:set hlsearch! hlsearch?<CR>`   | Toggle search highlight |
| `;tln` | NORMAL | `:set number! number?<CR>`       | Toggle line number      |
| `;tww` | NORMAL | `:set wrap! wrap?<CR>`           | Toggle text wrap        |
| `;tcm` | NORMAL | `:call <SID>toggle_background()` | Toggle color mode       |

| Key          | Mode   | Action                           | Description                      |
| :----------- | :----- | :------------------------------- | :------------------------------- |
| `Ctrl+Space` | INSERT | `coc#refresh()`                  | Trigger for autocompletion       |
| `g[`         | NORMAL | `<Plug>(coc-diagnostic-prev)`    | Go to previos diagnostic         |
| `g]`         | NORMAL | `<Plug>(coc-diagnostic-next)`    | Go to next diagnostic            |
| `gd`         | NORMAL | `<Plug>(coc-definition)`         | Go to definition                 |
| `gt`         | NORMAL | `<Plug>(coc-type-definition)`    | Go to type definition            |
| `gi`         | NORMAL | `<Plug>(coc-implementation)`     | Go to implementation             |
| `gr`         | NORMAL | `<Plug>(coc-references)`         | Go to reference                  |
| `Shift+k`    | NORMAL | `:call<SID>show_documentation()` | Show documentation (same as `K`) |

| Key    | Mode   | Action                            | Description                                |
| :----- | :----- | :-------------------------------- | :----------------------------------------- |
| `;grn` | NORMAL | `<Plug>(coc-rename)`              | Rename variable, function, etc.            |
| `;gfs` | NORMAL | `<Plug>(coc-format-selected)`     | Format selected code                       |
| `;gas` | NORMAL | `<Plug>(coc-codeaction-selected)` | Apply code action to selected region       |
| `;ga`  | NORMAL | `<Plug>(coc-codeaction)`          | Apply code action to the current buffer    |
| `;gfc` | NORMAL | `<Plug>(coc-fix-current)`         | Apply problem auto fix on the current line |
| `;grs` | NORMAL | `<Plug>(coc-range-select)`        | Apply selection ranges                     |
| `;cld` | NORMAL | `:CocList diagnostics`            | Show CoC diagnostics                       |
| `;cle` | NORMAL | `:CocList extensions`             | Show CoC extensions                        |
| `;clm` | NORMAL | `:CocList marketplace`            | Show CoC marketplace                       |
| `;clc` | NORMAL | `:CocList commands`               | Show CoC commands                          |
| `;clo` | NORMAL | `:CocList outline`                | Show CoC outline                           |
| `;cls` | NORMAL | `:CocList -I symbols`             | Show CoC symbols                           |
| `;clr` | NORMAL | `:CocListResume`                  | Show CoC list resume                       |
| `;cgj` | NORMAL | `:CocNext`                        | Show CoC next diagnostic                   |
| `;cgk` | NORMAL | `:CocPrev`                        | Show CoC prev diagnostic                   |

<!-- Links -->

[touch-type]: https://www.typingstudy.com

<!-- Links -->
