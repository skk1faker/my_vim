"let g:mdip_imgdir = expand('%:r')
" autocmd FileType markdown nmap <buffer><silent> <leader>p :let mdip_imgdir = expand('%:r') \| call mdip#MarkdownClipboardImage()<CR>
"" there are some defaults for image directory and image name, you can change
"" them
"" " let g:mdip_imgdir = expand('%:r')
"" " let g:mdip_imgname = 'image'


function! MarkdownInsertPicture()
	echo "hello"
	if expand("%:e") !=# "md"
		return 
	endif

	" 获取最新的 Capture 或 Screenshot 文件
	let home = "/data/data/com.termux/files/home"
	let screen_pic_fold = home . "/storage/pictures/Screenshots/"
	if !isdirectory(screen_pic_fold)
		echo screen_pic_fold . "not exit"
	endif

	let latest_file = system("ls -lt ". shellescape(screen_pic_fold) . "| grep -E 'Capture|Screenshot' | head -n 1 | awk '{print $9}'")
	if v:shell_error != 0
		echo "not fond lastest screen picture"
	endif
	let latest_file = substitute(latest_file, '\n$', '', '')  " 去掉末尾的换行符
	let latest_file = screen_pic_fold . latest_file
	let suffix = split(latest_file,'\.')
	if !empty(suffix)
		let suffix = suffix[-1]
	else 
		let suffix = "jpg"
	endif 

	" 获取当前文件的目录路径
	let target_dir = expand('%:r')
	"let target_dir = home
	let picture_name = input('Enter new name:'). '.' . suffix
	let target_file_name = target_dir .'/' . picture_name 

	while filereadable(target_file_name) == 1
		echo "\nfile ".target_file_name." exist \n"
		let picture_name = input('Please enter new name:'). '.' . suffix
		let target_file_name = target_dir .'/' . picture_name 
	endwhile


	" 执行 mv 命令
	if !empty(latest_file) && isdirectory(target_dir)
		let mv_command = 'cp ' . shellescape(latest_file) . ' ' . shellescape(target_file_name)
		let output = system(mv_command)
		if v:shell_error != 0
			echo mv_command . "meet error"
		else 
			" 输出markdown语法
			let insert_pic_markdown_command = "![" .split(picture_name, '\.')[0]. "](" .picture_name . ")"
			call append('.', insert_pic_markdown_command)
		endif
	else
		echo 'No file found or target directory does not exist.'
	endif

endfunction
