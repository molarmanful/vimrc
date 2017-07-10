nnoremap <SPACE> <Nop>
let mapleader=' '

inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <Esc>f <C-o>W
inoremap <Esc>b <C-o>B
inoremap <C-k> <C-o>D
inoremap <C-y> <C-o>p
inoremap <C-x><C-s> <Esc>:w<CR>a

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
inoremap jk <esc>
inoremap kj <esc>

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
