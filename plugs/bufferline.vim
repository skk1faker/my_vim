" 表示缓冲线是否应自动回显到命令栏
let g:bufferline_echo = 0

" 缓冲分割
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'

" 缓冲修改符号
let g:bufferline_modified = '+'

" 缓冲区编号
let g:bufferline_show_bufnr = 1

" 默认，不旋转，不滚动
let g:bufferline_rotate = 0

" 以固定的当前缓冲区位置滚动
"let g:bufferline_rotate = 1

" 在没有固定当前缓冲区位置的情况下滚动
"let g:bufferline_rotate = 2

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

