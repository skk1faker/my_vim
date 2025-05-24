function! FindProjectRoot()
    " 定义项目根目录的标记文件（优先级从高到低）
    let l:markers = ['.git', '.svn', '.hg', '.project', 'Makefile', 'package.json']
    
    " 获取当前文件路径（如果未保存的缓冲区，用当前目录）
    let l:current_file = expand('%:p')
    let l:current_dir = !empty(l:current_file) ? fnamemodify(l:current_file, ':h') : getcwd()
    
    " 从当前目录开始，向上递归查找标记文件
    let l:root = l:current_dir
    while l:root != '/'
        " 检查是否存在标记文件或目录
        for marker in l:markers
            if !empty(glob(l:root . '/' . marker))
                return l:root
            endif
        endfor
        " 向父目录移动
        let l:root = fnamemodify(l:root, ':h')
    endwhile
    
    " 未找到标记，返回当前目录
    return l:current_dir
endfunction

" 自定义命令 :ProjectAck（自动从项目根目录搜索）
command! -nargs=+ Pack execute 'Ack!' <q-args> FindProjectRoot()

