"" PLUGINS

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
"Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'jpalardy/vim-slime'
Plug 'lervag/vimtex'
Plug 'jalvesaq/Nvim-R'
Plug 'chrisbra/csv.vim'
call plug#end()

"" AESTHETICS
let g:airline_powerline_fonts = 1
set termguicolors
colorscheme nord

"" SETTINGS

let mapleader = ","

set encoding=utf-8
set hidden
set wildmenu
set showcmd
set autoindent
set visualbell
set backspace=indent,eol,start

" File specific auto-identation and syntax
filetype indent plugin on
let python_highlight_all=1
syntax on

" Line Numbering
set number
set relativenumber

" Indentation Settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set smarttab

" Search Settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Wrap and Whitespace Settings
set wrap!
set textwidth=79
set formatoptions=cqrn1
set noshiftround
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Fold settings
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Show matching brackets
set showmatch

" Centered cursor
let &scrolloff=999

" Split Settings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Run Settings
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Disable swap files
    set noswapfile

" Enable persistent Undo
    set undofile

" set the undo directory (You have to make this!)
    set undodir=~/.vim/undodir

" Detect Python Virtual Environments
"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Slime Settings
let g:slime_target = "tmux"

" Latex Settings
let g:vimtex_view_method = 'zathura'

" R Settings
let R_assign = 0

" Julia Settings
let g:latex_to_unicode_auto = 1
