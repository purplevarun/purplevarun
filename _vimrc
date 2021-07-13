

" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Remap a few keys for Windows behavior
source $VIMRUNTIME/mswin.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction
"---------------------------------------------------------------------------------
"start of my settings

cd ~\Desktop\
syntax on
set tabstop=8 shiftwidth=8 number statusline+=%F autoread
set autochdir splitright splitbelow nobackup noswapfile noundofile
set noshowmode laststatus=2 mouse=a ai si history=5 clipboard=unnamed
set gcr=a:blinkoff0 go= gfn=consolas:h15:b list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
vnoremap <BS> "_d
vnoremap d "_d
vnoremap y "+y
vnoremap p "+p
inoremap <Home> <Esc><S-I>
inoremap <End> <Esc><S-A>
map `     :!start cmd <CR><CR>
map <C-S> :w <CR>
map <C-B> :!cls && run % <CR><CR>
map <C-K> :!cls && run % < in<CR><CR>
map / ,c<Space>
map <C-G> :!gitter % <CR><CR>
map <C-H> :!pusher % <CR><CR>
map <C-Q> :q <CR>
map <C-P> :tabnew $MYVIMRC <CR>
let mapleader = ","
call plug#begin('~/.vim/plugged')
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/nerdcommenter'
Plug 'Jorengarenar/miniSnip'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'dracula/vim'
call plug#end()
colorscheme dracula
