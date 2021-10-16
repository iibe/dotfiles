# Vim cheatsheet

Use [Vim sandbox](vim-sandbox.md) to apply your knowledge about Vim.

## Table of contents

- [Introduction](#introduction)
  - [Escape mode](#escape-mode)
  - [History](#history)
  - [Cursor](#cursor)
- [Commands](#commands)
  - [Motions](#motions)
  - [Operators](#operators)
  - [Text objects](#text-objects)
  - [Text insertion](#text-insertion)
  - [Text selection](#text-selection)
- [Tips and tricks](#tips-and-tricks)
- [Glossary](#glossary)

## Introduction

### Heap

- `C-g` - displays location and the file status in **command mode**
- `C-i` - go through **jump list** forward in **normal mode**
- `C-o` - go through **jump list** backward in **normal mode**

</br>

- `C-a` - increment number in **normal mode**
- `C-x` - decrement number in **normal mode**

### Escape mode

- `Esc` - escape from **mode** (same as `C-[`)
- `C-c` - escape from **mode** and abort current command

### History

- `u` - `u`ndo last change
- `U` - `U`ndo all entire line changes
- `{n}u` - `u`ndo last `n` changes
- `C-r` - `r`edo last change
- `.` - repeat last change

### Cursor

- `h` - left
- `j` - down
- `k` - up
- `l` - right

</br>

- `C-u` - half-page `u`p
- `C-d` - half-page `d`own
- `C-b` - page `b`ackward
- `C-f` - page `f`orward

</br>

- `{` - one paragraph up
- `}` - one paragraph down

</br>

- `gk` - through text paragraph up
- `gj` - through text paragraph down

</br>

- `gg` - go to first line
- `G` - go to last line
- `{n}gg` - go to `n`th line (same as `{n}G` and `:{n}`)

</br>

- `%` - nearest matching of `({[]})`
- `[(` - next `(`
- `])` - previous `(`
- `[{` - next `{`
- `]}` - previous `}`
- `[<` - next `<`
- `]>` - previous `>`
- `[m` - previous method start
- `[M` - next method start

</br>

- `gd` - `g`o to `d`efinition of whatever is under your cursor
- `gf` - `g`o to `f`ile in an import

### Command line

- `:q` - close file
- `:q!` - close file without changes
- `:w` - save
- `:wq` - save and close file (same as `:x`)
- `:qa` - `q`uit `a`ll files
- `:qa!` - `q`uit `a`ll files without changes

## Commands

### Motions

**Syntax:** `{n}{motion}` - multiply effect of a `motion` on `n` times. E.g. `2W` moves cursor `2` `W`ords forward.

- `w` - move `w`ord by `w`ord
- `b` - move `b`ackward word by word
- `W` - move `W`ord by `W`ord
- `B` - move `B`ackward Word by Word

</br>

- `e` - move to `e`nd of word
- `ge` - `g`o to `e`nd of previous word
- `E` - move to `E`nd of a Word
- `gE` - `g`o to `E`nd of previous Word

</br>

- `0` - go to first character of line
- `$` - go to last character of line
- `^` - go to first non-blank character of line
- `g_` - go to last non-blank character of line

</br>

- `f{character}` - `f`ind the next occurrence of `character` in line
- `F{character}` - `F`ind the previous occurrence of `character` in line
- `t{character}` - un`t`il the next occurrence of `character` in line
- `T{character}` - un`T`il the previous occurrence of `character` in line
- `;` - go to next occurrence of character
- `,` - go to previous occurrence of character

</br>

- `/{pattern}<Enter>` - search forward by `pattern`
- `?{pattern}<Enter>` - search backwards by `pattern`
- `n` - go to next match
- `N` - go to previous match
- `*` - go to next whole word under cursor
- `#` - go to previous whole word under cursor

</br>

> Check if it is work with `f{c}dgn`

- `{operator}gn` - use `operator` and go to next match
- `{operator}gN` - use `operator` and go to previous match

### Operators

**Syntax:** `{operator}{n}{motion}` - use `operator` with `motion` effect `n` times. E.g `d2w` will `d`elete `2` `w`ords forward.

- `d` - `d`elete
- `c` - `c`hange (`d`elete and go into `i`nsert mode)
- `y` - `y`ank (copy)
- `p` - `p`aste (put)
- `>` - shift right
- `<` - shift left
- `=` - format
- `g~` - switch case (alternatively use `gu` - lowercase and `gU` - upperase)

</br>

- `D` - `D`elete until end of line (same as `d$`)
- `C` - `C`hange until end of line (same as `c$`)
- `Y` - `Y`ank (copy) entire line (same as `yy`)
- `P` - `P`ast (put) before the cursor

</br>

- `cc` - `c`hange entire line
- `dd` - `d`elete entire line
- `yy` - `y`ank (copy) entire line
- `pp` - [ doesn't exists ]
- `>>` - shift entire line right
- `<<` - shift entire line left
- `==` - format entire line
- `g~~` - switch case of entire line

</br>

- `x` - delete a character under the cursor (same as `dl`)
- `X` - delete a character before the cursor (same as `dh`)
- `s` - change a character (same as `cl`)
- `r{character}` - `r`eplace single `character` with another (same as `cl{character}<Esc>`)
- `~` - switch case of a single character

### Text objects

**Syntax:** `{operator}{modificator}{text-object}` - apply `operator` with `modificator` to `text-object`. E.g `cit` will `c`hange `i`nside `t`ag content.

#### `{operator}`

See a list of operators [above](#operators)

#### `{modificator}`

- `a` - `a`round
- `i` - `i`nside

#### `{text-object}`

- `w` - `w`ord
- `s` - `s`entence
- `p` - `p`aragraph
- `t` - `t`ag
- `b` - parentheses (or use `(` instead)
- `B` - braces (or use `{` instead)
- `[` - brackets
- `'` - single quotes
- `"` - double quotes
- `` ` `` - backtick

### Text insertion

- `i` - `i`nsert text before the cursor
- `a` - `a`ppend text after the cursor
- `I` - `I`nsert text at the beginning of a line
- `A` - `A`ppend text at the beginning of a line
- `o` - `o`pen a new line below the current line
- `O` - `O`pen a new line above the current line

</br>

- `Ctrl + H` - remove the last typed character (mnemonic of `h`)
- `Ctrl + W` - remove the last typed word (mnemonic of `w`ord)
- `Ctrl + U` - remove the last typed line (mnemonic of `u`ndo)

</br>

- `gi` - get into **insert mode** at the last change of content

### Text selection

Vim have a **visual mode** (equivalent of mouse drag and select). It works in kind of the opposite way to **normal mode** - `{trigger}{motion}{operator}` - pick **visual mode** `trigger`, specify the `motion` to select text, and then apply the `operator`. E.g. `vww` will selecto 2 `w`ords.

- `v` - character-wise **visual mode**
- `V` - line-wise **visual mode**
- `Ctrl + V` - block-wise **visual mode**

### Copy and Paste

- `gp` -
- `gP` -

## Tips and tricks

- `/{pattern}<Enter>cgn{text}<Esc>.`

```typescript
// TODO: replace all **token** with **secret** in the code below:

type CallbackFunction = (token: string) => void;

function tokenHandler(cmd: string, callback: CallbackFunction): void {
  const commands = ['save', 'remove', 'sanitize'];

  if (commands.includes(cmd) && typeof callback === 'function') {
    callback();
  }
}
```

## Glossary

- `Command` - vim-action that have effect in your editor (either **operator** or **motion**):
  - `Motion` - allows to move around in **normal mode**.
  - `Operator` - perform action that change the content of your editor.
- `Words` - there is two type of words:
  - `word` - sequence of letters, digits and numbers.
  - `Word` - sequence of non-blank characters. Includes special characters - `,.<>/?;:'"!@#$%^&*()`.
- `Change` - anything that changes an editor content.
- `Jump list` - a list of places where the cursor has been to.
