function! FindProjectRoot()
  let l:dir = expand('%:p:h')
  while l:dir != '/'
    if !empty(glob(l:dir . '/.git')) || filereadable(l:dir . '/package.json')
      execute 'cd' l:dir
      break
    endif
    let l:dir = fnamemodify(l:dir, ':h')
  endwhile
endfunction
nnoremap <leader>pr :call FindProjectRoot()<CR>:pwd<CR>
