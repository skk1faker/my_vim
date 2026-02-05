" 自动获取当前 vimrc 所在目录，添加到 runtimepath
let s:vim_my_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
execute 'set runtimepath+=' . s:vim_my_dir

runtime basic.vim
runtime plugins.vim
runtime colorschemes.vim
runtime project/config.vim
runtime key.vim
