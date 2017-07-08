nnoremap <SPACE> <Nop>
let mapleader=' '

nnoremap <Up> 5k
nnoremap <Down> 5j
nnoremap <Left> 5h
nnoremap <Right> 5l
nnoremap <S-Up> 10k
nnoremap <S-Down> 10j
nnoremap <S-Left> 10h
nnoremap <S-Right> 10l

nnoremap - o<esc>k
nnoremap _ O<esc>j
nnoremap WW :q!<cr>
inoremap jk <esc>
inoremap kj <esc>
vnoremap jk <esc>
vnoremap kj <esc>

nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>g :Goyo<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
vnoremap <leader>c :!pbcopy<cr>u
nnoremap <leader>c :.!pbcopy<cr>u
nnoremap <leader>p :r !pbpaste<cr>

nnoremap  :let @/=""<cr>
nnoremap <BS> :let @/=""<cr>
cnoremap mk. !mkdir -p <c-r>=expand("%:h")<cr>/

vnoremap > >gv
vnoremap < <gv
