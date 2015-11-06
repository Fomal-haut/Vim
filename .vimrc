syn on   		"语法支持
set t_Co=256
"color {{
"color darkburn
"color rtl 
color seoul
"color bvemu
"}}
"common conf {{         "通用配置

set ai			"自动锁进
set showmatch           "代码匹配
set laststatus=2	"总是显示状态行
set cursorline		"为光标所在行加下划线
set number		"行号
set autoread		"当前文本编辑修改后，自动读入

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

"自动缩进
set autoindent
""类似C语言风格的缩进
set cindent
"智能缩进:每一行都和前一行有相同的缩进量,
""同时这种缩进形式能正确的识别出花括号,当遇到右花括号（}）,
"则取消缩进形式。此外还增加了识别C语言关键字的功能。
""如果一行是以#开头的(比如宏)，那么这种格式将会被特殊对待而不采用缩进格式
set smartindent

filetype plugin indent on
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'

set ignorecase
set hls			"检索时高亮匹配
set fileencodings=utf-8,gbk
set foldmethod=syntax	"代码折叠
"}}
"conf for tabs, 为标签页进行的配置，通过ctrl－h/l进行切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
map <C-n> :tabnew<cr> :新建tab
map <C-k> :bn<cr>
map <C-j> :bp<cr>
nnoremap <leader>t : tabe<CR>
nnoremap <silent> <F3> :NERDTree<CR> "设置NERDTree打开的快捷键
nnoremap <silent> <F4> :CommandT<CR> "设置CommandT打开的快捷键

"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
let g:Powerline_symbols = 'fancy'
"}

"pathogen是vim用来管理插件的插件
"pathogen{
	call pathogen#infect()
"}

"-- QuickFix setting --
" 按下F6，执行make clean
nnoremap <F6> :make clean<CR><CR><CR>
" 按下F7，执行make编译程序，并打开quickfix窗口，显示编译信息
nnoremap <F7> :make<CR><CR><CR> :copen<CR><CR>
" 按下F8，光标移到上一个错误所在的行
nnoremap <F8> :cp<CR>
" 按下F9，光标移到下一个错误所在的行
nnoremap <F9> :cn<CR>

" 以下的映射是使上面的快捷键在插入模式下也能用
inoremap <F6> <ESC>:make clean<CR><CR><CR>
inoremap <F7> <ESC>:make<CR><CR><CR> :copen<CR><CR>
inoremap <F8> <ESC>:cp<CR>
inoremap <F9> <ESC>:cn<CR>


"For Python Programmers
"autocmd FileType python set textwidth=79 " PEP-8 Friendly
"
""把输入的tab自动转换成空格，Python用户必用~
set expandtab 
"一个tab键占据4个空格
"set tabstop=4
""一开始,插入的就是4个空格,此时一旦你再按下一次tab,这次的四个空格就会和上次的四个空格组合起来变成一个制表符
set softtabstop=4
"每一级自动缩进的空格数
"set shiftwidth=4
""根据文件类型设定缩进,覆盖掉默认的~
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79



