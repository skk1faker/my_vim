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
map <F8> :call CompileRunGcc() <CR>
func! CompileRunGcc()
	exec  " w "
	exec  "!date"
  "exec  "lcd %:h"
	if  &filetype ==  'c'
		exec  " !gcc % -g -lrt   "
		exec  " ! %:h/a.out < %:h/input"
	elseif &filetype ==  'cpp'
    "exec  "!g++ -fsanitize=address  % -g -lrt -pthread -lpthread -o %:h/a.out && time %:h/a.out < %:h/input"
    exec  "!g++  % -g -o %:h/a.out && time %:h/a.out < %:h/input"
  "exec "!g++ % /home/skt1faker/my_procedure/opensource/leveldb/build/libleveldb.a  -I /home/skt1faker/my_procedure/opensource/leveldb/build/include -lpthread -g && %:h/a.out"
	elseif &filetype ==  'java'  
		exec  " !javac % "  
		exec  " !java %< "
	elseif &filetype ==  'sh'
		exec "!bash ./% "
	elseif &filetype == 'py'
		exec "python %"
	endif
endfunc 
