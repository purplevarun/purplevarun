" my settings - varun
call plug#begin('~/Documents/VIM/plugged')
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
call plug#end()

cd ~\Desktop\
set nobackup noundofile noswapfile autoread noexpandtab
set number splitright splitbelow nowrap tabstop=4 shiftwidth=4
set guioptions=m guifont=consolas:h12:b guicursor=a:blinkoff0
set smartindent autoindent autochdir backspace=indent,eol,start
set history=5 ruler laststatus=2 statusline=%F noshowmode
set clipboard=unnamed mouse=a
let mapleader = ","
syntax on filetype on

" normal mode mapping
nnoremap <C-S> :w <CR>
nnoremap <C-Q> :q <CR>
nnoremap `     :!start cmd <CR><CR>
nnoremap <C-A> ggVG
nnoremap y "+y
nnoremap p "+p
nnoremap d "_d
nnoremap <C-Z> U
nnoremap <C-P> :tabnew $MYVIMRC <CR>
nnoremap <C-L> :source % <CR>
nnoremap <C-B> :!cls & run % <CR><CR>
nnoremap <C-K> :!cls & run % < in <CR><CR>
nnoremap <C-G> :!gitter % <CR><CR>
nnoremap <C-H> :!pusher % <CR><CR>
nnoremap <C-F> :silent exec "!ft %" <CR>

" visual mode mapping
vnoremap y "+y
vnoremap p "+p
vnoremap d "_d
vnoremap <BS> "_d

" insert mode mapping
inoremap <Home> <Esc><S-I>
inoremap <End> <Esc><S-A>
