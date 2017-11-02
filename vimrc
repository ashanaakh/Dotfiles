set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'tomtom/tcomment_vim'
Plugin 'dracula/vim'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-unimpaired'
Plugin 'ap/vim-css-color'
Plugin 'itchyny/lightline.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'gregsexton/matchtag'

call vundle#end()            " required

filetype plugin indent on    " required

set hlsearch

" Make Vim more useful
set nocompatible
" " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed"

" Highlight current line
set cursorline

" Respect modeline in files
set modeline
set modelines=4

set smartindent
set expandtab
set tabstop=2
set shiftwidth=2

set splitright
set splitbelow

set backspace=indent,eol,start
set autoindent
set number

set nobackup
set noswapfile
set laststatus=2
set noshowmode

"
" CtrlP
"

let g:ctrlp_map = '<c-p>'

"
" Theme
"

" let g:solarized_termcolors=256
syntax enable
"set background=dark
"colorscheme solarized
color dracula
"
" Lightline
"

let g:lightline = {
      \ 'colorscheme': 'Dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly' ],
      \             [ 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo'],
      \               [ 'percent' ],
      \               [ 'fileformat' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

"
" Syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

map <Leader> <Plug>(easymotion-prefix)
map <C-n> :NERDTreeToggle<CR>
map <C-i> mzgg=G`z`

"
" Split Navigation
"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
