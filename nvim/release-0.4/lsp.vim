" # Language Server Protocol

" > https://github.com/neoclide/coc.nvim#example-vim-configuration
set encoding=utf-8
set hidden

" ? Some servers have issues with backup files
set nobackup
set nowritebackup

" ? More space for displaying messages
set cmdheight=2

" ? Improve UX by increasing update time (default is 4000 ms)
set updatetime=300

" ? Don't pass messages to |ins-completion-menu|
set shortmess+=c

" ? Always show the signcolumn, otherwise it would shift the text each time diagnostics appear or become resolved
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" ? Use TAB for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" ? Use Ctrl + Space to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-Space> coc#refresh()
else
  inoremap <silent><expr> <C-@> coc#refresh()
endif

" ? COC extension list
let g:coc_global_extensions = ['coc-marketplace', 'coc-tsserver', 'coc-json', 'coc-html', 'coc-css']

" ? Disable LSP feature in ALE (COC already have it)
let g:ale_disable_lsp = 1

" ? Format on save feature in ALE
let g:ale_fix_on_save = 1

" ? ALE fixers list
let b:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'javascript': ['prettier'],
\ }

" ? Trigger completion keybinding
nnoremap <silent> <leader>ac coc#refresh()<CR>

