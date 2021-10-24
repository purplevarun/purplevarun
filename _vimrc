" for windows
color torte 
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()
cd ~\Desktop
set nobackup noundofile noswapfile incsearch nohlsearch guioptions= guifont=FixedSys:h15 guicursor:a:blinkoff0 wrap linebreak laststatus=2 scrolloff=8 autochdir autoread autoindent smartindent history=5 splitright splitbelow tabstop=4 softtabstop=4 expandtab
let mapleader = ","
nnoremap <C-S> :w <CR>
nnoremap <C-Q> :q <CR>
nnoremap <C-L> :source % <CR>
nnoremap <C-P> :e $MYVIMRC <CR>
nnoremap p "+p
vnoremap y "+y
vnoremap d "_d