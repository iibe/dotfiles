call plug#begin(g:plugged)

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
Plug 'airblade/vim-rooter'

" # Code Explorer
Plug 'preservim/tagbar'

" # Version Control System 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" # Terminal Multiplexer
" Plug 'christoomey/vim-tmux-navigator'

" # Comments
" Plug 'preservim/nerdcommenter'


" # Programming Language: Pack
Plug 'sheerun/vim-polyglot'

" # Programming Language: Syntax Analyzer
Plug 'neoclide/coc.nvim', {'branch': 'release'} 

" # Programming Language: Typescript 
Plug 'HerringtonDarkholme/yats.vim'

" # Programming Language: Rust 
Plug 'rust-lang/rust.vim'

call plug#end()
