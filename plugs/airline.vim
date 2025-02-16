
let g:airline#extensions#tabline#enabled = 0		 " = 0 后bufferline不会转圈显示
let g:airline#extensions#tabline#buffer_nr_show = 0

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'

let g:airline#extensions#tabline#formatter = 'unique_tail'

" 显示项目内git branch显示
let g:airline_extensions = ['hunks', 'branch', 'tabline']
let g:airline_detect_spell=0
let g:airline_inactive_collapse=0
let g:airline_inactive_alt_sep=0


" airline 字体图标配置

let g:airline_powerline_fonts = 1 
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '⮃'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = 'br:'
let g:airline_symbols.readonly = 'R:'

" airline 主题
" 主题放在colorscheme上了
