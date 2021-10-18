call plug#begin(g:plugged)

" # Seamless Navigation
Plug 'christoomey/vim-tmux-navigator'

" # Color Themes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'overcache/NeoSolarized'

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

" # Language Server Protocol
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" # Programming Language: Typescript
Plug 'HerringtonDarkholme/yats.vim'

" # Programming Language: Go (golang)
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

call plug#end()
