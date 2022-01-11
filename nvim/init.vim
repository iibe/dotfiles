" Global: Neovim release version
let g:release = 0.4

" Global: Path to configuration folder (~/.config/nvim)
let g:nvim = stdpath('config')

" Global: Path to vim-plug
let g:vimplug = g:nvim . '/autoload/plug.vim'

" Global: Path to plugin folder
let g:plugged = g:nvim . '/plugged'

" Global: Setup OS (Windows, Linux, Darwin, Posix, etc.)
if !exists("g:os")
  if has("win64") || has("win32") || has("win16")
    let g:os = "Windows"
  else
    let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif

function! s:Initialize() abort
  " Note: Install junegunn/vim-plug if it isn't found
  let l:repo = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  if empty(glob(g:vimplug))
    execute 'silent !curl -fLo ' . g:vimplug . ' --create-dirs ' . l:repo
  endif
endfunction

function! s:Afterwards() abort
  " Note: Run :PlugInstall if there are missing plugins
  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endfunction

function! s:Import(file) abort
  " Note: Import files from ./release-<major.minor>/<filename>
  let l:path = join([g:nvim, 'release-' . string(g:release), a:file], '/')
  execute 'source' . ' ' . l:path
endfunction

" Common: initialize system requisites
call s:Initialize()

" Common: import vim scripts
call s:Import('cli.vim')
call s:Import('gui.vim')
call s:Import('lsp.vim')
call s:Import('editor.vim')
call s:Import('keymap.vim')
call s:Import('plugin.get.vim')
call s:Import('plugin.set.vim')

" Common: check system health after initialization
call s:Afterwards()

" OS: Windows
" source ~/AppData/Local/nvim/release-0.4/cli.vim
" source ~/AppData/Local/nvim/release-0.4/gui.vim
" source ~/AppData/Local/nvim/release-0.4/lsp.vim
" source ~/AppData/Local/nvim/release-0.4/editor.vim
" source ~/AppData/Local/nvim/release-0.4/keymap.vim
" source ~/AppData/Local/nvim/release-0.4/plugin.get.vim
" source ~/AppData/Local/nvim/release-0.4/plugin.set.vim

" OS: Linux
" source ~/.config/nvim/release-0.4/cli.vim
" source ~/.config/nvim/release-0.4/gui.vim
" source ~/.config/nvim/release-0.4/lsp.vim
" source ~/.config/nvim/release-0.4/editor.vim
" source ~/.config/nvim/release-0.4/keymap.vim
" source ~/.config/nvim/release-0.4/plugin.get.vim
" source ~/.config/nvim/release-0.4/plugin.set.vim
