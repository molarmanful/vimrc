com Wsu SudoWrite

au BufNewFile,BufRead *.tex setf tex
au BufNewFile,BufRead *.md,*.txt setl fo=1
  \|setl wrap
  \|setl linebreak
  \|setl dict+=/usr/share/dict/words

au BufNewFile,BufRead *.md Goyo
  \|ino <buffer> ., ...<space>
  \|ino <buffer> , ,<space>
  \|ino <buffer> . .<space>
  \|ino <buffer> ! !<space>
  \|ino <buffer> ? ?<space>
  \|ino <buffer> : :<space>
  \|ino <buffer> ; ;<space>
  \|ino <buffer> .,<cr> ...<cr>
  \|ino <buffer> ,<cr> ,<cr>
  \|ino <buffer> .<cr> .<cr>
  \|ino <buffer> !<cr> !<cr>
  \|ino <buffer> ?<cr> ?<cr>
  \|ino <buffer> :<cr> :<cr>
  \|ino <buffer> ;<cr> ;<cr>
  \|ino <buffer> .,<bs> ...
  \|ino <buffer> ,<bs> ,
  \|ino <buffer> .<bs> .
  \|ino <buffer> !<bs> !
  \|ino <buffer> ?<bs> ?
  \|ino <buffer> :<bs> :
  \|ino <buffer> ;<bs> ;

au BufNewFile,BufRead *.pug setf pug
au BufNewFile,BufRead *.styl setf stylus
au BufNewFile,BufRead .vimexec setf vim
au BufWritePost *.pegjs silent !pegjs -o %:r-peg.js % >/dev/null &
au BufWritePost *.pug silent !pug % >/dev/null &
au BufWritePost *.styl silent !stylus -u autoprefixer-stylus -c % >/dev/null &

set shell=/bin/zsh
set showcmd
set nowrap
set wildmode=longest:full,list:full
set hlsearch
set incsearch
set wrapscan
set expandtab
set shiftwidth=2
set softtabstop=2
set cul
set rnu
set fillchars=vert:║
set statusline=\ %t\ %h%m%r%y%=%c,%l/%L\ 
set splitright
set splitbelow
set ttimeoutlen=100
set hidden
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set cpt+=k
set so=999

let NERDTreeShowHidden=1
let g:markdown_enable_spell_checking = 0

let g:AutoPairsFlyMode=1

let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"
