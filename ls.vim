command Wsu SudoWrite

au BufNewFile,BufRead *.md setlocal wrap
au BufNewFile,BufRead *.txt setlocal wrap
au BufNewFile,BufRead *.pug setf pug
au BufNewFile,BufRead *.styl setf stylus
au BufWritePost *.pegjs silent !pegjs -o %:r-peg.js % >/dev/null &
au BufWritePost *.pug silent !pug % >/dev/null &
au BufWritePost *.styl silent !stylus -u autoprefixer-stylus -c % >/dev/null &
au BufWritePost *.f silent !gfortran % -o %:r -ffree-form >/dev/null &
au BufWritePost *.ne silent !nearleyc -o %:r-ne.js % >/dev/null &
au BufWritePost *.applescript silent !osacompile -o %:r.scpt % >/dev/null &
au User GoyoEnter NERDTreeClose

set t_Co=16
set shell=/bin/zsh
set showcmd
set nu
set nowrap
set wildmode=longest:full,list:full
set hlsearch
set incsearch
set wrapscan
set mouse=a
set expandtab
set shiftwidth=2
set softtabstop=2
set cul
set fillchars=vert:\ 
set statusline=%t%h%m%r%y%=%c,%l/%L\ 
set laststatus=2
set splitright
set splitbelow
let NERDTreeShowHidden=1

if system('which_term')=~'konsole'
  let &t_SI = "\e]50;CursorShape=1\x7"
  let &t_SR = "\e]50;CursorShape=2\x7"
  let &t_EI = "\e]50;CursorShape=0\x7"
else
  let &t_SI = "\e[6 q"
  let &t_SR = "\e[4 q"
  let &t_EI = "\e[2 q"
endif

if exists('$TMUX')
  let &t_SI = "\ePtmux;\e" . &t_SI . "\e\\"
  let &t_SR = "\ePtmux;\e" . &t_SR . "\e\\"
  let &t_EI = "\ePtmux;\e" . &t_EI . "\e\\"
endif
