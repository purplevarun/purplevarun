" settings
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
syntax on
filetype on
set noundofile nobackup noswapfile
set number nowrap noexpandtab hidden
set laststatus=2 noerrorbells nohlsearch
set autoindent smartindent incsearch
set autochdir history=5 mouse=a noshowmode
set splitright splitbelow autoread
set scrolloff=8 background=dark
set go= gcr=a:blinkoff0 gfn=consolas:h12
" -------------------------------------------------

" plugins
call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
call plug#end()
" -------------------------------------------------

" config
color dracula
let mapleader = ","
let g:airline_powerline_fonts = 1
nnoremap <C-Q> :q <CR>
nnoremap <C-S> :w <CR>
nnoremap <C-N> :tabnew <CR>
nnoremap <C-P> :e $MYVIMRC <CR>
nnoremap <C-L> :source % <CR>
vnoremap y "+y
nnoremap p "+p
vnoremap d "_d
vnoremap <Backspace> "_d
" -------------------------------------------------
