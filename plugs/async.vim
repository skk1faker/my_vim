" https://github.com/prabirshrestha/asyncomplete.vim
" 上方为各类补全方法需要的配置，直接git submodule add url path，即可
" https://www.kawabangga.com/posts/3745
" 这篇文章可能会用到

if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif


" 使用cland补全
source ~/.vim_my/plugs/async/clang/autoload/asyncomplete/sources/clang.vim
autocmd User asyncomplete_setup call asyncomplete#register_source(
	\ asyncomplete#sources#clang#get_source_options({
	\     'config': {
	\         'clang_path': '/usr/bin/clang',
	\         'clang_args': {
	\             'default': ['-I/usr/include'],
	\             'cpp': ['-std=c++11', '-I/usr/include']
	\         }
	\     }
	\ }))
