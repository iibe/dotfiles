" ? Filetype detection, loading of corresponding plugins (and indentation files)
filetype plugin indent on

" ? Native language layout
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" ? Show whitespaces
set showbreak=↪\⠀
set list listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,space:•,extends:⟩,precedes:⟨

" ? Line number
set number relativenumber cursorline

" ? Word wrap
set wrap linebreak nolist

" ? Indentation
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType html,ejs,vim setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType go setlocal shiftwidth=8 tabstop=8 softtabstop=8
