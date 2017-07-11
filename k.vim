nnoremap <SPACE> <nop>
let mapleader=' '

inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <M-f> <C-o>W
inoremap <M-b> <C-o>B
inoremap <C-d> <C-o>x
inoremap <M-d> <C-o>daw
inoremap <C-k> <C-o>D
inoremap <C-y> <C-o>p
inoremap <C-x><C-s> <Esc>:w<cr>a
inoremap <C-x><C-c> <Esc>:q!<cr>

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

nnoremap <leader>g :Goyo<cr>
nnoremap <leader>n :NERDTreeToggle<cr>

nnoremap  :let @/=""<cr>
nnoremap <bs> :let @/=""<cr>
cnoremap mk. !mkdir -p <c-r>=expand("%:h")<cr>/

vnoremap > >gv
vnoremap < <gv
