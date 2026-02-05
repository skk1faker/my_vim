
" set termguicolors

let mapleader = "\<space>"			"这句话必须放在最前面，否则无法重新映射leader https://blog.csdn.net/qwaszx523/article/details/77878517
"set paste							" 打开这个会导致补全失败
set fileencodings=utf-8,gb2312

" 显示行号
set number

" 提示隐藏，例如缓冲区未保存切换的提示。
set hidden

" tab 扩展，是否使用空格替换tab
set tabstop=4
" set noexpandtab		// 不使用tab扩展空格

" 控制缩进大小
set shiftwidth=4


" 搜索时不区分大小写
set ignorecase

" 实时匹配
set incsearch

"自动缩紧
set autoindent

" 代码折叠
"set foldmethod=manual
set foldmethod=syntax
"manual           手工定义折叠
"indent             更多的缩进表示更高级别的折叠
"expr                用表达式来定义折叠
"syntax             用语法高亮来定义折叠
"diff                  对没有更改的文本进行折叠
"marker            对文中的标志折叠
""zi 打开关闭折叠
""zv 查看此行
"zm 关闭折叠
"zM 关闭所有
"zr 打开
"zR 打开所有
"zc 折叠当前行
"zo 打开当前折叠
"zd 删除折叠
"zD 删除所有折叠

" 搜索高亮
set hlsearch

" 显示输入命令
set showcmd

" 设置显示当前行

set cursorline

" 显示补全行数
set pumheight=10

" 更新时间20ms, 用于blameline中快速刷新显示
" 快速更新的后果就是频繁的刷新语法高亮，导致vim会很卡
set updatetime=300

"  设置补全不显示提示
set completeopt=menu

" 自动保存折叠和加载折叠
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" vim的backspace不能使用，需要加上这个
"indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
"eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
"start:要想删除此次插入前的输入，需设置这个。
set backspace=indent,eol,start

" 刷题键位
runtime basic/acm.vim
runtime basic/input.vim

" gui字体配置
set guifont=JetBrains\ Mono\ Bold\ 15

filetype plugin on
