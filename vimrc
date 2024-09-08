set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'kien/rainbow_parentheses.vim'
Plugin 'dracula/vim'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-unimpaired'
Plugin 'itchyny/lightline.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'gregsexton/matchtag'
Plugin 'rust-lang/rust.vim'
Plugin 'tomlion/vim-solidity'
Plugin 'fatih/vim-go'

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

" set smartindent
set expandtab
set tabstop=2
set shiftwidth=2

set splitright
set splitbelow

set backspace=indent,eol,start
set autoindent
set number
set number relativenumber

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

"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized
syntax enable

map <C-n> :NERDTreeToggle<CR>
