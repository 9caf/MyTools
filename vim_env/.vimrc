call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-scripts/molokai.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'

call plug#end()

set nocompatible
set cursorline
set ruler 
set nobackup
set expandtab  
set tabstop=4
set softtabstop=4
set shiftwidth=4  
set autoindent
set paste
set encoding=utf-8  
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,latin1  
set fileencoding=chinese 
syntax on
filetype plugin indent on
filetype plugin on
set nu
set t_Co=256
set autochdir
set backupcopy=yes
set ignorecase smartcase
set nowrapscan
set incsearch
set hlsearch
set showmode
set nofoldenable

let g:molokai_original = 1
colorscheme molokai

let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

