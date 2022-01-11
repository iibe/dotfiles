" # Language Server Protocol: CoC

" > https://github.com/neoclide/coc.nvim#example-vim-configuration
set encoding=utf-8
set hidden

" ? Some servers have issues with backup files
set nobackup nowritebackup

" ? Set command line size
set cmdheight=1

" ? Set autosuggestions popup menu size
set pumheight=8

" ? Improve UX by decreasing update time (default is 4000 ms)
set updatetime=300

" ? Don't pass messages to |ins-completion-menu|
set shortmess+=c

" ? Threat the dash-separated keyword as a text object
set iskeyword+=-

" ? Stop new line to be continuation of comment
set formatoptions-=cro

" ? Always show the sign column, otherwise it would shift the text each time diagnostics appear or become resolved. Disabled due to problems with vim-gitgutter.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

" ? Use Tab (or Shift+Tab) for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB> pumvisible()
  \ ? "\<C-n>"
  \ : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" ? Use `Ctrl+Space` to trigger completion
if has("nvim")
  inoremap <silent><expr> <C-Space> coc#refresh()
else
  inoremap <silent><expr> <C-@> coc#refresh()
endif

" ? Make <CR> auto-select the first completion item and notify CoC to format on ENTER (might be annoying in some cases)
" inoremap <silent><expr> <CR> pumvisible()
"   \ ? coc#_select_confirm()
"   \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" ? Use `[g` and `]g` to navigate diagnostics. Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" ? Set go-to navigation keys
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ? Use `K` to show documentation in preview window
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

" ? Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" ? Rename symbol
nmap <leader><leader>rn <Plug>(coc-rename)

" ? Format selected code
xmap <leader><leader>fs <Plug>(coc-format-selected)
nmap <leader><leader>fs <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Note: Setup formatexpr for specific filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Note: Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" ? Apply code action to the selected region. E.g. `;;asap` (CoC action selected around paragraph) for current paragraph.
xmap <leader><leader>as <Plug>(coc-codeaction-selected)
nmap <leader><leader>as <Plug>(coc-codeaction-selected)

" ? Apply code action to the current buffer
nmap <leader><leader>a <Plug>(coc-codeaction)

" ? Apply auto fix to problem on the current line
nmap <leader><leader>fc <Plug>(coc-fix-current)

" ? Map function and class text objects (requires `textDocument.documentSymbol` support from the language server)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" ? Remap <C-f> and <C-b> for scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll()
    \ ? coc#float#scroll(1)
    \ : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll()
    \ ? coc#float#scroll(0)
    \ : "\<C-b>"

  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll()
    \ ? "\<c-r>=coc#float#scroll(1)\<CR>"
    \ : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll()
    \ ? "\<c-r>=coc#float#scroll(0)\<CR>"
    \ : "\<Left>"

  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll()
    \ ? coc#float#scroll(1)
    \ : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll()
    \ ? coc#float#scroll(0)
    \ : "\<C-b>"
endif

" ? Use <C-s> for selections ranges (requires `textDocument/selectionRange` support of language server)
nmap <silent> <leader><leader>rs <Plug>(coc-range-select)
xmap <silent> <leader><leader>rs <Plug>(coc-range-select)

" ? Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocAction('format')

" ? Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" ? Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" ? Add Vim (Neovim) native statusline support. Note: Please see `:help coc-status` for integrations with external plugins that provide custom statusline (e.g. lightline.vim or vim-airline).
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" ? Mappings for `:CocList`
nnoremap <silent> <leader><leader>cld :CocList diagnostics<CR>
nnoremap <silent> <leader><leader>cle :CocList extensions<CR>
nnoremap <silent> <leader><leader>clm :CocList marketplace<CR>
nnoremap <silent> <leader><leader>clc :CocList commands<CR>
nnoremap <silent> <leader><leader>clo :CocList outline<CR>
nnoremap <silent> <leader><leader>cls :CocList -I symbols<CR>
nnoremap <silent> <leader><leader>cll :CocNext<CR>
nnoremap <silent> <leader><leader>clh :CocPrev<CR>
nnoremap <silent> <leader><leader>clr :CocListResume<CR>

" ? CoC extension list
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-docker',
  \ 'coc-emmet',
  \ 'coc-html',
  \ 'coc-jest',
  \ 'coc-json',
  \ 'coc-marketplace',
  \ 'coc-pyright',
  \ 'coc-sql',
  \ 'coc-styled-components',
  \ 'coc-svg',
  \ 'coc-toml',
  \ 'coc-tsserver',
  \ 'coc-webpack',
  \ 'coc-xml',
  \ 'coc-yaml',
\ ]

" ? Run Prettier, ESLint (or TSLint) if they're installed in `node_modules` folder
if isdirectory('./node_modules/prettier') && isdirectory('./.prettierrc')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules/eslint') && isdirectory('./.eslintrc')
  let g:coc_global_extensions += ['coc-eslint']
endif

if isdirectory('./node_modules/tslint') && isdirectory('./.eslintrc')
  let g:coc_global_extensions += ['coc-tslint']
endif

" ? Fix syntax out-of-sync highlighting in large files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" ? Add JSON comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+



" # Language Support: Golang

" > https://github.com/golang/tools/blob/master/gopls/doc/vim.md#cocnvim
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" ? Syntax highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" ? Highlight variables you cursor is on
let g:go_same_ids = 0

" ? Auto format and imports on save
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

" ? Status line types/signatures
let g:go_auto_type_info = 1

" ? Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" ? Key bindings for build, run, test, etc.
autocmd FileType go nmap <leader>gob :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>gor <Plug>(go-run)
autocmd FileType go nmap <leader>got <Plug>(go-test)

" ? Disable `:GoDef` shortcut (CoC already have it)
let g:go_def_mapping_enabled = 0



" # Config Support: .editorconfig

" > https://github.com/editorconfig/editorconfig-vim#excluded-patterns
