nn <SPACE> <nop>
let mapleader=' '

nn <Up> 5k
nn <Down> 5j
nn <Left> 5h
nn <Right> 5l
nn <S-Up> 10k
nn <S-Down> 10j
nn <S-Left> 10h
nn <S-Right> 10l

nn - o<esc>k
nn _ O<esc>j
ino jk <esc>
ino kj <esc>

nn <leader>g :Goyo<cr>
nn <leader>n :NERDTreeToggle<cr>
nn <leader>s :setl spell! spelllang=en_us<cr>
nn <leader>l :setl nu!\|setl rnu!<cr>
nn <leader>t :ter ++close<cr>

nn  :let @/=""<cr>
nn <bs> :let @/=""<cr>
cno mk. !mkdir -p <c-r>=expand("%:h")<cr>/

vn > >gv
vn < <gv
