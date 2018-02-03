" 设置vim-plugin插件，开始运行 
call plug#begin('~/.vim/plugged')
	Plug 'https://github.com/vim-scripts/molokai.git'
	Plug 'https://github.com/Valloric/YouCompleteMe.git'
	Plug 'https://github.com/scrooloose/nerdtree.git'
"	Plug 'https://github.com/vim-airline/vim-airline.git'
call plug#end()

" 关闭 vi 兼容模式 
set nocompatible

" 突出显示当前行
set cursorline

" 打开状态栏标尺
set ruler 

" 覆盖文件时不备份
set nobackup

" 开启新行时使用智能自动缩进  
set expandtab  

" 设定tab长度为4
set tabstop=4

" 使得按退格键时可以一次删掉4个空格
set softtabstop=4

" 设定<<和>>命令移动时的宽度为4
set shiftwidth=4  

" 自动缩进
set autoindent

" 设置粘贴保留原有格式
set paste

" 设置VIM编码格式
set encoding=utf-8  

" 编码的自动识别
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1  

" 设VIM置文件读取编码格式
set fileencoding=chinese 

" 自动语法高亮
syntax on

" filetype---- 文件类型检测
" indent：不同类型文件有不同的方式，比如Python要求使用4个空格作为缩进，而Html使用2个空格作为缩进，那么indent就可以为不同文件类型选择合适的缩进方式。你可以在Vim的安装目录的indent目录下看到定义了很多缩进相关的脚本。
filetype on
filetype indent on 
filetype plugin on 
filetype plugin indent on

" 设置突出行号 
set number

" 修改vim 为256色
set t_Co=256

" 自动切换当前目录为当前文件所在的目录
set autochdir

" 设置备份时的行为为覆盖
set backupcopy=yes

" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase

" 禁止在搜索到文件两端时重新搜索
set nowrapscan

" 输入搜索内容时就显示搜索结果
set incsearch

" 搜索时高亮显示被找到的文本
set hlsearch

" 开启新行时使用智能自动缩进
set smartindent

" 左下角显示当前Vim模式
set showmode

" 不设置代码折叠
set nofoldenable

" 设置colors配色方案
let g:molokai_original = 1
colorscheme molokai

" YouCompleteMe自动补全，语法检测
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" NERDTree插件以树状方式浏览系统中的文件和目录
" :ERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree
" o 打开关闭文件或者目录         t 在标签页中打开
" T 在后台标签页中打开           ! 执行此文件
" p 到上层目录                   P 到根目录
" K 到第一个节点                 J 到最后一个节点
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录             R 递归刷新当前根目录"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" airline高亮设置
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
