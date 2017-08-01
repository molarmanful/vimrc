nnoremap <SPACE> <nop>
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
inoremap jk <esc>
inoremap kj <esc>

nnoremap <leader>g :Goyo<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>s :setl spell! spelllang=en_us<cr>
nnoremap <leader>l :setl nu!\|setl rnu!<cr>
nnoremap <leader>t :term

nnoremap  :let @/=""<cr>
nnoremap <bs> :let @/=""<cr>
cnoremap mk. !mkdir -p <c-r>=expand("%:h")<cr>/

vnoremap > >gv
vnoremap < <gv
