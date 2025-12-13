
" 项目相关设置
set path+=.,**
set tags+=/home/skt1faker/my_procedure/tags,tags; " `;`表示向父目录寻找
set tagfunc=
for dir in split(&runtimepath,',')
	if isdirectory(dir)
		let &path .= ',' . dir
	endif
endfor
