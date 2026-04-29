" 查找Godot项目根目录
function! FindGodotProjectRoot(start_dir)
	let l:dir = a:start_dir
	while l:dir != '/'
		if filereadable(l:dir . '/project.godot')
			return l:dir
		endif
		let l:parent = fnamemodify(l:dir, ':h')
		if l:parent == l:dir  " 到达根目录
			break
		endif
		let l:dir = l:parent
	endwhile
	return ''  " 未找到
endfunction

map <F9> :call Rungdb() <CR>
func! Rungdb()
	exec " w "
	exec " !g++  -fsanitize=address % -g  && %:h/a.out "
endfunc

""func! Rungdb()
""	exec  " w "
""  exec  "lcd %:h"
""	if &filetype == "c"
""		exec  " !gcc % -g -o %< "
""		exec  " !gdb -q ./%< "
""	elseif &filetype == "cpp"
""		exec " !g++ % -g && gdb -q a.out"
""	elseif &filetype == "py"
""		exec "python -m pdb % "
""	endif
""endfunc 
map <F8> :call Compile() <CR>
func! Compile()
	exec  " w "
	exec  "!date"
	"exec  "lcd %:h"
	if  &filetype ==  'c'
		exec  " !gcc % -g -lrt   "
		exec  " ! %:h/a.out < %:h/input"
	elseif &filetype ==  'cpp'
		exec  "!g++ -fsanitize=address  % -g -lrt -pthread -lpthread -o %:h/a.out && time %:h/a.out < %:h/input"
		"exec  "!g++  % -g -o %:h/a.out && time %:h/a.out < %:h/input"
		"exec "!g++ % /home/skt1faker/my_procedure/opensource/leveldb/build/libleveldb.a  -I /home/skt1faker/my_procedure/opensource/leveldb/build/include -lpthread -g && %:h/a.out"
	elseif &filetype ==  'java'  
		exec  " !javac % "  
		exec  " !java %< "
	elseif &filetype ==  'sh'
		exec "!bash ./% "
	elseif &filetype == 'py'
		exec "python %"
	elseif $filetype == 'go'
		exec "go run %"
	elseif expand('%:e') == 'gd' || &filetype == 'gdscript' || filereadable(expand('%:h') . '/project.godot')
		" 先检查当前目录
		let l:current_dir = expand('%:h')
		if filereadable(l:current_dir . '/project.godot')
			let l:project_root = l:current_dir
		else
			" 向上查找
			let l:project_root = FindGodotProjectRoot(l:current_dir)
		endif
		
		if empty(l:project_root)
			echo "未找到Godot项目 (project.godot 文件)"
			return
		endif
		
		exec "!godot --path " . shellescape(l:project_root) . " --resolution 1920x1080"
	endif
endfunc 
