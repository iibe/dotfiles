" # Color Themes

" > https://github.com/altercation/vim-colors-solarized
colorscheme solarized
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_bold = 1
set background=dark



" # Start Page

" > https://github.com/mhinz/vim-startify/wiki/Example-configurations
let g:startify_custom_header = []



" # Status Bar Line

" > https://github.com/vim-airline/vim-airline#smarter-tab-line
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
set showtabline=2

" > https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#whitespace#trailing_format = '%s'

" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''

if (!exists('g:airline_symbols'))
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ' Y:'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.colnr = ' X:'
let g:airline_symbols.whitespace = 'WS:'

call airline#parts#define_accent('linenr', 'none')
call airline#parts#define_accent('maxlinenr', 'none')
call airline#parts#define_accent('colnr', 'none')
call airline#parts#define_accent('whitespace', 'none')



" # File Explorer

nnoremap <silent> <Space> :NERDTreeToggle<CR>
nnoremap <silent> <C-n> :NERDTree<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>
nnoremap <silent> <C-t> :NERDTreeFocus<CR>

" > https://github.com/preservim/nerdtree#installation
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeHighlightCursorline = 0

" ? Change default directory icons
let g:NERDTreeDirArrowExpandable = '⮞'
let g:NERDTreeDirArrowCollapsible = '⮟'

" ? Show relative line numbers
let g:NERDTreeShowLineNumbers = 1
autocmd FileType NERDTree setlocal relativenumber

" ? Close the tab if NERDTree is the only window remaining in it
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" ? If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" > https://github.com/Xuyuanp/nerdtree-git-plugin#installation
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusConcealBrackets = 1

" ? Set custom signs for different Git statuses
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Untracked' :'∪',
    \ 'Modified'  :'≈',
    \ 'Staged'    :'+',
    \ 'Renamed'   :'➜',
    \ 'Deleted'   :'⨉',
    \ 'Unmerged'  :'∩',
    \ 'Unknown'   :'?',
    \ 'Ignored'   :'⦸',
    \ 'Clean'     :'☐',
    \ 'Dirty'     :'☒',
\ }

" > https://github.com/tiagofumo/vim-nerdtree-syntax-highlight#installation

" ? Highlight full name (not only icons)
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1



" # Fuzzy Find Files (with ripgrep and bat)

" ? Exact search keybindings
nnoremap <silent> <leader>fe :FZF<CR>
nnoremap <silent> <leader>fh :FZF ~<CR>

" ? Fuzzy search keybindings
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>fr :Rg<CR>
nnoremap <silent> <leader>ft :Tags<CR>
nnoremap <silent> <leader>fm :Marks<CR>

" > https://github.com/junegunn/fzf#installation
" > https://github.com/junegunn/fzf.vim#installation
set runtimepath+=~/.fzf

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'

" ? Enable per-command history
let g:fzf_history_dir = '~/.local/share/fzf-history'

" ? Popup window keybindings
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-h': 'split',
    \ 'ctrl-v': 'vsplit',
\ }

" ? Popup window layout (90% of screen size, centered)
let g:fzf_layout = {
    \ 'window': {
        \ 'width': 0.90,
        \ 'height': 0.90,
        \ 'xoffset': 0.5,
        \ 'yoffset': 0.5,
        \ 'highlight': 'Todo',
    \ }
\ }

" ? Preview window layout
let g:fzf_preview_window = ['right:75%', 'ctrl-/']

" ? Popup window color scheme
let g:fzf_colors = {
    \ 'fg': ['fg', 'Normal'],
    \ 'bg': ['bg', 'Normal'],
    \ 'hl': ['fg', 'Comment'],
    \ 'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+': ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+': ['fg', 'Statement'],
    \ 'info': ['fg', 'PreProc'],
    \ 'border': ['fg', 'Ignore'],
    \ 'prompt': ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker': ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header': ['fg', 'Comment']
\ }



" # Version Control System

" > https://github.com/airblade/vim-gitgutter#customisation
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0

" ? Custom signcolumn colors
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" ? Custom signcolumn icons
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_modified_removed = '≃'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_removed_above_and_below = '↕'

" ? Sign column background highlight fix
highlight clear SignColumn

" > https://github.com/tpope/vim-fugitive/blob/master/doc/fugitive.txt

" nnoremap <silent> <leader><leader>ga :Git add<CR>
" nnoremap <silent> <leader><leader>gc :Git commit<CR>
" nnoremap <silent> <leader><leader>gst :Git status<CR>
" nnoremap <silent> <leader><leader>gbr :Git branch<Space>
" nnoremap <silent> <leader><leader>gco :Git checkout<Space>

" nnoremap <silent> <leader><leader>gd :Gdiff<CR>
" nnoremap <silent> <leader><leader>ge :Gedit<CR>
" nnoremap <silent> <leader><leader>gr :Gread<CR>
" nnoremap <silent> <leader><leader>gw :Gwrite<CR>
" nnoremap <silent> <leader><leader>gm :Gmove<Space>
" nnoremap <silent> <leader><leader>gdps :Dispatch! git push<CR>
" nnoremap <silent> <leader><leader>gdpl :Dispatch! git pull<CR>



" # Class Viewer

nnoremap <silent> <F8> :TagbarToggle<CR>
