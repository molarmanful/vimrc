com Wsu SudoWrite

au BufNewFile,BufRead *.tex setf tex
au BufNewFile,BufRead *.md,*.txt setl fo=1
  \|setl wrap
  \|setl linebreak
  \|setl dict+=/usr/share/dict/words

au BufNewFile,BufRead *.pug setf pug
au BufNewFile,BufRead *.styl setf stylus
au BufNewFile,BufRead .vimexec setf vim
au BufWritePost *.pegjs !pegjs -o %:r-peg.js %
au BufWritePost *.pug !pug %
au BufWritePost *.styl !stylus -u autoprefixer-stylus -c %

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
set noshowmode

let g:lightline={
\ 'colorscheme':'gruvbox',
\ 'active':{
\   'left':[['mode','paste'],['readonly','filename','modified']],
\   'right':[['lineinfo'],['percent'],['fileformat','fileencoding','filetype','hexvalue']]
\ },
\ 'component':{
\   'hexvalue':'0x%B'
\ }
\}

let g:indentLine_char='│'
let NERDTreeShowHidden=1
let g:markdown_enable_spell_checking = 0
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_python_python_exec = 'python3'

let g:AutoPairsFlyMode=1

let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"
