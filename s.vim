command Wsu SudoWrite

au BufNewFile,BufRead *.tex setf tex
au BufNewFile,BufRead *.md,*.txt setl fo=1|setl wrap|setl linebreak|nnoremap j gj|nnoremap k gk
au BufNewFile,BufRead *.pug setf pug
au BufNewFile,BufRead *.styl setf stylus
au BufNewFile,BufRead .vimexec setf vim
au BufWritePost *.pegjs silent !pegjs -o %:r-peg.js % >/dev/null &
au BufWritePost *.pug silent !pug % >/dev/null &
au BufWritePost *.styl silent !stylus -u autoprefixer-stylus -c % >/dev/null &
au BufWritePost *.f silent !gfortran % -o %:r -ffree-form >/dev/null &
au BufWritePost *.ne silent !nearleyc -o %:r-ne.js % >/dev/null &
au InsertEnter * setl nornu|setl nu
au InsertLeave * setl nonu|setl rnu
au User GoyoEnter setl rnu

set t_Co=16
set shell=/bin/zsh
set showcmd
set rnu
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
let g:indentLine_char='│'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled=1
