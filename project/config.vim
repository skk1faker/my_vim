
" 项目相关设置
set path+=./**,/home/skt1faker/my_procedure/phy_engine,,
set tags+=/home/skt1faker/my_procedure/tags,~/my_procedure/LED_TEST/tags,./tags
set tagfunc=
for dir in split(&runtimepath,',')
	if isdirectory(dir)
		let &path .= ',' . dir
	endif
endfor
