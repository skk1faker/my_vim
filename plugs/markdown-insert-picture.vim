let g:mdip_imgdir = expand('%:r')
autocmd FileType markdown nmap <buffer><silent> <leader>p :let mdip_imgdir = expand('%:r') \| call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change
" them
" " let g:mdip_imgdir = expand('%:r')
" " let g:mdip_imgname = 'image'
"
