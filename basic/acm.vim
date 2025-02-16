
" 当新建 .h .c .hpp .cpp .mk .sh等文件时自动调用SetTitle 函数
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh exec ":call SetTitle()" 
autocmd BufWrite,BufWritePre,FileWritePre  *.c,*.cpp,*.hpp  ks|call LastModified()|'s  
func LastModified()
	if line("$") > 10
		let l = 10
	else 
		let l = line("$")
	endif
	"exe "1,".l."g/modify time: /s/modify time: .*/modify time:  ".
	"		\strftime("%H:%M  %Y.%m.%d") . "/e"
endfunc

" 加入注释 
func SetComment()
    call setline(1,"/*================================================================") 
    call append(line("."),   "*   Copyright (C) ".strftime("%Y")." Wang XinPeng. All rights reserved.")
    call append(line(".")+1, "*   ") 
    call append(line(".")+2, "*   filename:     ".expand("%:t")) 
    call append(line(".")+3, "*   username:     skt1faker")
    call append(line(".")+4, "*   create time:  ".strftime("%H:%M  %Y.%m.%d")) 
    call append(line(".")+5, "*   modify time:  ".strftime("%H:%M  %Y.%m.%d"))
    call append(line(".")+6, "*   email:        skk1faker@163.com")
    call append(line(".")+7, "*   descripe:     ") 
    call append(line(".")+8, "*")
    call append(line(".")+9, "================================================================*/") 
    call append(line(".")+10, "")
endfunc
" 加入shell,Makefile注释
func SetComment_sh()
    call setline(3, "#================================================================") 
    call setline(4, "#   Copyright (C) ".strftime("%Y")." Sangfor Ltd. All rights reserved.")
    call setline(5, "#   ") 
    call setline(6, "#   filename:     ".expand("%:t")) 
    call setline(7, "#   username:     Wang XinPeng")
    call setline(8, "#   create time:  ".strftime("%Y年%m月%d日")) 
    call setline(9, "#   descripe:     ") 
    call setline(10, "#")
    call setline(11, "#================================================================")
    call setline(12, "")
    call setline(13, "")
endfunc 
" 定义函数SetTitle，自动插入文件头 
func SetTitle()
    """if &filetype == "make" || &filetype == "makefile"
    if expand('%:t') == 'Makefile' || expand("%:t") == 'makefile'
        call setline(1,"") 
        call setline(2,"")
        call SetComment_sh()
        call setline(14,"CC = g++")
        call setline(15,"# 指定编译参数")
        call setline(16,"CFLAGS = -shared -fPIC ")
        call setline(17,"# 指定头文件位置,-I表示引入头文件的路径")
        call setline(18,"INC = -I./ ")
        call setline(19,"#指定要链接的动态库或静态库 -L是指定动态库路径，非标准的动态库需要此参数")
        call setline(20,"LIBS = -L ./ -lpthread ")
        call setline(21,"# 融合编译时候的所需选项")
        call setline(22,"CXXFLAGS = ${CFLAGS} ${INC} ${LIBS}")
        call setline(23,"# 源文件是什么")
        call setline(24,"COBJS = 'source _file' ")
        call setline(25,"# 生成可执行文件是什么")
        call setline(26,"EXEC= ")
        call setline(27,"")
        call setline(28,"# 设置makefile编译行为")
        call setline(29,"all:")
        call setline(30,"\t${CC} -o ${EXEC} ${COBJS} ${CXXFLAGS}")
        call setline(31,"clean:")
        call setline(32,"\trm -rf ${EXEC}")

 
    elseif &filetype == '.sh' 
    """elseif expand("%:e") == 'sh'
        call setline(1,"#!/system/bin/sh") 
        call setline(2,"")
        call SetComment_sh()
        
    else
         call SetComment()
         if expand("%:e") == 'hpp' 
          call append(line(".")+11, "#ifndef _".toupper(expand("%:t:r"))."_H") 
          call append(line(".")+12, "#define _".toupper(expand("%:t:r"))."_H") 
          call append(line(".")+13, "#ifdef __cplusplus") 
          call append(line(".")+14, "extern \"C\"") 
          call append(line(".")+15, "{") 
          call append(line(".")+16, "#endif") 
          call append(line(".")+17, "") 
          call append(line(".")+18, "#ifdef __cplusplus") 
          call append(line(".")+19, "}") 
          call append(line(".")+20, "#endif") 
          call append(line(".")+21, "#endif //".toupper(expand("%:t:r"))."_H") 
 
         elseif expand("%:e") == 'h' 
          call append(line(".")+11, "#pragma once") 
         elseif &filetype == 'c' 
          call append(line(".")+11,"#include \"".expand("%:t:r").".h\"") 
         "elseif &filetype == 'cpp' 
         elseif expand("%:e") == 'cpp' 
          call append(line(".")+11, "#include<bits/stdc++.h>")
          call append(line(".")+12, "using namespace std;")
          call append(line(".")+13, "#define ll long long")
          call append(line(".")+14, "#define lll __int128")
          call append(line(".")+15, "#define DEBUG0")
          call append(line(".")+16, "#define L(x) (x << 1)")
          call append(line(".")+17, "#define R(x) (L(x) + 1)")
          call append(line(".")+18, "const int mod1 = 1e9 + 7;")
          call append(line(".")+19, "const int mod2 = 998244353;")
          call append(line(".")+20, "const int maxx = 1e5 + 10;")
          call append(line(".")+21, "")
          call append(line(".")+22, "int main()")
          call append(line(".")+23, "{")
          call append(line(".")+24, "    return 0;")
          call append(line(".")+25, "}")
         endif
    endif
endfunc
