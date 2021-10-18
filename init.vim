source $VIMRUNTIME/mswin.vim
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'morhetz/gruvbox'
call plug#end()
color gruvbox
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
set clipboard=unnamedplus
nnoremap <C-Q> :q <CR>
vnoremap <backspace> "_d
nnoremap <C-P> :e $MYVIMRC <CR>
nnoremap <C-L> :source % <CR>
nnoremap <C-N> :tabnew <CR>
nnoremap <C-T> :NERDTreeToggle <CR>
let g:NERDTreeWinPos = "right"
let mapleader = ","
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
