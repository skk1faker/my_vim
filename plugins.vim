call plug#begin()
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'
	Plug 'prabirshrestha/async.vim'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'

	Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
	" Plug 'ryanoasis/vim-devicons' Icons without colours
	Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
	Plug 'adamatom/blameline.vim'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'bling/vim-bufferline'


call plug#end()



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
source ~/.vim_my/plugs/lsp/clangd.vim
source ~/.vim_my/plugs/lsp/gopls.vim

source ~/.vim_my/plugs/blameline.vim
source ~/.vim_my/plugs/airline.vim
source ~/.vim_my/plugs/bufferline.vim

