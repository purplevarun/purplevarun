call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
call plug#end()
set nobackup
set noundofile
set noswapfile
set tabstop=4
set softtabstop=4
set expandtab
set splitright
set splitbelow
set number
set history=5
set mouse=a
set autoread
set autochdir
set smartindent 
set autoindent
set incsearch
set nohlsearch
set laststatus=2
set clipboard=unnamed
nnoremap y "+y
nnoremap p "+p
vnoremap d "_d
nnoremap <C-S> :w <CR>
nnoremap <C-Q> :q <CR>
nnoremap <C-P> :e $MYVIMRC <CR>
nnoremap <C-L> :source % <CR>
nnoremap <C-N> :tabnew <CR>
nnoremap <C-T> :NERDTreeToggle <CR>
let g:NERDTreeWinPos = "right"
let mapleader = ","
