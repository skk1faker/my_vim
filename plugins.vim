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

	" 同步工具
	Plug 'kenn7/vim-arsync'
	" vim-arsync depedencies
	Plug 'prabirshrestha/async.vim'


call plug#end()

source ~/.vim_my/plugs/lsp_config.vim
source ~/.vim_my/plugs/async.vim						" 代码补全
source ~/.vim_my/plugs/lsp/clangd.vim
source ~/.vim_my/plugs/lsp/gopls.vim

source ~/.vim_my/plugs/blameline.vim
source ~/.vim_my/plugs/airline.vim
source ~/.vim_my/plugs/bufferline.vim
source ~/.vim_my/plugs/arsync.vim
