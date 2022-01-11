" Common: leader key
let g:mapleader=';'

" Common: mode escape alternatives
inoremap <leader><leader> <ESC>
" inoremap jj <ESC>
" inoremap kk <ESC>
" inoremap jk <ESC>
" inoremap kj <ESC>

" Common: simple multiline nagivation
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Common: no repeat indentation key
nnoremap > >>
nnoremap < <<

" Common: yank until end-of-line
nnoremap Y y$

" Common: simple x/y axis navigation
nnoremap gh ^
nnoremap gl g_
nnoremap gj L
nnoremap gk H
nnoremap gm M

" Common: disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>



" Config: edit configuration
nnoremap <silent> <leader>ce :edit $MYVIMRC<CR>

" Config: save configuration
nnoremap <silent> <leader>cs :source $MYVIMRC<CR>



" Filesystem: save file
nnoremap <silent> <C-s> :w<CR>

" Filesystem: save file and quit
nnoremap <silent> <C-q> :x<CR>

" Filesystem: explore the directory containing the given file
nnoremap <silent> <C-e> :Explore<CR>

" Filesystem: create new file
nnoremap <C-F> :!touch<Space>

" Filesystem: create new directory
nnoremap <C-D> :!mkdir<Space>



" Window: horizontal/vertical split (with new buffer)
nnoremap <silent> <leader>wh :new<CR>
nnoremap <silent> <leader>wv :vnew<CR>

" Window: close window
nnoremap <silent> <leader>wc <C-w>c<CR>

" Window: keep active window only
nnoremap <silent> <leader>wo <C-w>o<CR>

" Window: resize window width/height
nnoremap <leader>wih :vertical resize +3<CR>
nnoremap <leader>wdh :vertical resize -3<CR>
nnoremap <leader>wiv :resize +3<CR>
nnoremap <leader>wdv :resize -3<CR>

" Window: move between windows (`vim-tmux-navigator` already got it)
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l



" Buffer: go to previous/next buffer
nnoremap <silent> <A-h> :bp<CR>
nnoremap <silent> <A-l> :bn<CR>

" Buffer: switch between current and last buffer
nnoremap <silent> <leader>bb <C-^>

" Buffer: close current buffer
nnoremap <silent> <leader>bc :bd<CR>

" Buffer: kill current buffer
nnoremap <silent> <leader>bk :bd!<CR>

" Buffer: explore buffers
nnoremap <silent> <leader>be :ls<CR>

" Buffer: go to buffer (type a number of buffer and press ENTER)
nnoremap <silent> <leader>bg :ls<CR>:buffer<CR>

" Buffer: go to n-th buffer
nnoremap <silent> <leader>1 :1b<CR>
nnoremap <silent> <leader>2 :2b<CR>
nnoremap <silent> <leader>3 :3b<CR>
nnoremap <silent> <leader>4 :4b<CR>
nnoremap <silent> <leader>5 :5b<CR>
nnoremap <silent> <leader>6 :6b<CR>
nnoremap <silent> <leader>7 :7b<CR>
nnoremap <silent> <leader>8 :8b<CR>
nnoremap <silent> <leader>9 :9b<CR>

" Buffer: go to last used buffer
nnoremap <silent> <leader>0 :e#<CR>



" Toggle: search matches highlighting
nnoremap <silent> <leader>tsh :set hlsearch! hlsearch?<CR>

" Toggle: line number (nonumber by default)
nnoremap <silent> <leader>tln :set number! number?<CR>

" Toggle: word wrap (wrap by default)
nnoremap <silent> <leader>tww :set wrap! wrap?<CR>

" Toggle: color mode (dark by default)
nnoremap <silent> <leader>tcm :call <SID>toggle_background()<CR>

function! s:toggle_background()
    if (&background == 'dark')
        set background=light
    else
        set background=dark
    endif

    try
        execute 'AirlineRefresh'
    catch
    endtry
endfunction
