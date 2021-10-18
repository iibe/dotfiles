" ? Global: Neovim release major and minor versions
let g:release = 0.4

" ? Global: Standart path of configuration folder
let g:nvim = stdpath('config')

" ? Global: Path to vim-plug
let g:vimplug = g:nvim . '/autoload/plug.vim'

" ? Global: Path to folder with plugins
let g:plugged = g:nvim . '/plugged'

" ? Global: Setup OS (Windows, Linux, Darwin, etc.)
if !exists("g:os")
  if has("win64") || has("win32") || has("win16")
      let g:os = "Windows"
  else
      let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif



function! s:Initialize() abort
  " Install vim-plug if it isn't found
  let l:repo = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  if empty(glob(g:vimplug))
    execute 'silent !curl -fLo ' . g:vimplug . ' --create-dirs ' . l:repo
  endif
endfunction

function! s:Afterwards() abort
  " Run :PlugInstall if there are missing plugins
  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    autocmd VimEnter * PlugInstall --sync
    autocmd VimEnter * source $MYVIMRC
  endif
endfunction

function! s:Import(file) abort
  " Import from ./release-<major.minor>/<filename>
  let l:path = join([g:nvim, 'release-' . string(g:release), a:file], '/')
  execute 'source ' . l:path
endfunction



" ? Initialize system requsites
call s:Initialize()

" ? Import vim-script files (using custom function)
call s:Import('cli.vim')
call s:Import('gui.vim')
call s:Import('lsp.vim')
call s:Import('keymap.set.vim')
call s:Import('plugin.get.vim')
call s:Import('plugin.set.vim')

" > Windows
"source ~/AppData/Local/nvim/release-0.4/cli.vim
"source ~/AppData/Local/nvim/release-0.4/gui.vim
"source ~/AppData/Local/nvim/release-0.4/lsp.vim
"source ~/AppData/Local/nvim/release-0.4/keymap.set.vim
"source ~/AppData/Local/nvim/release-0.4/plugin.get.vim
"source ~/AppData/Local/nvim/release-0.4/plugin.set.vim

" > Linux
"source ~/.config/nvim/release-0.4/cli.vim
"source ~/.config/nvim/release-0.4/gui.vim
"source ~/.config/nvim/release-0.4/lsp.vim
"source ~/.config/nvim/release-0.4/keymap.set.vim
"source ~/.config/nvim/release-0.4/plugin.get.vim
"source ~/.config/nvim/release-0.4/plugin.set.vim

" ? Check system health after initialization
call s:Afterwards()
