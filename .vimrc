call pathogen#infect()
call pathogen#helptags()

set nocompatible " Disable vi-compatibility
set encoding=utf-8 " Necessary to show unicode glyphs in Powerline

set term=ansi
syntax on

if has("gui_running")
    colorscheme vividchalk "Also mayansmoke - toggle with :colorscheme <color>
endif

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

"Python highlighting extras
let python_highlight_all = 1

"Python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"Do syntax and PEP8 checks on write (otherwise press <F8>)
autocmd FileType python map <buffer> <F8> :call Flake8()<CR>
autocmd BufWritePost *.py call Flake8()

map P :TlistToggle

if has("gui_running")
    set guifont=SourceCodePro-Regular
    "But the following for Powerline
    "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
endif

let g:Powerline_symbols = 'fancy'
