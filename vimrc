set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'bling/vim-airline'

Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tomtom/tcomment_vim'
Plugin 'ecomba/vim-ruby-refactoring'

Plugin 'kien/rainbow_parentheses.vim'
Plugin 'chrisbra/colorizer'
Plugin 'gregsexton/matchtag'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'fatih/vim-go'

Plugin 'scrooloose/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"

set smartindent
set expandtab
set tabstop=2
set shiftwidth=2

set splitright
set splitbelow

set autoindent
set number
set modeline

set nobackup
set noswapfile

set wildmenu
set laststatus=2

"
" fugitive
"
nmap gs :Gstatus<cr>
nmap gl :Gllog<cr>
nmap gpu :Git push<cr>

"
" CtrlP
"

let g:ctrlp_map = '<c-p>'

"
" Tagbar
"
nmap <F8> :TagbarToggle<CR>

" Solarize
"
"

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

let g:airline#extensions#tabline#enabled = 1

let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0

map <C-n> :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['eslint']
let g:solarized_termcolors=256
