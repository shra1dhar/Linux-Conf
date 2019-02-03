set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" PEP 8 standard for python development
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"Character encoding
set encoding=utf-8

"Syntax Checking and Highlighting 
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on

"Color Scheme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"For proper file tree
Plugin 'scrooloose/nerdtree'

"Super Searching
Plugin 'kien/ctrlp.vim'

"Line  numbering
set nu

"Git Integration
Plugin 'tpope/vim-fugitive'

"Powerline - Status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"System clipboard
set clipboard=unnamed

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1


" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
