" https://zhuanlan.zhihu.com/p/61588081

"设置是否显示横幅
let g:netrw_banner = 0

"设置目录列表的样式：树形
let g:netrw_liststyle = 3

"在之前的窗口编辑文件，类似按下大写 P
let g:netrw_browse_split = 4
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
