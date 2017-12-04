" Get out of VI's compatible mode..
set nocompatible

" Sets how many lines of history VIM has to remember
set history=700

" switch syntax highlighting on
syntax on

" Set to auto read when a file is changed from the outside
set autoread

" save when changing buffer
set autowrite

filetype off                  " required

filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme desert

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface & Display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set scroll offset
set scrolloff=5

" Show the line and column number of the cursor position, separated by a comma
set ruler

" Turn on wild menu
set wildmenu
set wildmode=longest:full

" change buffer without saving
set hid

" set backspace
set backspace=indent,eol,start

" Ignore case in search patterns.
set ignorecase
set smartcase

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" While typing a search command, show where the pattern, as it was typed so far, matches.
set incsearch

" Set magic on, for regular expressions
set magic

" When a bracket is inserted, briefly jump to the matching one
set showmatch
set matchtime=2

" no sound on errors
set noerrorbells
set novisualbell

" The value of this option influences when the last window will have a status line
set laststatus=2    " always show the statue line

" line number
set number

""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab   "Use the appropriate number of spaces to insert a <Tab>.
"set smarttab    "set smarttab, at the start of line use shiftwide and others tabstop

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936,latin1
set termencoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutoCmd
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    "auto read vimrc when it refreshed
    autocmd! bufwritepost .vimrc source ~/.vimrc

    "自动回到上次打开的位置
    autocmd! BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

endif " has(autocmd)

" 保存自动删除行位空格
autocmd BufWritePre * :%s/\s\+$//e

