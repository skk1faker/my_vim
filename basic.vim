
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
set foldmethod=manual

" 搜索高亮
set hlsearch

" 显示输入命令
set showcmd

" 设置显示当前行

set cursorline

" 自动保存折叠和加载折叠
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
