call plug#begin(g:plugged)

" # Seamless Neovim-Tmux Navigation
Plug 'christoomey/vim-tmux-navigator'

" # Tmux Status Line
Plug 'edkolev/tmuxline.vim'

" # Language Server Protocol
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" # Language Support: Go
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" # Language Support: .editorconfig
Plug 'editorconfig/editorconfig-vim'

" # Start Page
Plug 'mhinz/vim-startify'

" # Auto Pairs
Plug 'jiangmiao/auto-pairs'

" # Change Surround
Plug 'tpope/vim-surround'

" # Comments
Plug 'tpope/vim-commentary'

" # WakaTime Statistic
Plug 'wakatime/vim-wakatime'

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

call plug#end()
