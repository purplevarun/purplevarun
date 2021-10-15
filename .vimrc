" settings
set encoding=utf-8
syntax on
filetype on
set noundofile nobackup noswapfile
set number nowrap noexpandtab hidden
set laststatus=2 noerrorbells nohlsearch
set autoindent smartindent incsearch
set autochdir history=5 mouse=a noshowmode
set splitright splitbelow autoread
set scrolloff=8 background=dark
" -------------------------------------------------

" plugins
call plug#begin()
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
" -------------------------------------------------

" config
color gruvbox
let mapleader = ","
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'
nnoremap <C-Q> :q <CR>
nnoremap <C-S> :w <CR>
nnoremap <C-L> :so % <CR>
nnoremap <C-P> :e $MYVIMRC <CR>
vnoremap y "+y
nnoremap p "+p
vnoremap d "_d
vnoremap <Backspace> "_d
" -------------------------------------------------
