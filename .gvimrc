"""""""""""""""基本设置"""""""""""""""""
"编辑非utf8文件时通过fileencoding来转码
set encoding=utf-8

"使用中文菜单，并使用 UTF-8 编码。如果没有这句的话，在非 UTF-8 的系统，如 Windows 下，用了 UTF-8 的 encoding 后菜单会乱码。
set langmenu=zh_CN.UTF-8 

"使用中文提示信息，并使用 UTF-8 编码。如果没有这句的话，在非 UTF-8 的系统，如 Windows 下，用了 UTF-8 的 encoding 后系统提示会乱码。
language message zh_CN.UTF-8 

"设置编码的自动识别
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 

"防止特殊符号无法正常显示
set ambiwidth=double 

"字体
set guifont=Ubuntu\ Mono\ 20

"在左边显示行数
set nu
"皮肤
colorscheme desert

"不与vi兼容
set nocp

"打开状态栏标尺
set ru

"高亮搜索
set hls 

"未完全输入时就开始搜索
set is 

"一些删除模式的更改
set backspace=indent,eol,start 

"光标跳转行的限制
set whichwrap=b,s,<,>,[,],h,l

set nobackup "不产生.swp文件
syntax on "语法高亮
set cursorline "高亮光标行

"a 状态栏显示目前所执行的指令
set showcmd
"a修改 vmirc 后自动生效
autocmd! bufwritepost .gvimrc source ~/.gvimrc

" 增强模式中的命令行自动完成操作
set wildmenu

" 允许backspace和光标键跨越行边界原为set whichwrap+=<,>,h,l，但会屏敝缩进功能<或>
set whichwrap+=h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap  @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')

"自动补全
filetype plugin indent on
set completeopt=longest,menu
"自动补全命令时候使用菜单式匹配列表
set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

" 在搜索的时候忽略大小写
set ignorecase

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

"显示最后的半行文本，默认显示不完一行则显示@，但对于大量的汉语文本效果就很不好了
set display=lastline
""""""""""""""""""文本设置""""""""""""""""""""""
"自动缩进的时候，缩进尺寸为4个空格。
set sw=4 

"Tab 宽度为 4 个字符。
set ts=4 

"编辑时将所有 Tab 替换为空格。该选项只在编辑时将 Tab 替换为空格，如果打开一个已经存在的文件，并不会将已有的 Tab 替换为空格。如果希望进行这样的替换的话，可以使用这条命令“:retab”。
set et 

"当使用 et 将 Tab 替换为空格之后，按下一个 Tab 键就能插入 4 个空格，但要想删除这 4 个空格，就得按 4 下 Backspace，很不方便。设置 smarttab 之后，就可以只按一下 Backspace 就删除 4 个空格了。
set smarttab 

"当右键单击窗口的时候，弹出快捷菜单。
set mousemodel=popup 

"打开拼写检查。拼写有错的单词下方会有红色波浪线，将光标放在单词上，按 z= 就会出现拼写建议，按 ]s 可以直接跳到下一个拼写错误处。关闭用nospell
"set spell 

"设置光标超过 1000 列的时候折行。
set tw=1000 

"不在单词中间断行。
set lbr 

"打开断行模块对亚洲语言支持。m表示允许在两个汉字之间断行，即使汉字之间没有出现空格。B表示将两行合并为一行的时候，汉字与汉字之间不要补空格。该命令支持的更多的选项请参看用户手册。
set fo+=mB 

"自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 用空格代替制表符
set expandtab
 
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除

set autoread                "文件在Vim之外修改过，自动重新读入

" 不要换行
"set nowrap

set foldmethod=syntax       "代码折叠

"关闭CA检查，否则Vundle报错
"let $GIT_SSL_NO_VERIFY = 'true'

""""""""""""""""""各种绑定"""""""""""""""""""""
"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

" 在行和段开始处使用制表符
"set smartta

" 把j, k等映射到gj, gk等，来处理多行的文本
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
"nnoremap $ g$
nnoremap 0 g0
"nnoremap g$ $
nnoremap g0 0
nnoremap ^ g^
nnoremap g^ ^

"把insert模式下的ctrl + hjkl映射
inoremap <C-h> <Left>
inoremap <C-j> <Esc>g<Down>a
inoremap <C-k> <Esc>g<Up>a
inoremap <C-l> <Right>

"把Ctrl + hjkl绑定到Ctrl + W +hjkl上，方便切换窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"对.py文件，把F5绑定到python命令上
autocmd FileType python map <F5> :w<CR>:!python %<CR>
autocmd FileType python imap <F5> :w<CR>:!python %<CR>

"""""""""""""""""""""自定义函数
"这个是按Ctrl和加减号来改字体大小的，按Ctrl+0可以恢复原始大小
fun! IncFontSize(inc)
    if !exists('+guifont')
        return
    endif
    let s:defaultfont = 'Ubuntu Mono 20'
    if a:inc==0 || empty(&guifont)
        let &guifont = s:defaultfont
        return
    endif
    let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+'.a:inc, '')
endfun

nnoremap <C-kPlus>     : call IncFontSize(+1)<CR>
nnoremap <C-kMinus>    : call IncFontSize(-1)<CR>
nnoremap <C-k0>        : call IncFontSize(0)<CR>

"取消自动折行，汉语的文本按英语的规则是一句话算一个词的
"只有放在gvimrc的后面才生效
set nolinebreak

"""""""""""""""""""""插件管理，使用Bundle
"Vundle
set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 "Bundle 'tpope/vim-fugitive'
 " vim-scripts repos
 "Bundle 'L9'
 " non github repos
 "Bundle 'rson/vim-conque'
 Bundle 'Conque-Shell'
 Bundle 'plasticboy/vim-markdown'
 Bundle 'fcitx.vim'

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
"Vundle End!
"
