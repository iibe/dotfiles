" # Language Server Protocol: VS Code

" > https://github.com/neoclide/coc.nvim#example-vim-configuration
set encoding=utf-8
set hidden

" ? Some servers have issues with backup files
set nobackup
set nowritebackup

" ? More space for displaying messages
set cmdheight=2

" ? Improve UX by increasing update time (default is 4000 ms)
set updatetime=500

" ? Don't pass messages to |ins-completion-menu|
set shortmess+=c

" ? Always show the signcolumn, otherwise it would shift the text each time diagnostics appear or become resolved
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

" ? Use TAB for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB> pumvisible()
  \ ? "\<C-n>"
  \ : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" ? Use `Ctrl + Space` to trigger completion
if has("nvim")
  inoremap <silent><expr> <C-Space> coc#refresh()
else
  inoremap <silent><expr> <C-@> coc#refresh()
endif

" ? Make <CR> auto-select the first completion item and notify coc.nvim to format on enter
" ? Note: <CR> could be remapped by other Vim plugin
inoremap <silent><expr> <CR> pumvisible()
  \ ? coc#_select_confirm()
  \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" ? Use `[g` and `]g` to navigate diagnostics
" ? Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" ? Set go-to navigation keys
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ? Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" ? Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" ? COC extension list
let g:coc_global_extensions = [
  \'coc-marketplace',
  \'coc-tsserver',
  \'coc-html',
  \'coc-css',
  \'coc-json',
  \'coc-toml',
  \'coc-pairs'
\]

" ? Activate Prettier of ESLint if its has been installed in node_modules
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" ? Fix syntax out-of-sync highlighting in large files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" ? Add JSON comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+



" # Language Server Protocol: Go (golang)

" > https://github.com/golang/tools/blob/master/gopls/doc/vim.md#cocnvim
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" ? Auto-format and add missing imports on save
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
