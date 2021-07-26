source $VIMRUNTIME\mswin.vim
source $VIMRUNTIME\vimrc_example.vim
"--------------------------------------
call plug#begin('~/Documents/VIM/plugged')
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
call plug#end()
"--------------------------------------
cd ~\Desktop\
set nobackup noundofile noswapfile autoread noexpandtab
set number splitright splitbelow nowrap tabstop=4 shiftwidth=4
set guioptions= guifont=consolas:h12:b guicursor=a:blinkoff0
set autochdir history=5 laststatus=2 noshowmode
let mapleader = ","
"--------------------------------------
map <C-S> :w <CR>
map <C-Q> :q <CR>
map `     :!start cmd <CR><CR>
map <C-A> ggVG
map <C-P> :tabnew $MYVIMRC <CR>
map <C-L> :source % <CR>
map <C-B> :!cls & run % <CR><CR>
map <C-K> :!cls & run % < in <CR><CR>
map <C-G> :!gitter % <CR><CR>
map <C-H> :!pusher % <CR><CR>
map <C-F> :silent exec "!ft %" <CR>
map / ,c<Space>
"--------------------------------------
vnoremap d "_d
vnoremap <BS> "_d
inoremap <Home> <Esc><S-I>
inoremap <End> <Esc><S-A>
"--------------------------------------
