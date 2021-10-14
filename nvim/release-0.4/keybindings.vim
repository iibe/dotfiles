" Common: Leader Key
let g:mapleader=';'

" Common: Avoid Escape Key
inoremap <leader><leader> <ESC>

" Common: Avoid Intentation Key
nnoremap > >>
nnoremap < <<



" Config: (e)dit (c)onfiguration
nnoremap <silent> <leader>ce :edit $MYVIMRC<CR>

" Config: (s)ave (c)onfiguration
nnoremap <silent> <leader>cs :source $MYVIMRC<CR>



" Filesystem: Save File
nnoremap <C-s> :w<CR>

" Filesystem: Save File and Quit
nnoremap <C-q> :x<CR>

" Filesystem: Explore File Folder
nnoremap <C-e> :Explore<CR>



" Window: move between windows
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Window: horizontal/vertical split (with new buffer)
nnoremap <silent> <leader>wh :new<CR>
nnoremap <silent> <leader>wv :vnew<CR>

" Window: close
nnoremap <silent> <leader>wc <C-w>c<CR>

" Window: keep active only
nnoremap <silent> <leader>wo <C-w>o<CR>

" Window: resize 
nnoremap <silent> + :vertical resize +3<CR>
nnoremap <silent> - :vertical resize -3<CR>



" Buffer: go to previous/next
nnoremap <silent> <C-h> :bp<CR>
nnoremap <silent> <C-l> :bn<CR>

" Buffer: switch between current and last
nnoremap <silent> <leader>bb <C-^>

" Buffer: close
nnoremap <silent> <leader>bc :bd<CR>

" Buffer: kill
nnoremap <silent> <leader>bk :bd!<CR>

" Buffer: explore buffers
nnoremap <silent> <leader>be :ls<CR>

" Buffer: go to buffer (enter a number)
nnoremap <silent> <leader>bg :ls<CR>:buffer<Space>



" Toggle: (s)earch matches (h)ighlighting
nnoremap <silent> <leader>tsh :set hlsearch! hlsearch?<CR>

" Toggle: (l)ine (n)umber (nonumber by default)
nnoremap <silent> <leader>tln :set number! number?<CR>

" Toggle: (w)ord (w)rap (wrap by default)
nnoremap <silent> <leader>tww :set wrap! wrap?<CR>
