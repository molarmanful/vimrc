nn <SPACE> <nop>
let mapleader=' '

nn <Up> 5k
nn <Down> 6j
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
nn <leader>m :!make<cr>
vn <leader>y :w !clip.exe<cr><cr>gv:w! /mnt/c/Users/benji/paste.txt<cr>
nn <leader>p :r /mnt/c/Users/benji/paste.txt<cr>

nn <leader>rr :exe 'sp\|te' expand("%")<cr>
nn <leader>rc :exe 'sp\|te' expand("%:p:r")<cr>
nn <leader>rn :exe 'sp\|te node' expand("%")<cr>
nn <leader>rp :exe 'sp\|te python3' expand("%")<cr>
nn <leader>rP :exe 'sp\|te python' expand("%")<cr>

nn  :let @/=""<cr>
nn <bs> :let @/=""<cr>
cno mk. !mkdir -p <c-r>=expand("%:h")<cr>/

vn > >gv
vn < <gv
