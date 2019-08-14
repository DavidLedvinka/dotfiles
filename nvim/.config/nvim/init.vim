"" PLUGINS

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
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
set wrap
set textwidth=79
set formatoptions=tcqrn1
set noshiftround
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Fold settings
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Show matching brackets
set showmatch

" Centered cursor
let &scrolloff=999
