source $VIMRUNTIME/vimrc_example.vim
"color darkblue
cd ~\Desktop\
set tabstop=4 shiftwidth=4 noexpandtab
set statusline+=%F autoread number autochdir
set autochdir tw=0 wm=0 linebreak
set autochdir splitright splitbelow
set nobackup noswapfile noundofile nowrap
set noshowmode laststatus=2 mouse=a
set autoindent smartindent history=5
set clipboard=unnamed gcr=a:blinkoff0
set go= gfn=consolas:h15:b list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
vnoremap <BS> "_d
vnoremap d "_d
vnoremap y "+y
vnoremap p "+p
inoremap <Home> <Esc><S-I>
inoremap <End> <Esc><S-A>
inoremap <C-S> S
inoremap <C-Z> <Esc><C-Z>gi
map `     :!start cmd <CR><CR>
map <C-F> :silent exec "!ft %" <CR>
map <C-S> :w <CR>
map <C-A> ggVG
map <C-Z> u
map <C-B> :!run % <CR><CR>
map <C-Q> :q <CR>
map <C-K> :!run % < in<CR><CR>
map / ,c<Space>
map <C-G> :!gitter % <CR><CR>
map <C-H> :!pusher % <CR><CR>
map <C-P> :tabnew $MYVIMRC <CR>
let mapleader = ","
call plug#begin('~/.vim/plugged')
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'vim-airline/vim-airline'
Plug 'uiiaoo/java-syntax.vim'
Plug 'vim-python/python-syntax'
call plug#end()
