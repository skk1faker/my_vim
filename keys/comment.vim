" 普通模式：切换当前行注释
nnoremap <silent> <C-_> :call nerdcommenter#Comment('n', 'toggle')<CR>

" 可视模式：切换选中区域注释
vnoremap <silent> <C-_> :call nerdcommenter#Comment('x', 'toggle')<CR>
