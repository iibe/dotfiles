call plug#begin(g:plugged)

" # Seamless Neovim-Tmux Navigation
Plug 'christoomey/vim-tmux-navigator'

" # Language Server Protocol: VS Code
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" # Language Server Protocol: Go (golang)
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" # Color Themes
Plug 'altercation/vim-colors-solarized'

" # Icons Themes
Plug 'ryanoasis/vim-devicons'

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

" # Editor Config
Plug 'editorconfig/editorconfig-vim'

call plug#end()
