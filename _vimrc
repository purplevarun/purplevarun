" sourcing
source $VIMRUNTIME\mswin.vim
source $VIMRUNTIME\vimrc_example.vim
"-----------------------------------------------------

" plugins
call plug#begin('~/stuff/vim-plugins')
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bluz71/vim-moonfly-colors'
call plug#end()
"-----------------------------------------------------

" notes
" install this font : https://github.com/be5invis/Iosevka
"-----------------------------------------------------

" settings
color moonfly
cd ~\Desktop\
set nobackup noundofile noswapfile autoread noexpandtab
set number splitright splitbelow nowrap tabstop=4 shiftwidth=4
set go= gfn=iosevka:h15:b gcr=a:blinkoff0
set autochdir history=5 laststatus=2 noshowmode
let mapleader = ","
"-----------------------------------------------------

" airline settings
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
"------------------------------------------------------

" keymaps
map <C-Q> :q <CR>
map `     :!start cmd <CR><CR>
map <C-P> :e $MYVIMRC <CR>
map <C-L> :source % <CR>
map / ,c<Space>
vnoremap d "_d
vnoremap <BS> "_d
inoremap <Home> <Esc><S-I>
inoremap <End> <Esc><S-A>
