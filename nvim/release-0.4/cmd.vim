" ? Encoding
set encoding=utf-8

" ? Syntax highlighting
syntax enable

" ? Window split
set splitright splitbelow

" ? Disable CLI --MODE-- message
set noshowmode

" ? Disable search highlighting
set nohlsearch

" ? Multiple buffers
set hidden

" ? Use system clipboard
set clipboard+=unnamedplus

" ? Mouse
set mouse=a ruler

" ? Line number
set number relativenumber cursorline

" ? Word wrap
set wrap linebreak nolist

" ? Autosave
set autowrite noswapfile

" ? Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
