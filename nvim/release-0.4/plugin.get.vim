call plug#begin(g:plugged)

" # Seamless Neovim-Tmux Navigation
Plug 'christoomey/vim-tmux-navigator'

" # Tmux status line
Plug 'edkolev/tmuxline.vim'

" # Language Server Protocol: VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" # Language Server Protocol: Go (golang)
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" # Editor Config
Plug 'editorconfig/editorconfig-vim'

" # Color Themes
Plug 'altercation/vim-colors-solarized'

" # Icons Themes
Plug 'ryanoasis/vim-devicons'

" # Start Page
Plug 'mhinz/vim-startify'

" # Status Bar Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" # File Explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" # Fuzzy Find Files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" # Version Control System
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" # Class Viewer
Plug 'preservim/tagbar'

call plug#end()
