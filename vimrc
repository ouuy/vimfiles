
set nocompatible

" -----------------------------------------------------------------------------
" pathogen add plugins
" -----------------------------------------------------------------------------
execute pathogen#infect()

" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------
syntax on
filetype plugin indent on

" -----------------------------------------------------------------------------
" UI
" -----------------------------------------------------------------------------
colorscheme molokai
set encoding=utf-8
set nu " 显示行号        
set fencs=utf-8,gbk " 设置文件编码格式
set t_Co=256 " 支持 256 色显示

set tabstop=4
set cindent shiftwidth=4    

" -----------------------------------------------------------------------------
" GUI
" -----------------------------------------------------------------------------
if has("gui_running")
"	set guifont=Bitstream_Vera_Sans_Mono:h10 ",Microsoft_YaHei_Mono:h11
	set guioptions-=T " no toolbar 
	set guioptions-=m " no menus
	set guioptions-=L " no scrollbar on left
	set guioptions-=r " no scrollbar on right
	set guioptions-=b " no scrollbar on bottom
endif

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

" NERDTree 
let g:NERDTreeDirArrows=0 " 不显示 fancy arrow, 可避免因字体不支持引发的乱码
let NERDTreeIgnore=['.*\.o$','.*\.ko$']

" neocomplcache, neosnippet
runtime init-neo.vim " 配置项较多，载入外部配置脚本

" Taglist
"let Tlist_Show_One_File = 1
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_Use_Right_Window = 1
"let Tlist_WinWidth = 40

"let g:pydiction_location = '~/.vim/complete-dict'
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20 

" -----------------------------------------------------------------------------
" Mappings
" -----------------------------------------------------------------------------
map <silent><F9> <Esc>:NERDTreeToggle<CR>
map <silent><F10> <Esc>:TagbarToggle<CR>

map <F5> <Esc>:res -1<CR>
map <F6> <ESC>:res +1<CR>
map <F2> <Esc>\be
map <C-F12> <Esc>:%!xxd<CR>

" 定义窗口跳转快捷键
map <silent><C-j> <C-W>j
map <silent><C-k> <C-W>k
map <silent><C-h> <C-W>h
map <silent><C-l> <C-W>l

" -----------------------------------------------------------------------------
" Misc
" -----------------------------------------------------------------------------
set tags=tags;
