let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'

let g:airline#extensions#tabline#formatter = 'unique_tail'

" 显示项目内git branch显示
let g:airline_extensions = ['hunks', 'branch', 'tabline']
let g:airline_detect_spell=0
let g:airline_inactive_collapse=0
let g:airline_inactive_alt_sep=0
