" # Color Themes

" > https://github.com/altercation/vim-colors-solarized
set background=dark
colorscheme solarized



" # Icons Themes

" > https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts
" > https://github.com/powerline/fonts
set guifont=Hack:h10



" # Status Bar Line

set showtabline=2

" > https://github.com/vim-airline/vim-airline#smarter-tab-line
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

let g:airline#extensions#ale#enabled = 1

" > https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#whitespace#trailing_format = '[ %s ]'

" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''

if (!exists('g:airline_symbols'))
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ' LN:'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.colnr = 'CN:'
let g:airline_symbols.whitespace = 'WS:'

call airline#parts#define_accent('linenr', 'none')
call airline#parts#define_accent('maxlinenr', 'none')
call airline#parts#define_accent('colnr', 'none')
call airline#parts#define_accent('whitespace', 'none')



" # File Explorer

nnoremap <silent> <Space> :NERDTreeToggle<CR>

" > https://github.com/preservim/nerdtree#installation
let g:NERDTreeIgnore = ['^node_modules$']

" ? Show relative line numbers in NERDTree window
let g:NERDTreeShowLineNumbers = 1
autocmd FileType nerdtree setlocal relativenumber

" ? Correct behavior of :q if only NERDTree window is left opened
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif

" > https://github.com/Xuyuanp/nerdtree-git-plugin#installation
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusConcealBrackets = 1

" > https://github.com/tiagofumo/vim-nerdtree-syntax-highlight#installation
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1



" # Fuzzy Find Files (with ripgrep and bat)

" ? Exact search
nnoremap <silent> <leader>fe :FZF<CR>
nnoremap <silent> <leader>fh :FZF ~<CR>

" ? Fuzzy search
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
  \'ctrl-t': 'tab split',
  \'ctrl-x': 'split',
  \'ctrl-v': 'vsplit',
\}

" ? Popup window layout (75% of screen size, centered)
let g:fzf_layout = {
  \'window': {
    \'width': 0.75,
    \'height': 0.75,
    \'xoffset': 0.5,
    \'yoffset': 0.5,
    \'highlight': 'Todo',
  \}
\}

" ? Popup window color scheme
let g:fzf_colors = {
  \'fg': ['fg', 'Normal'],
  \'bg': ['bg', 'Normal'],
  \'hl': ['fg', 'Comment'],
  \'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \'bg+': ['bg', 'CursorLine', 'CursorColumn'],
  \'hl+': ['fg', 'Statement'],
  \'info': ['fg', 'PreProc'],
  \'border': ['fg', 'Ignore'],
  \'prompt': ['fg', 'Conditional'],
  \'pointer': ['fg', 'Exception'],
  \'marker': ['fg', 'Keyword'],
  \'spinner': ['fg', 'Label'],
  \'header': ['fg', 'Comment']
\}



" # Version Control System

" > https://github.com/tpope/vim-fugitive/blob/master/doc/fugitive.txt
nnoremap <silent> <leader><leader>ga :Git add<CR>
nnoremap <silent> <leader><leader>gc :Git commit<CR>
nnoremap <silent> <leader><leader>gst :Git status<CR>
nnoremap <silent> <leader><leader>gbr :Git branch<Space>
nnoremap <silent> <leader><leader>gco :Git checkout<Space>

" nnoremap <silent> <leader><leader>gd :Gdiff<CR>
" nnoremap <silent> <leader><leader>ge :Gedit<CR>
" nnoremap <silent> <leader><leader>gr :Gread<CR>
" nnoremap <silent> <leader><leader>gw :Gwrite<CR>

" nnoremap <silent> <leader>ggl :silent! Glog<CR>:bot copen<CR>
" nnoremap <silent> <leader>ggr :Ggrep<Space>
" nnoremap <silent> <leader>gm :Gmove<Space>
" nnoremap <silent> <leader>gdps :Dispatch! git push<CR>
" nnoremap <silent> <leader>gdpl :Dispatch! git pull<CR>



" # Class Viewer

" > https://github.com/preservim/tagbar#quickstart
nnoremap <silent> <leader>tb :TagbarToggle<CR>



" # Editor Config

" > https://github.com/editorconfig/editorconfig-vim#excluded-patterns
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
