" 确保安装了 neoformat
" 为gdscript配置gdformat
let g:neoformat_gdscript_gdformat = {
    \ 'exe': 'gdformat',
    \ 'args': ['-'],
    \ 'stdin': 1,
    \ }
let g:neoformat_enabled_gdscript = ['gdformat']

" 为go配置goimports格式化
let g:neoformat_go_goimports = {
    \ 'exe': 'goimports',
    \ 'stdin': 1,
    \ }
let g:neoformat_enabled_go = ['goimports']

" 保存时自动格式化
augroup fmt
  autocmd!
  autocmd BufWritePre *.gd Neoformat
  autocmd BufWritePre *.go Neoformat
augroup END

