call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'chrisbra/SudoEdit.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'wgurecky/vimSum'
Plug 'Yggdroot/indentLine'
Plug 'vim-syntastic/syntastic'
Plug 'mattn/emmet-vim'

Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'alunny/pegjs-vim', {'for': 'pegjs'}
Plug 'digitaltoad/vim-pug', {'for': 'pug'}
Plug 'wavded/vim-stylus', {'for': 'stylus'}
Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}
Plug 'elixir-editors/vim-elixir', {'for':'elixir'}
Plug 'neovimhaskell/haskell-vim', {'for':'haskell'}
Plug 'jdonaldson/vaxe', {'for':['haxe','hxml']}
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'gabrielelana/vim-markdown', {'for': 'markdown'}
call plug#end()
