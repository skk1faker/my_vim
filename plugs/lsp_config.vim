
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    "nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    "nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    "nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_enabled = 1         " disable diagnostics support
let g:lsp_diagnostics_signs_error = {'text': 'E'}
"let g:lsp_diagnostics_signs_warning = {'text': '‼', 'icon': '/path/to/some/icon'} " icons require GUI
let g:lsp_diagnostics_signs_warning = {'text': '‼'} 
" let g:lsp_diagnostics_signs_hint = {'icon': '/path/to/some/other/icon'} " icons require GUI

let g:lsp_document_highlight_enabled = 0

let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_echo_delay = 1
let g:lsp_diagnostics_virtual_text_enabled = 1		" vim9.0以上好使
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_float_delay = 200
let g:lsp_diagnostics_float_insert_mode_enabled = 1

let g:lsp_diagnostics_signs_enabled = 1
let g:lsp_signature_help_enabled = 0

" 折叠
set foldmethod=expr
			\ foldexpr=lsp#ui#vim#folding#foldexpr()
			\ foldtext=lsp#ui#vim#folding#foldtext()
let g:lsp_fold_enabled = 0

" 语法高亮
let g:lsp_semantic_enabled = 1
