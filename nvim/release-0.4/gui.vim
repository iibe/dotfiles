" ? Set GUI in fullscreen mode
" call rpcnotify(0, 'Gui', 'WindowMaximized', 1)

" ? Hide default GUI tabline
" autocmd VimEnter * GuiTabline 0

" ? Hide default GUI autocompletion menu
" autocmd VimEnter * GuiPopupmenu 0



" # Icons Themes

" set termguicolors

" ? Powerline-patched font
" > https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts
" > https://github.com/powerline/fonts
" set guifont=Fira\ Code:h10
"
" ? Set font and suppress 'Font reports bad fixed pitch metrics' message
" autocmd VimEnter * GuiFont! Fira\ Code:h10