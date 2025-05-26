" https://zhuanlan.zhihu.com/p/61588081

"设置是否显示横幅
let g:netrw_banner = 0

"设置目录列表的样式：树形
let g:netrw_liststyle = 3

"在之前的窗口编辑文件，类似按下大写 P
let g:netrw_browse_split = 0
"1. 用水平拆分窗口打开文件
"2. 用垂直拆分窗口打开文件
"3. 用新建标签页打开文件
"4. 用前一个窗口打开文件

"水平分割时，文件浏览器始终显示在左边
let g:netrw_altv = 0

"设置文件浏览器窗口宽度为 25%
let g:netrw_winsize = 25

let g:netrw_preview = 1

" 预览使用p键

"自动打开文件浏览器 netrw
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

" 防止<C-^>访问空缓冲区而不是netrw
let g:netrw_fastbrowse = 0       " 禁用 Netrw 的快速浏览模式（防止缓冲区被隐藏）
let g:netrw_keepdir = 0          " 保持当前目录与文件一致
autocmd FileType netrw setlocal bufhidden=hide  " 允许 Netrw 缓冲区隐藏但仍可切换
