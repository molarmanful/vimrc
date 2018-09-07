source ~/vimrc/p.vim
source ~/vimrc/k.vim
source ~/vimrc/s.vim
set tgc
set background=dark
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
colo gruvbox
if filereadable(".vimexec")
  source .vimexec
endif
