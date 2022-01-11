" ? Syntax highlighting
syntax enable

" ? Encoding
set encoding=utf-8

" ? End-of-butter symbol
set fillchars+=eob:\$

" ? Window split symbol (by default)
set fillchars+=vert:\│

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

" ? Scroll bottom offset
set scrolloff=5

" ? Autosave file contents
set autowrite

" ? Do not create a swap files (.swp)
set noswapfile

" ? Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
