
set paste
set fileencodings=utf-8,gb2312

set path=/data/home/skfakerwang/group_logic/**
set tags=/data/home/skfakerwang/group_logic/tags

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

" 自动保存折叠和加载折叠
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
