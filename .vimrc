call pathogen#infect()

set nocompatible " Disable vi-compatibility
set encoding=utf-8 " Necessary to show unicode glyphs in Powerline

set term=ansi
syntax on
colorscheme mayansmoke
filetype on " enables filetype detection
filetype plugin on " enables filetype specific plugins

"Indentation that doesn't suck
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set number
set ruler

"The uncool status line is back with a vengeance
set statusline=%F%m%r%h%w\ [%{&ff}-%Y]\ \ %l,%v\ -\ %p%%\ of\ %L\ lines
set laststatus=2

set incsearch "hilight as I search

set colorcolumn=80 "better version of 80 column editing
highlight ColorColumn guibg=#592929

let mapleader=","

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

map P :TlistToggle

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:Powerline_symbols = 'fancy'
