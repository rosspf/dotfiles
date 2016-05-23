"
" ~/.vimrc
"

" General
set nocompatible
set backspace=indent,eol,start
set scrolloff=2
set showmode
set magic
filetype on
filetype plugin on
filetype indent on

" Auto Completion
setlocal omnifunc=syntaxcomplete#Complete   " Autocompletion, engage!
set cot+=menuone    " Show preview of function prototype

" Fonts
syntax enable

try
    colorscheme simple_dark
catch
endtry

if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guifont=Courier_New:h12:cANSI
    colorscheme freya 
endif

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set fileformats=unix,dos,mac

" Tabs
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Indentation
set autoindent
set smartindent
set wrap

" Numbers
set number
set ruler
set cursorline

" Formatting
set nowrap

" Searching
set incsearch
set ignorecase
set smartcase
set hlsearch
set showmatch 

" Keymaps
nmap <leader>n :set invnumber

imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
