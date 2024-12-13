
let mapleader = "\<space>"			"这句话必须放在最前面，否则无法重新映射leader https://blog.csdn.net/qwaszx523/article/details/77878517
set paste
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
set foldmethod = syntax
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
set updatetime=20

" 自动保存折叠和加载折叠
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" 刷题键位
source ~/.vim_my/basic/acm.vim
