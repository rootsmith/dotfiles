"Vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" #### PLUGIN DECLARATIONS START ####

" For GitHub repos, you specify plugins using the
" 'user/repository' format
" We could also add repositories with a ".git" extension

Plugin 'vim-airline/vim-airline.git'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-vividchalk.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'rking/ag.vim.git'
Plugin 'Shougo/neocomplete.vim.git'
Plugin 'hashivim/vim-terraform.git'
Plugin 'mustache/vim-mustache-handlebars.git'
Plugin 'saltstack/salt-vim.git'
Plugin 'othree/html5.vim.git' 
Plugin 'nvie/vim-flake8.git'

" #### PLUGIN DECLARATIONS END ####

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" 
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set encoding=utf-8 " Necessary to show unicode glyphs in Powerline
set term=ansi

if has("gui_running")
    colorscheme solarized
    set guifont=Source\ Code\ Pro\ Light\ for\ Powerline:h18
endif

let g:Powerline_symbols = 'fancy'
let mapleader=","
set number " show line numbers
set ruler
set colorcolumn=80 " better version of 80 column editing
highlight ColorColumn guibg=#592929
set incsearch " highlight as I search

set laststatus=2 " always show status line
let g:airline_powerline_fonts = 1

" PYTHON CONFIG
" #############
syntax enable " enable syntax highlighting
let python_highlight_all = 1


" Indentation that doesn't suck
set smartindent
set tabstop=4 " set tabs to have 4 spaces
set shiftwidth=4 " when using the >> or << commands, shift lines by 4 spaces
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set expandtab " expand tabs into spaces
set cursorline " show a visual line under the cursor's current line
set showmatch " show the matching part of the pair for [] {} and ()
set shiftround " round indent to multiple of 'shiftwidth'

" remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

" NERDTree key bindings
" #####################
map <C-n> :NERDTreeToggle<CR>

" NEOCOMPLETE CONFIG
" ##################

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

" NEOCOMPLETE CONFIG END
" ######################
