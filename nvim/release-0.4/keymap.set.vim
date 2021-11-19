" Common: leader key
let g:mapleader=';'

" Common: avoid escape key
inoremap <leader><leader> <ESC>

" Common: no repeat indentation key
nnoremap > >>
nnoremap < <<



" Config: edit configuration
nnoremap <silent> <leader>ce :edit $MYVIMRC<CR>

" Config: save configuration
nnoremap <silent> <leader>cs :source $MYVIMRC<CR>



" Filesystem: save file
nnoremap <C-s> :w<CR>

" Filesystem: save file and quit
nnoremap <C-q> :x<CR>

" Filesystem: explore the directory containing the given file
nnoremap <C-e> :Explore<CR>



" Window: horizontal/vertical split (with new buffer)
nnoremap <silent> <leader>wh :new<CR>
nnoremap <silent> <leader>wv :vnew<CR>

" Window: close window
nnoremap <silent> <leader>wc <C-w>c<CR>

" Window: keep active window only
nnoremap <silent> <leader>wo <C-w>o<CR>

" Window: resize window
nnoremap <silent> + :vertical resize +3<CR>
nnoremap <silent> - :vertical resize -3<CR>

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
        execute "AirlineRefresh"
    catch
    endtry
endfunction
