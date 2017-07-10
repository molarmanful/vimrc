command Wsu SudoWrite

au BufNewFile,BufRead *.md setlocal wrap
au BufNewFile,BufRead *.txt setlocal wrap
au BufNewFile,BufRead *.pug setf pug
au BufNewFile,BufRead *.styl setf stylus
au BufNewFile,BufRead .vimexec setf vim
au BufWritePost *.pegjs silent !pegjs -o %:r-peg.js % >/dev/null &
au BufWritePost *.pug silent !pug % >/dev/null &
au BufWritePost *.styl silent !stylus -u autoprefixer-stylus -c % >/dev/null &
au BufWritePost *.f silent !gfortran % -o %:r -ffree-form >/dev/null &
au BufWritePost *.ne silent !nearleyc -o %:r-ne.js % >/dev/null &
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
